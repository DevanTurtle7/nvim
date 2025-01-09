local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local ascii = require("ascii")

--[[
Icons:
 󰈞 󰊄  󰈬  
]]--

dashboard.section.header.val = ascii.art.misc.hydra.hydra
dashboard.section.buttons.val = {
    dashboard.button("SPC f", "  Jump to explorer"),
    dashboard.button("SPC p f", "󰈞  Find file"),
    dashboard.button("SPC p s", "󰈬  Find word"),
    dashboard.button("CTRL e", "  Open harpoon", "<C-e>"),
}

alpha.setup(dashboard.opts)
