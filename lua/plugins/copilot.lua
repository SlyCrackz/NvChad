-- ~/.config/nvim/lua/plugins/copilot.lua
return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",   -- Lazy-load Copilot on the :Copilot command
    event = "InsertEnter",  -- Or lazy-load on entering insert mode
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
          },
          layout = {
            position = "bottom",
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = false,
          debounce = 75,
          keymap = {
            accept = "<M-l>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        copilot_node_command = 'node', -- Node.js version must be > 18.x
        filetypes = {
          yaml = false,
          markdown = false,
          gitcommit = false,
          ["*"] = true,  -- Enable Copilot for all other filetypes
        },
      })
    end,
  }
}

