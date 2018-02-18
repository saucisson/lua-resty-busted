-- luacheck: new globals ngx
local Runner = require "busted.runner"

assert (ngx, "Cannot access the ngx global.")
ngx.exit = function () end

_G.arg = {}
local i = 0
repeat
  i = i + 1
  _G.arg [i] = os.getenv ("LUA_RESTY_BUSTED_ARG_" .. tostring (i))
until not _G.arg [i]

return function ()
  Runner {
    standalone = false,
  }
end
