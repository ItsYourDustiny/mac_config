return {
  "ThePrimeagen/harpoon",
  -- branch = "harpoon",
  -- dependencies = { "nvim-lua/plenary.nvim" },
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
  -- config = function ()
  --   require("harpoon"):setup({
  --     menu = {
  --         width = vim.api.nvim_win_get_width(0) - 100,
  --     }
  --   })
  -- end,
  -- keys = {
  --   { "<leader>ha", function() require("harpoon"):list():append() end, desc = "harpoon file", },
  --   { "<leader>hm", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
  --   { "<C-h>", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
  --   { "<C-j>", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
  --   { "<C-k>", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
  --   { "<C-l>", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
  -- },

--   -- harpoon
-- keymap.set("n", "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end)
-- keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end)
-- keymap.set("n", "<C-h>", function() require("harpoon.ui").nav_file(1) end)
-- keymap.set("n", "<C-j>", function() require("harpoon.ui").nav_file(2) end)
-- keymap.set("n", "<C-k>", function() require("harpoon.ui").nav_file(3) end)
-- keymap.set("n", "<C-l>", function() require("harpoon.ui").nav_file(4) end)
-- keymap.set("n", "<leader>hn", function() require("harpoon.ui").nav_next() end)
-- keymap.set("n", "<leader>hp", function() require("harpoon.ui").nav_prev() end)
}