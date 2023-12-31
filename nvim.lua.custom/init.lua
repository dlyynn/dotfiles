vim.opt.colorcolumn = "80"

vim.keymap.set("n", "<C-d>", "<C-d> zz")
vim.keymap.set("n", "<C-u>", "<C-u> zz")

vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("i", "jk", "<ESC>", { silent = true })

vim.opt.relativenumber = true

vim.api.nvim_create_autocmd("FileType", {
    pattern = "assembly",
    callback = function()
        vim.opt.expandtab = true
        vim.opt.shiftwidth = 8
        vim.opt.smartindent = true
        vim.opt.tabstop = 8
        vim.opt.softtabstop = 8
    end,
})

