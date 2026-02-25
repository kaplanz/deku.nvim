-- File:        config.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- SPDX-License-Identifier: MIT

local M = {}

M.opts = {
  -- Enable transparency.
  --
  -- When enabled, guibg is not set in some highlight groups to allow the
  -- terminal emulator's background colour to show through.
  transparent = false,
}

function M.setup(opts)
  M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
end

return M
