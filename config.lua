-- Plugins
lvim.plugins = {
  {"mbbill/undotree"},
  { "sainnhe/everforest" },
  { "folke/zen-mode.nvim"},
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('nordic').load()
    end
  }
}

-- Plugins config


-- Key Bindings

lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  f = { "<cmd>Telescope find_files<cr>", "Find Files" }, -- Map <leader>fF to find_files
  g = { "<cmd>Telescope git_files<cr>", "Git Files" },   -- Map <leader>f to git_files
  z = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
  b = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
  h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
  r = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
  q = { "<cmd>Telescope grep_string<cr>", "Search String under cursor" },
}
