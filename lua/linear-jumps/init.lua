local M = {}

local function nonCircularJump(backward)
    local current = vim.fn.getjumplist()[2]

    if backward and current > 0 then
        vim.cmd("normal! <C-o>")
    elseif not backward and current < #vim.fn.getjumplist()[1] then
        vim.cmd("normal! <C-i>")
    end
end

function M.setup()
    vim.keymap.set('n', 'C-i', function() nonCircularJump(true) end,
        { noremap = true, silent = true, desc = 'Jump to newer position' })
    vim.keymap.set('n', 'C-o', function() nonCircularJump(false) end,
        { noremap = true, silent = true, desc = 'Jump to older position' })

    vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
            vim.cmd("clearjumps")
        end,
    })
end

return M
