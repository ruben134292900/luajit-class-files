---@class MetaLibrary
local Library = {}
---@type metatable
local meta = {}

-- Constants

-- Variables

-- Functions

-- Library Variables

-- Library Functions

-- Library Meta

---@private
---@type fun(self: MetaLibrary, index: any): any
function meta.__index(self, index)
    if Library[index] then
        return Library[index]
    elseif index == "Hello" then
        return "Hello"
    end
end

---@private
---@type fun(self: MetaLibrary, index: any, value: any)
function meta.__newindex(self, index, value)
    if Library[index] then
        error("cannot overwrite '" .. (tostring(index) or "nil") .. "' (field is readonly)", 2)
    else
        error("cannot insert field '" .. (tostring(index) or "nil") .. "'", 2)
    end
end

return setmetatable(Library, meta)