return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "eriks47/generate.nvim", lazy = false },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    lazy = false,
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "ggandor/lightspeed.nvim",
    enabled = true,
    lazy = false,
    config = function()
      require("lightspeed").setup {
        ignore_case = false,
        exit_after_idle_msecs = { unlabeled = nil, labeled = nil },
        --- s/x ---
        jump_to_unique_chars = { safety_timeout = 400 },
        match_only_the_start_of_same_char_seqs = true,
        force_beacons_into_match_width = false,
        -- Display characters in a custom way in the highlighted matches.
        substitute_chars = { ["\r"] = "¬" },
        -- Leaving the appropriate list empty effectively disables "smart" mode,
        -- and forces auto-jump to be on or off.
        -- These keys are captured directly by the plugin at runtime.
        special_keys = {
          next_match_group = "<space>",
          prev_match_group = "<tab>",
        },
        --- f/t ---
        limit_ft_matches = 4,
        repeat_ft_with_target_char = false,
      }
    end,
  },
  { "tpope/vim-repeat",      enabled = true, lazy = false },
  {
    "pluffie/neoproj",
    enabled = true,
    lazy = false,
    -- cmd = { "ProjectOpen", "ProjectNew" },
    -- vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
    --   callback = function()
    --     if vim.g.project_root ~= nil then require("neoproj").save_session() end
    --   end,
    -- }),
  },
}
