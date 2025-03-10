vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "U", vim.cmd.redo)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader><C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader><C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
vim.keymap.set("n", "<leader>m", function ()
    vim.cmd("vsplit")
    vim.cmd("edit ~/.config/nvim/lua/kckingcollin/remap.lua")
end)

vim.keymap.set("n", "<leader>l", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>h", vim.diagnostic.goto_prev)

-- everyone but the normys will hate this
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("i", "<C-s>", vim.cmd.w)
vim.keymap.set("v", "<C-s>", vim.cmd.w)

vim.keymap.set("n", "<C-z>", vim.cmd.undo)
vim.keymap.set("i", "<C-z>", vim.cmd.undo)
vim.keymap.set("v", "<C-z>", vim.cmd.undo)

vim.keymap.set("n", "<C-y>", vim.cmd.redo)
vim.keymap.set("i", "<C-y>", vim.cmd.redo)
vim.keymap.set("v", "<C-y>", vim.cmd.redo)

vim.keymap.set("n", "<LeftMouse>", "i<LeftMouse>")
vim.keymap.set("v", "<LeftMouse>", "<S-i><LeftMouse>")

-- This is going to get me cancelled
vim.keymap.set("v", "<C-c>", [["+y]])

vim.keymap.set("n", "<C-v>", [["+p]])
vim.keymap.set("i", "<C-v>", [[<Esc>"+p]])
vim.keymap.set("v", "<C-v>", [["+p]])

vim.keymap.set("i", "<C-f>", "<Esc>/")
