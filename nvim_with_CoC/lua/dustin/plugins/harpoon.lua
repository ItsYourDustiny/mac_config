return {
  "ThePrimeagen/harpoon",
  lazy = false, 
  opts = {
    global_settings = {
      tabline = true,
      tabline_prefix = "   ",
      tabline_suffix = "   ",
    },
  },
  config = function ()
    require("harpoon").setup({
      menu = {
          width = vim.api.nvim_win_get_width(0) - 100,
      }
    })
  end
}