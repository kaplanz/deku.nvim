-- File:        treesitter.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     11 Sep 2023
-- SPDX-License-Identifier: MIT

local lush = require("lush")

local syntax = require("deku.syntax")

-- lush-spec definition
--
---@diagnostic disable: undefined-global
local treesitter = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ----------------
    -- TreeSitter --
    ----------------

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- Comment
    sym("@text.literal")      { syntax.Comment },
    -- Identifier
    sym("@text.reference")    { syntax.Identifier },
    -- Title
    sym("@text.title")        { syntax.Title },
    -- Underlined
    sym("@text.uri")          { syntax.Underlined },
    -- Underlined
    sym("@text.underline")    { syntax.Underlined },
    -- Todo
    sym("@text.todo")         { syntax.Todo },
    -- Comment
    sym("@comment")           { syntax.Comment },
    -- Delimiter
    sym("@punctuation")       { syntax.Delimiter },
    -- Constant
    sym("@constant")          { syntax.Constant },
    -- Special
    sym("@constant.builtin")  { syntax.Special },
    -- Define
    sym("@constant.macro")    { syntax.Define },
    -- Define
    sym("@define")            { syntax.Define },
    -- Macro
    sym("@macro")             { syntax.Macro },
    -- String
    sym("@string")            { syntax.String },
    -- SpecialChar
    sym("@string.escape")     { syntax.SpecialChar },
    -- SpecialChar
    sym("@string.special")    { syntax.SpecialChar },
    -- Character
    sym("@character")         { syntax.Character },
    -- SpecialChar
    sym("@character.special") { syntax.SpecialChar },
    -- Number
    sym("@number")            { syntax.Number },
    -- Boolean
    sym("@boolean")           { syntax.Boolean },
    -- Float
    sym("@float")             { syntax.Float },
    -- Function
    sym("@function")          { syntax.Function },
    -- Special
    sym("@function.builtin")  { syntax.Special },
    -- Macro
    sym("@function.macro")    { syntax.Macro },
    -- Identifier
    sym("@parameter")         { syntax.Identifier },
    -- Function
    sym("@method")            { syntax.Function },
    -- Identifier
    sym("@field")             { syntax.Identifier },
    -- Identifier
    sym("@property")          { syntax.Identifier },
    -- Special
    sym("@constructor")       { syntax.Special },
    -- Conditional
    sym("@conditional")       { syntax.Conditional },
    -- Repeat
    sym("@repeat")            { syntax.Repeat },
    -- Label
    sym("@label")             { syntax.Label },
    -- Operator
    sym("@operator")          { syntax.Operator },
    -- Keyword
    sym("@keyword")           { syntax.Keyword },
    -- Exception
    sym("@exception")         { syntax.Exception },
    -- Identifier
    sym("@variable")          { syntax.Identifier },
    -- Type
    sym("@type")              { syntax.Type },
    -- Typedef
    sym("@type.definition")   { syntax.Typedef },
    -- StorageClass
    sym("@storageclass")      { syntax.StorageClass },
    -- Structure
    sym("@structure")         { syntax.Structure },
    -- Identifier
    sym("@namespace")         { syntax.Identifier },
    -- Include
    sym("@include")           { syntax.Include },
    -- PreProc
    sym("@preproc")           { syntax.PreProc },
    -- Debug
    sym("@debug")             { syntax.Debug },
    -- Tag
    sym("@tag")               { syntax.Tag },
  }
end)

return treesitter
