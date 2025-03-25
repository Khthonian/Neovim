-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "monekai",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "███████╗██╗███████╗██╗  ██╗██╗   ██╗██╗███╗   ███╗ ",
    "██╔════╝██║██╔════╝██║  ██║██║   ██║██║████╗ ████║ ",
    "█████╗  ██║███████╗███████║██║   ██║██║██╔████╔██║ ",
    "██╔══╝  ██║╚════██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "██║     ██║███████║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                  ",
    "             ⚡ Powered by Neovim ⚡               ",
    "                                                  ",
  },
  buttons = {
    { txt = "  Find File", keys = "sf", cmd = "Telescope find_files" },
    { txt = "󰈚  Recent Files", keys = "so", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "sw", cmd = "Telescope live_grep" },
    { txt = "  Themes", keys = "th", cmd = "Telescope themes" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
  },
}

M.ui = {
  tabufline = {
    lazyload = false
  },
  statusline = {
    theme = "vscode_colored",
  }
}

return M
