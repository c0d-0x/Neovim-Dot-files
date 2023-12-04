local plugins = {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function ()
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

    end
  },
  {
    'MunifTanjim/prettier.nvim',
     dependencies = "fsouza/prettierd",
  },
  {
    "mfussenegger/nvim-dap",
    config = function ()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = 'python',
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function ()
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {'python'},
    opts = function()
      return require "custom.configs.null-ls"
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "debugpy",
        "clangd",
        "black",
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "prettier",
        "pyright",
        "mypy",
        "ruff",
      }
    }
  }
}
return plugins
