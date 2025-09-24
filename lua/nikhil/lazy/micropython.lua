-- Lua
vim.keymap.set("n", "<leader>mr", require("micropython_nvim").run)

return {
  "jim-at-jibba/micropython.nvim",
  dependencies = { "akinsho/toggleterm.nvim", "stevearc/dressing.nvim" },
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
