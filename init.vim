:set ttyfast                 " Speed up scrolling in Vim
:set clipboard=unnamedplus   " using system clipboard
:set cursorline              " highlight current cursorline
:syntax on                   " syntax highlighting
:filetype plugin indent on   "allow auto-indenting depending on file type
:set autoindent              " indent a new line the same amount as the line just typed
:set expandtab               " converts tabs to white space
:set ignorecase              " case insensitive
:set mouse=v                 " middle-click paste with 
:set hlsearch                " highlight search 
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
" :setlocal spell spelllang=en_gb

call plug#begin()
Plug 'rcarriga/nvim-notify'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tribela/vim-transparent'
Plug 'ghifarit53/tokyonight-vim'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'Xuyuanp/nerdtree-git-plugin' "Shows Git status flags for files and folders in NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "Adds syntax highlighting to NERDTree based on filetype.
Plug 'PhilRunninger/nerdtree-visual-selection' "Enables NERDTree to open, delete, move, or copy multiple Visually-
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'tmsvg/pear-tree' " Bracket Auto-Completion

set encoding=UTF-8
call plug#end()


" nasm-lsp setup; compiled cargo nightly 
autocmd BufNewFile,BufRead *.nasm  set ft=nasm
autocmd BufNewFile,BufRead *.asm  set ft=nasm
let g:LanguageClient_serverCommands = {'nasm': ['./nasm/nasm-lsp']}

" Pritier..............
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


"nerdtree config
nnoremap <C-f> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"



"toggle key bind
:nmap <F8> :TagbarToggle<CR>
 
nnoremap <C-e> :Ex<CR>

" Turn off Kite
" let g:kite_supported_languages = ['python']

" air-line
let g:airline_powerline_fonts = 1
" set guifont='Cascadia Code'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" Find files using Telescope command-line sugar.
nnoremap <A-f> :Telescope find_files<cr>
nnoremap <A-g> :Telescope live_grep<cr>
nnoremap <A-b> :Telescope buffers<cr>
nnoremap <A-h> :Telescope help_tags<cr>

" Move to previous/next (Tabs)
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

" switch to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Restore buffer
nnoremap <silent>    <A-z> <Cmd>BufferRestore<CR>

" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-p>    <Cmd>BufferPickDelete<CR>

" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>
let g:lightline={ 'enable': {'statusline': 1, 'tabline': 0} }


" Tribela defaults
let g:transparent_groups = ['Normal', 'Comment', 'Constant', 'Special', 'Identifier',
                            \ 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
                            \ 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
                            \ 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer']

" " Pmenu
let g:transparent_groups += ['Pmenu']

" " coc.nvim
let g:transparent_groups += ['NormalFloat']

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" colorscheme deus
:colorscheme molokai "Options: deus onehalfdark, molokai, gruvbox, abstract, dogrun, molokayo, sonokai

" Buffer tab custs
 :hi BufferTabpageFill guibg=Black
 :hi TabLineFill ctermfg=White ctermbg=Red
 :hi TabLine ctermfg=Blue ctermbg=Green
 :hi TabLineSel ctermfg=Red ctermbg=Blue

" tokyonight setup
set termguicolors
" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic =1 
"  colorscheme tokyonight

" coc Tab autocomplition
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
