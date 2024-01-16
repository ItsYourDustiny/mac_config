--=set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- easier saves and quits
keymap.set("n", "<leader>w", ":w<CR>")

-- remap 0 to ^ to go to beginning of text instead of whitespace
keymap.set("n", "0", "^")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>") -- increment
-- keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>s=", "30<C-w>>") -- increment
keymap.set("n", "<leader>s-", "30<C-w><") -- decrement
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", "<C-1>") --  go to next tab
-- keymap.set("n", "<leader>tp", "<C-2>") --  go to previous tab

--------------------
-- Plugin Keybinds
----------------------
-- nvim-tree
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gvc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use enter to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gvfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use enter to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gvb", "<cmd>Telescope git_branches<cr>") -- list git branches (use enter to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- flash
keymap.set({"n", "x", "o"}, "s", function() require("flash").jump() end)

-- harpoon
keymap.set("n", "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end)
keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end)
keymap.set("n", "<C-h>", function() require("harpoon.ui").nav_file(1) end)
keymap.set("n", "<C-j>", function() require("harpoon.ui").nav_file(2) end)
keymap.set("n", "<C-k>", function() require("harpoon.ui").nav_file(3) end)
keymap.set("n", "<C-l>", function() require("harpoon.ui").nav_file(4) end)
keymap.set("n", "<leader>hn", function() require("harpoon.ui").nav_next() end)
keymap.set("n", "<leader>hp", function() require("harpoon.ui").nav_prev() end)

-- neotest
keymap.set("n", "<leader>tt", function() require("neotest").run.run() end)
keymap.set("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end)
keymap.set("n", "<leader>ts", function() require("neotest").output_panel.toggle() end)

-- get file path
keymap.set("n", "<leader>fp", ":!echo -n % | pbcopy<CR><CR>")

-- move lines up and down
keymap.set("n", "J", ":m .+1<CR>==") -- move line up(n)
keymap.set("n", "K", ":m .-2<CR>==") -- move line down(n)
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move line down(v)

-- git
--diffview toggle
keymap.set("n", "<leader>gd", function()
  if next(require('diffview.lib').views) == nil then
    vim.cmd('DiffviewOpen')
  else
    vim.cmd('DiffviewClose')
  end
end)
-- go to github
keymap.set({"n", "v"}, "<leader>gg", ":GBrowse<CR>")
-- git status toggle
local function showFugitiveGit()
  if vim.fn.FugitiveHead() ~= '' then
    vim.cmd('Git')
  end
end
local function toggleFugitiveGit()
  if vim.fn.buflisted(vim.fn.bufname('fugitive:///*/.git//$')) ~= 0 then
    vim.cmd[[ execute ":bdelete" bufname('fugitive:///*/.git//$') ]]
  else
    showFugitiveGit()
  end
end
vim.keymap.set("n", "<leader>gs", toggleFugitiveGit, opts)
-- aliases 
-- keymap.set("n", "<leader>gc", ":Git commit -m \"")
-- keymap.set("n", "<leader>gp", ":Git push<CR>")
-- keymap.set("n", "<leader>gco", ":Git checkout")
-- keymap.set("n", "<leader>gcm", ":Git checkout origin/master<CR>")
-- keymap.set("n", "<leader>gf", ":Git fetch<CR>")
-- keymap.set("n", "<leader>gr", ":Git reset --hard")

-- custom workflow 

-- binding.pry
keymap.set("n", "<leader>bp", "obinding.pry<Esc> <BAR> :w<CR>")
keymap.set("n", "<leader>rb", ":g/binding.pry/d<CR> <BAR> :w<CR>")