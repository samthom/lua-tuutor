----------------------------------------------------
-- 4. Modules.
----------------------------------------------------

local M = {}

local function sayMyName()
    print("Sam Thomas")
end

function M.sayHello()
    print("Why hi there")
    sayMyName()
end

return M
