return {
  "mg979/vim-visual-multi",
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_maps = {
      ['Find Under'] = '<C-m>',
      ['Find Subword Under'] = '<C-m>',
    }
  end
}
