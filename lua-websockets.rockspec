package = "lua-websockets"
version = "@VERSION@-1"

source = {
   url = "http://github.com/lipp/lua-websockets/archive/@VERSION@.tar.gz"
}

description = {
  summary = "Websockets for Lua",
  homepage = "http://github.com/lipp/lua-websockets",
  license = "MIT/X11",
  detailed = "Provides sync and async clients and servers for copas."
}

dependencies = {
  "lua >= 5.1",
  "lpack",
  "luasocket",
  "luabitop",
  "copas"
}

build = {
  type = 'none',
  install = {
    lua = {
      ['websocket'] = 'src/websocket.lua',
      ['websocket.sync'] = 'src/websocket/sync.lua',
      ['websocket.client'] = 'src/websocket/client.lua',
      ['websocket.client_copas'] = 'src/websocket/client_copas.lua',
      ['websocket.server'] = 'src/websocket/server.lua',
      ['websocket.server_copas'] = 'src/websocket/server_copas.lua',
      ['websocket.handshake'] = 'src/websocket/handshake.lua',
      ['websocket.tools'] = 'src/websocket/tools.lua',
      ['websocket.frame'] = 'src/websocket/frame.lua',
      ['websocket.bit'] = 'src/websocket/bit.lua',
    }
  }
}

