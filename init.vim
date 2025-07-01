call plug#begin()

Plug 'EdenEast/nightfox.nvim'
Plug 'neovim/nvim-lspconfig' " https://github.com/neovim/nvim-lspconfig
Plug 'ziglang/zig.vim'       " https://github.com/ziglang/zig.vim

call plug#end()

filetype plugin indent on
set autoindent
set encoding=utf-8
set termguicolors

set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

syntax on

set incsearch
set ignorecase
set smartcase
set gdefault

set vb t_vb=
set backspace=2
set nofoldenable
set lazyredraw
set relativenumber
set number
set diffopt+=iwhite
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
set colorcolumn=80,120

set background=dark
" colors slate

silent! colorscheme carbonfox

hi Normal guibg=NONE
highlight nonText guibg=NONE

set listchars=nbsp:¬,extends:»,precedes:«,trail:•

" don't show parse errors in a separate window
let g:zig_fmt_parse_errors = 0
" disable format-on-save from `ziglang/zig.vim`
let g:zig_fmt_autosave = 0

" enable format-on-save from nvim-lspconfig + ZLS
"
" Formatting with ZLS matches `zig fmt`.
" The Zig FAQ answers some questions about `zig fmt`:
" https://github.com/ziglang/zig/wiki/FAQ
autocmd BufWritePre *.zig,*.zon lua vim.lsp.buf.format()

:lua << EOF
  local lspconfig = require('lspconfig')
  lspconfig.zls.setup {
    -- Server-specific settings. See `:help lspconfig-setup`

    -- omit the following line if `zls` is in your PATH
    --cmd = { '/path/to/zls_executable' },
    -- There are two ways to set config options:
    --   - edit your `zls.json` that applies to any editor that uses ZLS
    --   - set in-editor config options with the `settings` field below.
    --
    -- Further information on how to configure ZLS:
    -- https://zigtools.org/zls/configure/
    settings = {
      zls = {
        -- Whether to enable build-on-save diagnostics
        --
        -- Further information about build-on save:
        -- https://zigtools.org/zls/guides/build-on-save/
        -- enable_build_on_save = true,

        -- omit the following line if `zig` is in your PATH
        --zig_exe_path = '/path/to/zig_executable'
      }
    }
  }
EOF