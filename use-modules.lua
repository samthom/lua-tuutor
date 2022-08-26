--[[ Another file can use modules.lua's functionality ]]
local mod = require("modules")

-- require is the standard way to include modules.
-- require acts like: 
local mod = (function ()
    --[[ <contents of mod.lua> ]]
end)()
-- It's like modules.lua is a function body, so that
-- locals inside modules.lua are invisible outside it.

-- This works because mod here = M inside modules.lua:
mod.sayHello()      -- Prints: 

mod.sayMyName()     -- error: sayMyName on exists inside modules.lua

-- require's return values are cached so a file is
-- run at most once, even when require'd many times.

-- Suppose mod2.lua contains "print('Hi!')".
local a = require('mod2')  -- Prints Hi!
local b = require('mod2')  -- Doesn't print; a=b.

-- dofile is like require without caching:
dofile('mod2.lua')  --> Hi!
dofile('mod2.lua')  --> Hi! (runs it again)

-- loadfile loads a lua file but doesn't run it yet.
f = loadfile('mod2.lua')  -- Call f() to run it.

-- load is loadfile for strings.
-- (loadstring is deprecated, use load instead)
g = load('print(343)')  -- Returns a function.
g()  -- Prints out 343; nothing printed before now.
