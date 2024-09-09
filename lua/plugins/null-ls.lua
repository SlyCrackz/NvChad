-- ~/.config/nvim/lua/plugins/null-ls.lua
return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.null-ls"
    end,
  }
}

