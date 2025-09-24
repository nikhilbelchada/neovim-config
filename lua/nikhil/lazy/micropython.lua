-- Lua
vim.keymap.set("n", "<leader>mr", require("micropython_nvim").run)

return {
  "jim-at-jibba/micropython.nvim",
  dependencies = { "akinsho/toggleterm.nvim", "stevearc/dressing.nvim" }
}
