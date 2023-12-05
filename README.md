## Configuration files

- nvim config with vim-plug (This was my old Configuration):
  - This a one filed nvim config file with vim-plug as my pluging manager.
  - To use this config, install [vim-plug](https://github.com/junegunn/vim-plug).
  - Then copy my init.vim file to ```~/.config/nvim```.

- I Realized my vim-plug config was running slow because of coc language server. I tried **NvChad** and I was really amazed by its features and simplicity.
  - Features:
    - lspconfig installed
    - pyright
    - clandg-lsp
    - type-script-language-server
    - dap and dap-ui: not working ;)
    - hmtl, css, and lua lsps.
    - Prettier setup for auto-formating
    - black for python auto-formating: not working
    - Autocmpletion with nvim-cmp
- To use my dotfiles, install [nvchad](https://nvchad.com/), then replace  ```~/.config/nvim/lua/custom with my custom-for-nvchad```.         
