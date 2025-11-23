local M = {}
local MAX_BANDWIDTH = 1000

---@class CyberDeck
local CyberDeck = {}
CyberDeck.__index = CyberDeck

function CyberDeck.new(model, ram, neural)
	return setmetatable({ model = model, ram = ram or 512, neural = neural or true }, CyberDeck)
end

function CyberDeck:bandwidth()
	local eff = self.neural and 1.5 or 1.0
	return math.min(self.ram * eff, MAX_BANDWIDTH)
end

---@class NetRunner
local NetRunner = {}
NetRunner.__index = NetRunner

function NetRunner.new(handle, rep)
	return setmetatable({ handle = handle, reputation = rep or 0, connections = {} }, NetRunner)
end

function NetRunner:jack_in(host)
	if self.connections[host] then return false end
	print(string.format("[%s] Jacking into %s...", self.handle, host))
	self.connections[host] = true
	return true
end

function NetRunner:breach_ice()
	for i = 1, 3 do
		if math.random() < 0.3 + (i - 1) * 0.3 then
			self.reputation = self.reputation + 10
			return true
		end
	end
	return false
end

function M.main()
	math.randomseed(os.time())
	local deck = CyberDeck.new("Ono-Sendai VII", 1024, true)
	local runner = NetRunner.new("Case", 85)
	print(string.format("Bandwidth: %.2f mbps", deck:bandwidth()))
	if runner:jack_in("matrix.net") and runner:breach_ice() then print("ICE breached! Rep: " .. runner.reputation) end
end

return M
