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

function M.open_previous(dir, day_offset)
    dir = dir or vim.fn.getcwd()
    local time = os.time() + (day_offset or -1) * 86400
    local path = dir .. "/" .. os.date("%Y-%m-%d", time) .. ".md"
    if vim.fn.filereadable(path) == 0 then
        return vim.notify("No daily log found: " .. path, vim.log.levels.ERROR)
    end
    vim.cmd("below split " .. vim.fn.fnameescape(path))
end

return M
