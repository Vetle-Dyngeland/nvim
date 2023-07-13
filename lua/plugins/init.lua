local function require_files_in_path(t, path)
    for file in io.popen("ls -pa " .. path):lines() do
        -- If the file is this file, don't source it
        if file == "init.lua" then
            goto continue
        end
        -- If the file is a directory, and is not ./ or ../,
        -- source all files in that directory
        if file:sub(-1) == "/" then
            if not string.match(file, "%./") then
                require_files_in_path(t, path .. file)
            end
            goto continue
        end
        -- If it is a valid file however...

        -- Fix the string
        local fixed = (path .. file) -- The full path
            :gsub("~/.config/nvim/lua/", "") -- Without the start
            :gsub("/", "%.") -- Changing all / to .
            :sub(0, -5) -- Without the .lua on the end
        table.insert(t, require(fixed))
        ::continue::
    end
end

local a = {}

require_files_in_path(a, "~/.config/nvim/lua/plugins/")

print("Loaded " .. #a .. " plugin files!")

return a
