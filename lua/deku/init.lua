-- File:        init.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     08 Sep 2023
-- SPDX-License-Identifier: MIT
-- Vim:         set nowrap:

-- oooooooooo.             oooo
-- `888'   `Y8b            `888
--  888      888  .ooooo.   888  oooo  oooo  oooo
--  888      888 d88' `88b  888 .8P'   `888  `888
--  888      888 888ooo888  888888.     888   888
--  888     d88' 888    .o  888 `88b.   888   888
-- o888bood8P'   `Y8bod8P' o888o o888o  `V88V"V8P'


-- This theme was created using lush. For more information, see:
--
-- * :h lush
--
-- To enable realtime feedback for your changes, you can "lushify" this file.
-- We do this by running the command:
--
-- `:Lushify`
--
--  Also make sure to enable termguicolors with `:set termguicolors`.
--
-- (If it worked, your colorscheme should have changed pretty dramatically!)

local lush = require("lush")


-- Lush uses the HSL colorspace to define colors because it allows for
-- more natural operations on colors and the relationalships between colors is
-- simpler to understand.
--
-- Instead of RGB where you specify red, green and blue components, HSL uses:
--
-- Hue        (0 - 360) (each value is a angle around the color wheel)
-- Saturation (0 - 100) (0 is gray, 100 is colored)
-- Lightness  (0 - 100) (0 is black, 100 is white)
--
-- Lush also supports HSLuv (http://www.hsluv.org/, `h: lush-hsluv-colors`) as
-- well as raw '#rrggbb' or 'colorname' strings colors, though string colors
-- don't support operations.

---@diagnostic disable-next-line: unused-local
local hsl = lush.hsl
---@diagnostic disable-next-line: unused-local
local hsluv = lush.hsluv


-- lush.hsl (and hsluv) provides a number of convenience functions for:
--
--   Relative adjustment (rotate(), saturate(), desaturate(), lighten(), darken())
--   Absolute adjustment (prefix above with abs_)
--   Combination         (mix())
--   Overrides           (hue(), saturation(), lightness())
--   Access              (.h, .s, .l)
--   Coercion            (tostring(), "Concatenation: " .. color)
--   Helpers             (readable())
--
--   Adjustment functions have shortcut aliases: ro, sa, de, li, da
--                                               abs_sa, abs_de, abs_li, abs_da
--
-- Because HSL colors are represented by degrees around a colorwheel, we can find
-- harmonious colors from our original set by rotating the hue.
--
-- We can also chain these operations.


-- A lush theme is built from a lush-spec, which is a function, that returns a
-- table, that we pass to lush().
--
-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
--
---@diagnostic disable: undefined-global
---@diagnostic disable-next-line: unused-local
local theme = lush(function()
  return {}
end)

-- Merge lush-specs together.
local deku = lush.merge {
  theme,
  require("deku.base"),
  require("deku.builtin"),
  require("deku.gui"),
  require("deku.syntax"),
  require("deku.lsp"),
  require("deku.diagnostic"),
  require("deku.treesitter"),
}

-- The parsed theme can be used as a Neovim theme, or extended further via Lush,
-- or used elsewhere such as in other lua runtimes.
return deku
