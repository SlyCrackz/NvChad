-- Harpoon plugin setup
return {
  "ThePrimeagen/harpoon",
  requires = { "nvim-lua/plenary.nvim" }, -- Make sure to include plenary.nvim as a dependency
  config = function()
    require("harpoon").setup({
      -- Optional configuration settings
      global_settings = {
        save_on_change = true,  -- Save the harpoon file upon every change
        enter_on_sendcmd = false, -- Don't auto-enter terminal commands
      },
    })
  end,
}

