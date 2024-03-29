local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
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
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    -- "lua-language-server",
    -- "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",

    -- c/cpp stuff
    -- "clangd",
    -- "clang-format",

    -- java stuff
    "jdtls",

    -- py stuff
    "pyright",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

local cmp_ok, cmp = pcall(require, "cmp")

if cmp_ok then
  M.cmp = {
    mapping = {
      ["<UP>"] = cmp.mapping.select_prev_item(),
      ["<DOWN>"] = cmp.mapping.select_next_item(),
    },
  }
end

return M
