-- Hello World Programme
-- [[
-- multi line comment
-- ]]

----------------------------------------------------
-- 1. Variables and flow control.
----------------------------------------------------
print("Hello World")

local name = "Sam"

io.write("size of string ", #name, "\n")

name = 5

io.write("my name is ", name, "\n")

Num = 34

U = [[ multi line string
		starts here.
	ends here. ]]

T = nil -- Undefines t; Lua has garbage collection

-- Blocks are denoted with keywords like do/end
while Num < 40 do
	Num = Num + 1
end

if Num > 50 then
	print('over 40\n')
elseif name ~= 5 then
		io.write("not over 40\n")
else
	-- variables are global by default
	ThisIsGlobal = 5

	-- how to make local variables
	local line = io.read() -- Reads next stdin line

	-- String concatenation uses the .. operator:
	print('Winter is coming, ' .. line)
end

ABoolValue = false

-- Only nil and false are falsey; 0 and '' are true!
if not ABoolValue then
	print('it was false')
end

-- 'or' and 'and' are short circuited
-- This is similar to the a?b:c operator in C/js;
Ans = ABoolValue and 'yes' or 'no' -- 'no'

KarlSum = 0
for i = 1, 100 do -- The range includes both ends
	KarlSum = KarlSum + i
end

FredSum = 0
-- Use "100, 1, -1" as the range to count down:
for j = 100, 1, -1 do
	FredSum = FredSum + j
end

-- In general, the range is begin, end[, step].

-- Another loop construct:
repeat
	print("This is the way")
	Num = Num - 1
until Num == 0
