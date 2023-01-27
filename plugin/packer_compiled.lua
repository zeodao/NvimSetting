-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\ZEO_LA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\ZEO_LA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\ZEO_LA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\ZEO_LA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\ZEO_LA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-session"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["close-buffers.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\close-buffers.nvim",
    url = "https://github.com/kazhala/close-buffers.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["code_runner.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\code_runner.nvim",
    url = "https://github.com/CRAG666/code_runner.nvim"
  },
  ["fcitx.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fcitx.nvim",
    url = "https://github.com/martins3/fcitx.nvim"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hydra.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hydra.nvim",
    url = "https://github.com/anuvyklack/hydra.nvim"
  },
  ["impatient.nvim"] = {
    config = { "require('impatient')" },
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-surround"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter-textsubjects",
    url = "https://github.com/RRethy/nvim-treesitter-textsubjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["open-browser.vim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  orgmode = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["spellsitter.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["telescope-bookmarks.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-bookmarks.nvim",
    url = "https://github.com/dhruvmanila/telescope-bookmarks.nvim"
  },
  ["telescope-coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-coc.nvim",
    url = "https://github.com/fannheyward/telescope-coc.nvim"
  },
  ["telescope-emoji.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-emoji.nvim",
    url = "https://github.com/xiyaowong/telescope-emoji.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-heading.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-heading.nvim",
    url = "https://github.com/crispgm/telescope-heading.nvim"
  },
  ["telescope-vim-bookmarks.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-vim-bookmarks.nvim",
    url = "https://github.com/tom-anders/telescope-vim-bookmarks.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  undotree = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-bookmarks"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-bookmarks",
    url = "https://github.com/MattesGroeger/vim-bookmarks"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-markdown",
    url = "https://github.com/tpope/vim-markdown"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-markdown-toc",
    url = "https://github.com/mzlogin/vim-markdown-toc"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-oscyank"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-oscyank",
    url = "https://github.com/ojroques/vim-oscyank"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-solarized8"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-solarized8",
    url = "https://github.com/lifepillar/vim-solarized8"
  },
  ["vim-sourcetrail"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-sourcetrail",
    url = "https://github.com/CoatiSoftware/vim-sourcetrail"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  vimspector = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimspector",
    url = "https://github.com/puremourning/vimspector"
  },
  vimtex = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "C:\\Users\\Zeo_Laptop\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
require('impatient')
time([[Config for impatient.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
