local parsers = {
  "c",
  "cpp",
  "css",
  "go",
  "html",
  "java",
  "javascript",
  "lua",
  "python",
  "rust",
  "typescript",
  "vim",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      local treesitter = require("nvim-treesitter")
      local group = vim.api.nvim_create_augroup("TjbruTreesitter", { clear = true })

      treesitter.setup()
      local installed = treesitter.get_installed()
      local missing = vim.tbl_filter(function(parser)
        return not vim.list_contains(installed, parser)
      end, parsers)

      if #missing > 0 then
        treesitter.install(missing)
      end

      vim.api.nvim_create_autocmd("FileType", {
        group = group,
        pattern = parsers,
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("treesitter-context").setup({
        enable = true,
        max_lines = 0,
        trim_scope = "inner",
        min_window_height = 0,
        patterns = {
          default = { "class", "function", "method", "for", "while", "if", "switch", "case" },
        },
      })
    end,
  },
}
