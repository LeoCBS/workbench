return {
  "RRethy/vim-illuminate",
  config = function()
    require('illuminate').configure({
      providers = { 'regex', 'lsp', 'treesitter' },
      delay = 100,
      filetypes_denylist = { 'NvimTree', 'lazy', 'mason' },
    })
  end
}