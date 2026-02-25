-- File:        theme.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     25 Feb 2026
-- SPDX-License-Identifier: MIT

-- This is the lush spec.
--
-- To enable realtime feedback, open this file and run: `:Lushify`
--
-- Also make sure termguicolors is on: `:set termguicolors`

local lush = require("lush")

---@diagnostic disable: undefined-global
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
