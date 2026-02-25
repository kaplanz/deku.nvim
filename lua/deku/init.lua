-- File:        init.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     25 Feb 2026
-- SPDX-License-Identifier: MIT

-- User-facing module.  Call setup() *before* setting the colorscheme:
--
--   require("deku").setup({ transparent = true })
--   vim.cmd.colorscheme("deku")
--
-- Options (all optional, shown with defaults):
--   transparent = false   -- when true, Normal's guibg is not set so the
--                         -- terminal emulator's background shows through

local config = require("deku.config")

local M = {}

function M.setup(opts)
  config.setup(opts)
end

return M
