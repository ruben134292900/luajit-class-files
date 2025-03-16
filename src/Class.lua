---@class Class
local Class = {}
---@protected
Class.__index = Class

-- Constants

-- Variables

-- Functions

-- Class Constants

-- Class Functions

---@type fun(): Class
function Class.new()
    ---@class Class
	local class = setmetatable({}, Class)

	return class
end

return Class