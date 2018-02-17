package = "lua-resty-busted"
version = "master-0"
source = {
  url = "git://github.com/saucisson/lua-resty-busted",
}

dependencies = {
  "busted",
  "luacheck",
}

description = {
  summary = "Test OpenResty scripts with busted",
  license = "MIT",
}

build = {
  type    = "builtin",
  modules = {
    ["resty.busted"] = "src/resty_busted.lua",
  },
  install = {
    bin = {
      ["resty_busted"] = "src/resty_busted.sh",
    },
  },
}
