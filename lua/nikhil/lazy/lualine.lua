return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("lualine").setup({
      sections = {
        lualine_b = {
          {
            require("micropython_nvim").statusline,
            cond = package.loaded["micropython_nvim"] and require("micropython_nvim").exists,
          },
        }
      }
    })
  end
}
