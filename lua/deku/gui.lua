-- File:        gui.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     11 Sep 2023
-- SPDX-License-Identifier: MIT

local lush = require("lush")

-- lush-spec definition
--
---@diagnostic disable: undefined-global
local gui = lush(function()
  return {
    ----------------
    --    GUI     --
    ----------------

    -- Current font, background and foreground colors of the menus. Also used
    -- for the toolbar. Applicable highlight arguments: font, guibg, guifg.
    Menu           { },
    -- Current background and foreground of the main window's scrollbars.
    -- Applicable highlight arguments: guibg, guifg.
    Scrollbar      { },

    -- Current font, background and foreground of the tooltips. Applicable
    -- highlight arguments: font, guibg, guifg.
    Tooltip        { },
  }
end)

return gui
