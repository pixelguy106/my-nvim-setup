return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
  	ensure_installed = {
  --	"lua-language-server",
  --  "stylua",

  -- web dev stuff
      "html-lsp",
      "css-lsp" ,
      "emmet-language-server",
      "prettier",
      "css-lsp",
      "html-lsp",
      "typescript-language-server",
      "prettier",

  -- c/cpp stuff
  -- "clangd",
  -- "clang-format",
     "cmake-language-server",

  -- java stuff
      "jdtls",

  -- py stuff
      "pyright",

  -- rust stuff
  -- "rust-analyzer",
  	},
  },
  },
  --
  {
  "nvim-treesitter/nvim-treesitter",
  opts = {
  	ensure_installed = {
  		"vim",
      "vimdoc",
      "lua",
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "c",
      "cpp",
      "java",
      "python",
      "bash",
      "cmake",
  	},
 	},
 },
  -- using lazy.nvim
{
  "S1M0N38/love2d.nvim",
  cmd = "LoveRun",
  opts = { },
  keys = {
    { "<leader>v", ft = "lua", desc = "LÖVE" },
    { "<leader>vv", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
    { "<leader>vs", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
  },
}
}
