-- File:        builtin.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     11 Sep 2023
-- SPDX-License-Identifier: MIT

local lush = require("lush")

local base = require("deku.base")

-- lush-spec definition
--
---@diagnostic disable: undefined-global
local builtin = lush(function()
  return {
    ----------------
    --  Builtin   --
    ----------------

    -- Normal text
    --
    -- Note: Normal must be set first as directed by |:hi-normal-cterm|.
    Normal         { fg = base.Rhoam.fg, bg = base.Impa.bg },

    -- The following are the Neovim highlight groups, mostly used for styling
    -- UI elements.
    --
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    --
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups

    -- Columns set with 'colorcolumn'
    ColorColumn    { base.Nayru },
    -- Placeholder characters substituted for concealed text
    -- (see 'conceallevel')
    Conceal        { base.Robbie },
    -- Character under the cursor
    Cursor         { fg = Normal.bg, bg = Normal.fg },
    -- Highlighting a search pattern under the cursor (see 'hlsearch')
    CurSearch      { base.Din },
    -- Character under the cursor when |language-mapping| is used
    -- (see 'guicursor')
    lCursor        { base.Cursor },
    -- Like Cursor, but used when in IME mode |CursorIM|
    CursorIM       { base.Cursor },
    -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorColumn   { bg = Normal.bg.li(10) },
    -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if
    -- foreground (ctermfg OR guifg) is not set.
    CursorLine     { CursorColumn },
    -- Directory names (and other special names in listings)
    Directory      { },
    -- Diff mode: Added line |diff.txt|
    DiffAdd        { base.Link },
    -- Diff mode: Changed line |diff.txt|
    DiffChange     { base.Zelda },
    -- Diff mode: Deleted line |diff.txt|
    DiffDelete     { base.Ganon },
    -- Diff mode: Changed text within a changed line |diff.txt|
    DiffText       { fd = Normal.fg, bg = base.Din.bg.ro(70).li(15) },
    -- Filler lines (~) after the end of the buffer. By default, this is
    -- highlighted like |hl-NonText|.
    EndOfBuffer    { base.Robbie },
    -- Cursor in a focused terminal
    TermCursor     { Cursor },
    -- Cursor in an unfocused terminal
    TermCursorNC   { },
    -- Error messages on the command line
    ErrorMsg       { bg = base.Din.bg.ro(30).sa(40) },
    -- Column separating vertically split windows
    VertSplit      { base.Robbie },
    -- Line used for closed folds
    Folded         { },
    -- 'foldcolumn'
    FoldColumn     { base.Robbie },
    -- Column where |signs| are displayed
    SignColumn     { FoldColumn },
    -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    IncSearch      { base.Farore },
    -- |:substitute| replacement text highlighting
    Substitute     { base.Din },
    -- Line number for ":number" and ":#" commands, and when 'number' or
    -- 'relativenumber' option is set.
    LineNr         { base.Robbie },
    -- Line number for when the 'relativenumber' option is set, above the cursor
    -- line
    LineNrAbove    { LineNr },
    -- Line number for when the 'relativenumber' option is set, below the cursor
    -- line
    LineNrBelow    { LineNr },
    -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor
    -- line.
    CursorLineNr   { CursorLine, gui = "bold" },
    -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineFold { CursorLine },
    -- Like SignColumn when 'cursorline' is set for the cursor line
    CursorLineSign { CursorLine },
    -- Character under the cursor or just before it, if it is a paired bracket,
    -- and its match. |pi_paren.txt|
    MatchParen     { base.Din },
    -- 'showmode' message (e.g., "-- INSERT -- ")
    ModeMsg        { gui = "bold" },
    -- Area for messages and cmdline
    MsgArea        { },
    -- Separator for scrolled messages, `msgsep` flag of 'display'
    MsgSeparator   { base.Nayru },
    -- |more-prompt|
    MoreMsg        { base.Zelda, gui = "bold" },
    -- '@' at the end of the window, characters from 'showbreak' and other
    -- characters that do not really exist in the text (e.g., ">" displayed when
    -- a double-wide character doesn't fit at the end of the line). See also
    -- |hl-EndOfBuffer|.
    NonText        { base.Robbie },
    -- Normal text in floating windows.
    NormalFloat    { },
    -- Border of floating windows.
    FloatBorder    { },
    -- Title of floating windows.
    FloatTitle     { base.Daruk, gui = "bold" },
    -- Normal text in non-current windows
    NormalNC       { Normal },
    -- Popup menu: Normal item.
    Pmenu          { CursorColumn },
    -- Popup menu: Selected item.
    PmenuSel       { base.Nayru },
    -- Popup menu: Normal item "kind"
    PmenuKind      { base.Navi },
    -- Popup menu: Selected item "kind"
    PmenuKindSel   { PmenuSel },
    -- Popup menu: Normal item "extra text"
    PmenuExtra     { CursorColumn },
    -- Popup menu: Selected item "extra text"
    PmenuExtraSel  { PmenuSel },
    -- Popup menu: Scrollbar.
    PmenuSbar      { PmenuExtra },
    -- Popup menu: Thumb of the scrollbar.
    PmenuThumb     { PmenuExtra },
    -- |hit-enter| prompt and yes/no questions
    Question       { base.Zelda },
    -- Current |quickfix| item in the quickfix window. Combined with
    -- |hl-CursorLine| when the cursor is there.
    QuickFixLine   { base.Vaati, gui = "bold" },
    -- Last search pattern highlighting (see 'hlsearch'). Also used for similar
    -- items that need to stand out.
    Search         { base.Nayru },
    -- Unprintable characters: text displayed differently from what it really
    -- is. But not 'listchars' whitespace. |hl-Whitespace|
    SpecialKey     { Conceal },
    -- Word that is not recognized by the spellchecker. |spell| Combined with
    -- the highlighting used otherwise.
    SpellBad       { gui = "undercurl" },
    -- Word that should start with a capital. |spell| Combined with the
    -- highlighting used otherwise.
    SpellCap       { SpellBad },
    -- Word that is recognized by the spellchecker as one that is used in
    -- another region. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { SpellBad },
    -- Word that is recognized by the spellchecker as one that is hardly ever
    -- used. |spell| Combined with the highlighting used otherwise.
    SpellRare      { SpellBad },
    -- Status line of current window
    StatusLine     { base.Nayru },
    -- Status lines of not-current windows.
    -- Note: If this is equal to
    -- "StatusLine" Vim will use "^^^" in the status line of the current
    -- window.
    StatusLineNC   { bg = StatusLine.bg.li(15) },
    -- Tab pages line, not active tab page label
    TabLine        { Pmenu },
    -- Tab pages line, where there are no labels
    TabLineFill    { PmenuKind },
    -- Tab pages line, active tab page label
    TabLineSel     { PmenuSel },
    -- Titles for output from ":set all", ":autocmd" etc.
    Title          { base.Daruk, gui = "bold" },
    -- Visual mode selection.
    Visual         { base.Farore },
    -- Visual mode selection when vim is "Not Owning the Selection".
    VisualNOS      { base.Din },
    -- Warning messages
    WarningMsg     { bg = base.Daruk.fg.ro(15).de(60).da(40) },
    -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Whitespace     { base.Robbie },
    -- Separator between window splits. Inherits from |hl-VertSplit| by default,
    -- which it will replace eventually.
    Winseparator   { VertSplit },
    -- Current match in 'wildmenu' completion
    WildMenu       { gui = "reverse" },
    -- Window bar of current window
    WinBar         { base.Purah },
    -- Window bar of not-current windows
    WinBarNC       { base.Purah },
  }
end)

return builtin
