-- ~/.config/nvim/lua/plugins/hop.lua
return {
  {
    'smoka7/hop.nvim',
    version = "*",  -- Pin to the latest stable version
    config = function()
      require'hop'.setup {
        keys = 'etovxqpdygfblzhckisuran',  -- Custom keyset for hopping
      }
    end
  }
}

