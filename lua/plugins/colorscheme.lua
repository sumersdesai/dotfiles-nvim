return {
  -- 1. Download the Cobalt/Neon themed palette
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },

  -- 2. Tell LazyVim to load it as your absolute default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfly",
    },
  },
}
