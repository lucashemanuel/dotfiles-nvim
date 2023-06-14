-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.colorscheme = "gruvbox"
lvim.format_on_save.enabled = true
vim.opt.shiftwidth = 2        -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2           -- insert 2 spaces for a tab
vim.opt.relativenumber = true -- relative line numbers
vim.opt.wrap = true           -- wrap lines
lvim.builtin.lualine.style = "default"


-- Plugins Section
lvim.plugins = {
  {
    "ThePrimeagen/vim-be-good",
    cmd = {
      "VimBeGood",
    },
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  { "sainnhe/sonokai" },
  { "tanvirtin/monokai.nvim" },
  { "navarasu/onedark.nvim" },
  { "sainnhe/gruvbox-material" },
  { "Mofiqul/dracula.nvim" },
  { "cpea2506/one_monokai.nvim" },
  { "catppuccin/nvim",          name = "catppuccin" },
  { "dracula/vim",              name = "dracula" },

  {
    "f-person/git-blame.nvim",
    event = "BufRead",
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      vim.g.gitblame_enabled = 0
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
        RGB = true,      -- #RGB hex codes
        RRGGBB = true,   -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },

}
