return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  lazy = false,
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.pack.cpp", lazy = false },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
