-- File:        diagnostic.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     11 Sep 2023
-- SPDX-License-Identifier: MIT

local lush = require("lush")

local base = require("deku.base")

-- lush-spec definition
--
---@diagnostic disable: undefined-global
local diagnostic = lush(function()
  return {
    ----------------
    -- Diagnostic --
    ----------------

    -- See :h diagnostic-highlights

    -- Used as the base highlight group. Other Diagnostic highlights link to
    -- this by default (except Underline)
    DiagnosticError            { base.Ganon },
    -- Used as the base highlight group. Other Diagnostic highlights link to
    -- this by default (except Underline)
    DiagnosticWarn             { base.Daruk },
    -- Used as the base highlight group. Other Diagnostic highlights link to
    -- this by default (except Underline)
    DiagnosticInfo             { base.Zelda },
    -- Used as the base highlight group. Other Diagnostic highlights link to
    -- this by default (except Underline)
    DiagnosticHint             { base.Navi },
    -- Used as the base highlight group. Other Diagnostic highlights link to
    -- this by default (except Underline)
    DiagnosticOk               { base.Link },
    -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextError { DiagnosticError },
    -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { DiagnosticWarn },
    -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { DiagnosticInfo },
    -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextHint  { DiagnosticHint },
    -- Used for "Ok" diagnostic virtual text.
    DiagnosticVirtualTextOk    { DiagnosticOk },
    -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineError   { DiagnosticError, gui = "underline" },
    -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineWarn    { DiagnosticWarn,  gui = "underline" },
    -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineInfo    { DiagnosticInfo,  gui = "underline" },
    -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineHint    { DiagnosticHint,  gui = "underline" },
    -- Used to underline "Ok" diagnostics.
    DiagnosticUnderlineOk      { DiagnosticOk,    gui = "underline" },
    -- Used to color "Error" diagnostic messages in diagnostics float.
    -- See |vim.diagnostic.open_float()|
    DiagnosticFloatingError    { DiagnosticError },
    -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingWarn     { DiagnosticWarn },
    -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { DiagnosticInfo },
    -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { DiagnosticHint },
    -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk       { DiagnosticOk },
    -- Used for "Error" signs in sign column.
    DiagnosticSignError        { DiagnosticError },
    -- Used for "Warn" signs in sign column.
    DiagnosticSignWarn         { DiagnosticWarn },
    -- Used for "Info" signs in sign column.
    DiagnosticSignInfo         { DiagnosticInfo },
    -- Used for "Hint" signs in sign column.
    DiagnosticSignHint         { DiagnosticHint },
    -- Used for "Ok" signs in sign column.
    DiagnosticSignOk           { DiagnosticOk },
  }
end)

return diagnostic
