---@class MetaLibrary
local Library = {}
---@class MetaLibrary
local LibraryMeta = {}

-- Constants

-- Variables

-- Functions

-- Library Variables

-- Library Functions

-- Library Meta Constants

LibraryMeta.Hello = "Hello World!"

-- Library Meta Functions

---@private
---@type fun(self: MetaLibrary, index: any): any
function LibraryMeta.__index(self, index)
    if rawget(self, index) then
        return rawget(self, index)
    elseif LibraryMeta[index] then
        return LibraryMeta[index]
    end
end

---@private
---@type fun(self: MetaLibrary, index: any, value: any)
function LibraryMeta.__newindex(self, index, value)
    if rawget(self, index) or LibraryMeta[index] then
        error("cannot overwrite '" .. (tostring(index) or "nil") .. "' (field is readonly)", 2)
    else
        error("cannot insert field '" .. (tostring(index) or "nil") .. "'", 2)
    end
end

return setmetatable(Library, LibraryMeta)