-- File:        base.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     11 Sep 2023
-- SPDX-License-Identifier: MIT

local lush = require("lush")
local hsl  = lush.hsl

local theme = {
  dark = {
    Ganon  = hsl(359, 68, 70),
    Midna  = hsl( 19, 69, 68),
    Zelda  = hsl( 40, 66, 69),
    Link   = hsl( 83, 34, 63),
    Navi   = hsl(172, 31, 62),
    Vaati  = hsl(331, 43, 72),
    Majora = hsl(255, 49, 74),
    Hylia  = hsl( 41, 12, 80),
    Ruto   = hsl(195, 10, 40),
    Impa   = hsl(206, 13, 20),
    Sheik  = hsl(199, 13, 24),
    Nayru  = hsl(201, 23, 30),
    Farore = hsl(141, 10, 29),
    Din    = hsl(328, 18, 28),
  },
  light = {
    Ganon  = hsl(359, 65, 42),
    Midna  = hsl( 19, 66, 40),
    Zelda  = hsl( 40, 62, 34),
    Link   = hsl( 83, 32, 34),
    Navi   = hsl(172, 34, 33),
    Vaati  = hsl(331, 44, 40),
    Majora = hsl(255, 46, 42),
    Hylia  = hsl( 41, 12, 12),
    Ruto = hsl(195, 12, 42),
    Impa   = hsl( 42, 36, 95),
    Sheik  = hsl( 41, 18, 90),
    Nayru  = hsl(201, 30, 80),
    Farore = hsl(141, 18, 80),
    Din    = hsl(328, 25, 82),
  },
}

local pal = vim.o.background == "light" and theme.light or theme.dark

-- lush-spec definition
--
---@diagnostic disable: undefined-global
local base = lush(function()
  return {
    ----------------
    --    Base    --
    ----------------

    Ganon  { fg = pal.Ganon  },
    Midna  { fg = pal.Midna  },
    Zelda  { fg = pal.Zelda  },
    Link   { fg = pal.Link   },
    Navi   { fg = pal.Navi   },
    Vaati  { fg = pal.Vaati  },
    Majora { fg = pal.Majora },

    Din    { bg = pal.Din    },
    Farore { bg = pal.Farore },
    Nayru  { bg = pal.Nayru  },

    Impa   { bg = pal.Impa   },
    Hylia  { fg = pal.Hylia  },
    Sheik  { bg = pal.Sheik  },
    Ruto   { fg = pal.Ruto   },
  }
end)

return base
