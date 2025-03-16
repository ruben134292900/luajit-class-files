local Class = require("src.Class")

---@class ExtendingClass: Class
local ExtendingClass = {}
---@protected
ExtendingClass.__index = ExtendingClass
setmetatable(ExtendingClass, Class)

-- Constants

-- Variables

-- Functions

-- Class Constants

-- Class Functions

---@type fun(): ExtendingClass
function ExtendingClass.new()
    ---@class ExtendingClass: Class
	local extendingClass = Class.new()
	setmetatable(extendingClass, ExtendingClass)

	return extendingClass
end

return ExtendingClass