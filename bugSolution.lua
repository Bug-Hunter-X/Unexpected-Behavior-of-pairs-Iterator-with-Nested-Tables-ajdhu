local function foo(t, path)
  path = path or {}
  for k, v in pairs(t) do
    local newPath = {}
    for i, val in ipairs(path) do
        newPath[i] = val
    end
    table.insert(newPath, k)
    if type(v) == "table" then
      foo(v, newPath)
    else
      print(table.concat(newPath, ".") .. " = " .. v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)