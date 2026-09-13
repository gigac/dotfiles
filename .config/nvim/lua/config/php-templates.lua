vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPre" }, {
    pattern = "*.php",
    callback = function()
        -- Only run once per buffer
        if vim.b.template_applied then
            return
        end

        local file_path = vim.fn.expand("%:p")

        -- File exists, but is completely empty (size == 0)
        local stat = vim.loop.fs_stat(file_path)
        if not stat or stat.size > 0 then
            return
        end

        -- Buffer is empty
        if vim.fn.line("$") > 1 or vim.fn.getline(1) ~= "" then
            return
        end

        -- Load template
        local config_dir = vim.fn.stdpath("config")
        local template_path = config_dir .. "/templates/php/class.php"

        if vim.fn.filereadable(template_path) == 1 then
            local lines = vim.fn.readfile(template_path)
            local filename = vim.fn.expand("%:t:r")

            for i, line in ipairs(lines) do
                lines[i] = line:gsub("{{class}}", filename)
            end

            vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
            vim.b.template_applied = true
        else
            vim.notify("Template not found: " .. template_path, vim.log.levels.WARN)
        end
    end,
})
