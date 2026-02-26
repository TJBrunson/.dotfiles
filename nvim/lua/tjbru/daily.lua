local M = {}

function M.open(dir)
    dir = dir or vim.fn.getcwd()
    local date = os.date("%Y-%m-%d")
    local path = dir .. "/" .. date .. ".md"
    vim.fn.mkdir(dir, "p")
    if vim.fn.filereadable(path) == 0 then
        vim.fn.writefile({
            "---",
            "date: " .. date,
            "location: ",
            "tags: [daily, log]",
            "---",
            "",
        }, path)
    end
    vim.cmd("edit " .. vim.fn.fnameescape(path))
end

return M
