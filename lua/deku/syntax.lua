-- File:        syntax.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     11 Sep 2023
-- SPDX-License-Identifier: MIT

local lush = require("lush")

local base = require("deku.base")

-- lush-spec definition
--
---@diagnostic disable: undefined-global
local syntax = lush(function()
  return {
    ----------------
    --   Syntax   --
    ----------------

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Any comment
    Comment        { base.Robbie, gui = "italic" },

    -- (*) Any constant
    Constant       { fg = base.Ganon.fg.ro(10).de(15).li(15) },
    --   A string constant: "this is a string"
    String         { fg = base.Link.fg },
    --   A character constant: 'c', '\n'
    Character      { fg = base.Link.fg.mix(Constant.fg, 25) },
    --   A number constant: 234, 0xff
    Number         { fg = base.Navi.fg },
    --   A boolean constant: TRUE, false
    Boolean        { fg = Constant.fg.ro(10), gui = "bold" },
    --   A floating point constant: 2.3e10
    Float          { fg = Number.fg.ro(15) },

    -- (*) Any variable name
    Identifier     { fg = base.Navi.fg.ro(30).li(40) },
    --   Function name (also: methods for classes)
    Function       { fg = base.Majora.fg.ro(15).li(35) },

    -- (*) Any statement
    Statement      { base.Navi },
    --   if, then, else, endif, switch, etc.
    Conditional    { base.Majora, gui = "italic" },
    --   for, do, while, etc.
    Repeat         { Conditional },
    --   case, default, etc.
    Label          { Statement, gui = "bold" },
    --   "sizeof", "+", "*", etc.
    Operator       { base.Zelda, gui = "bold" },
    --   any other keyword
    Keyword        { fg = base.Navi.fg.ro(30), gui = "italic" },
    --   try, catch, throw
    Exception      { fg = base.Vaati.fg, gui = "bold" },

    -- (*) Generic Preprocessor
    PreProc        { fg = Keyword.fg.de(15) },
    --   Preprocessor #include
    Include        { PreProc },
    --   Preprocessor #define
    Define         { PreProc },
    --   Same as Define
    Macro          { PreProc },
    --   Preprocessor #if, #else, #endif, etc.
    PreCondit      { PreProc },

    -- (*) int, long, char, etc.
    Type           { base.Zelda },
    --   static, register, volatile, etc.
    StorageClass   { fg = base.Vaati.fg },
    --   struct, union, enum, etc.
    Structure      { fg = base.Navi.fg.ro(15) },
    --   A typedef
    Typedef        { Keyword, gui = "bold" },

    -- (*) Any special symbol
    Special        { fg = base.Navi.fg.li(45) },
    --   Special character in a constant
    SpecialChar    { Special, gui = "bold" },
    --   You can use CTRL-] on this
    Tag            { Special },
    --   Character that needs attention
    Delimiter      { Special, gui = "bold" },
    --   Special things inside a comment (e.g. '\n')
    SpecialComment { Comment, gui = "bold" },
    --   Debugging statements
    Debug          { Special },

    -- Text that stands out, HTML links
    Underlined     { gui = "underline" },
    -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Ignore         { },
    -- Any erroneous construct
    Error          { fg = Normal.bg, bg = base.Ganon.fg.ro(-5).da(15) },
    -- Anything that needs extra attention; mostly the keywords TODO FIXME XXX
    Todo           { fg = Normal.bg, bg = base.Zelda.fg.ro(40).de(50).li(10) },
  }
end)

return syntax
