
local join = require(script.Parent:WaitForChild("join"))

local function flatten(list)
	local new = {}

	for i = 1, #list do
		if type(list[i]) == "table" then
			new = join(flatten(list[i]), new)
		else
			new[i] = list[i]
		end
	end

	return new
end

return flatten