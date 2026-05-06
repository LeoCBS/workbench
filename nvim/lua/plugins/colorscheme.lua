return {
  "rebelot/kanagawa.nvim",
  lazy = false,    -- Load immediately
  priority = 1000, -- Load before all other plugins
  config = function()
    -- Optional: Customize kanagawa
    require('kanagawa').setup({
      compile = true,
      theme = "wave", -- "wave" (dark), "lotus" (light), or "dragon" (deep dark)
    })
    vim.cmd("colorscheme kanagawa")
  end,
}