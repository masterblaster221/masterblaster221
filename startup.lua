os.loadAPI("json")
local ws,err = http.websocket("ws://localhost:5050")
if ws then
while ws do
    local msg = ws.receive()
    local obj = json.decode(msg)
        local func = loadstring(obj["func"])
        func()
    end
    os.reboot()
end