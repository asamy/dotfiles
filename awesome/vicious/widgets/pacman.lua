local io = { popen = io.popen,
             lines = io.lines }
local setmetatable = setmetatable

module("vicious.widgets.pacman")

local function worker(format)
    local f = io.popen('bash -c "pacman -Qu | wc -l"')

    local updates = 0
    for line in f:lines() do
      updates = line
    end

    return {updates}
end

setmetatable(_M, { __call = function(_, ...) return worker(...) end })
