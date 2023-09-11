-- File:        lsp.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     11 Sep 2023
-- SPDX-License-Identifier: MIT

local lush = require("lush")

local syntax = require("deku.syntax")

-- lush-spec definition
--
---@diagnostic disable: undefined-global
local lsp = lush(function()
  return {
    ----------------
    --    LSP     --
    ----------------

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.
    --
    -- See :h lsp-highlight

    -- Used for highlighting "text" references
    LspReferenceText            { },
    -- Used for highlighting "read" references
    LspReferenceRead            { },
    -- Used for highlighting "write" references
    LspReferenceWrite           { },
    -- Used for highlighting inlay hints
    LspInlayHint                { fg = syntax.Comment.fg.mix(syntax.Type.fg, 40).de(60) },
    -- Used to color the virtual text of the codelens.
    -- See |nvim_buf_set_extmark()|.
    LspCodeLens                 { },
    -- Used to color the separator between two or more code lens.
    LspCodeLensSeparator        { },
    -- Used to highlight the active parameter in the signature help.
    -- See |vim.lsp.handlers.signature_help()|.
    LspSignatureActiveParameter { },
  }
end)

return lsp
