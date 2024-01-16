return  {
  "jinh0/eyeliner.nvim",
  opts = {
    highlight_on_key = true, -- show highlights only after keypress
    dim = true,
  },
  config = function()
    vim.api.nvim_set_hl(0, 'EyelinerPrimary', { fg='#DF95B6', bold = true, underline = true })
    vim.api.nvim_set_hl(0, 'EyelinerSecondary', { fg='#86C9D7', bold = true, underline = true })
  end,
}
