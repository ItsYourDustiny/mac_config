return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    require("telescope").load_extension("live_grep_args")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        -- mappings = {
        --   i = {
        --     ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        --     ["<C-j>"] = actions.move_selection_next, -- move to next result
        --     ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        --   },
        -- },
        layout_strategy = "vertical",
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fr", function() require"telescope.builtin".resume() end)
    keymap.set("n", "<leader>fa", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
    -- keymap.set("n", "<leader>fp", function() require"telescope.builtin".pickers() end)
    

    -- ["<S-Down>"] = function()

    --   require("telescope.actions").cycle_history_next()
    
    -- end,
    
    -- ["<S-Up>"] = function()
    
    --   require("telescope.actions").cycle_history_prev()
    
    -- end,
  end,
}