-- File:        deku.lua
-- Author:      Zakhary Kaplan <https://zakhary.dev>
-- Created:     08 Sep 2023
-- SPDX-License-Identifier: MIT

-- Claim the colorscheme name so :colorscheme and g:colors_name work correctly.
vim.g.colors_name = "deku"

-- Load the colorscheme.
--
-- Flush all deku module caches and re-apply the theme for the current
-- background.
local function load()
  -- By setting our modules to nil, we clear lua's cache,
  -- which means the require ahead will *always* occur.
  --
  -- This isn't strictly required but it can be a useful trick if you are
  -- incrementally editing your config a lot and want to be sure your themes
  -- changes are being picked up without restarting neovim.
  --
  -- Note if you're working in on your theme and have :Lushify'd the buffer,
  -- your changes will be applied with our without the following line.
  --
  -- The performance impact of this call can be measured in the hundreds of
  -- *nanoseconds* and such could be considered "production safe".
  --
  -- deku.config is intentionally preserved so setup() options survive loads.
  for k in pairs(package.loaded) do
    if k:match("^deku") and k ~= "deku.config" then
      package.loaded[k] = nil
    end
  end
  require("lush")(require("deku.theme"))
end

-- Apply the theme on initial colorscheme load.
load()

-- Auto-switch when :set background=light / :set background=dark
local group = vim.api.nvim_create_augroup("Deku", { clear = true })
vim.api.nvim_create_autocmd("OptionSet", {
  group    = group,
  pattern  = "background",
  callback = function()
    if vim.g.colors_name == "deku" then
      load()
    end
  end,
  desc = "Re-apply deku colorscheme when &background changes",
})
