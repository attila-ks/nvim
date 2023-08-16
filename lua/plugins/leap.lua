return {
  -- Allow to jump to any positions in the visible editor area.
  "ggandor/leap.nvim",

  config = function()
    require("leap").add_default_mappings()
  end
}
