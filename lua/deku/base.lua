-- File:        base.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     11 Sep 2023
-- SPDX-License-Identifier: MIT

local lush = require("lush")

-- lush-spec definition
--
---@diagnostic disable: undefined-global
local base = lush(function()
  local hsl = lush.hsl
  return {
    ----------------
    --    Base    --
    ----------------

    Ganon  { fg = hsl(359, 68, 70) },
    Daruk  { fg = hsl( 19, 69, 68) },
    Zelda  { fg = hsl( 40, 66, 69) },
    Link   { fg = hsl( 83, 34, 63) },
    Navi   { fg = hsl(172, 31, 62) },
    Vaati  { fg = hsl(331, 43, 72) },
    Majora { fg = hsl(255, 49, 74) },

    Din    { bg = hsl(328, 18, 28) },
    Farore { bg = hsl(141, 10, 29) },
    Nayru  { bg = hsl(201, 23, 30) },

    Impa   { bg = hsl(206, 13, 20) },
    Rhoam  { fg = hsl( 41, 12, 80) },
    Purah  { bg = hsl(199, 13, 24) },
    Robbie { fg = hsl(195, 10, 40) },
  }
end)

return base
