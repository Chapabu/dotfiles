" Install Plugged if it doesn't exist
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/dotfiles/vim/init.vim
endif

" Ensure plugins are installed
call plug#begin('~/.config/nvim/plugged')

  " General
  Plug 'itchyny/lightline.vim'                            " Better statusline.
  Plug 'ryanoasis/vim-devicons'                           " Nerd font viml support
  Plug 'kyazdani42/nvim-web-devicons',                    " Nerd font lua support
  Plug 'luukvbaal/stabilize.nvim',                        " Stabilises the UI.

  " Navigation
  Plug 'preservim/nerdtree'                               " File tree.
  Plug 'Xuyuanp/nerdtree-git-plugin'                      " with git support
  Plug 'nvim-telescope/telescope.nvim',                   " Moving around in nvim

  " Editor
  Plug 'tpope/vim-surround'                               " Brackets operations.
  Plug 'luochen1990/rainbow'                              " Brackets color.
  Plug 'cohama/lexima.vim'                                " Closes parenthesis
  Plug 'lukas-reineke/indent-blankline.nvim',                 " Indicates the block line in nvim

  " Git
  Plug 'tpope/vim-fugitive'                               " Git basic commands.
  Plug 'lewis6991/gitsigns.nvim',                         " Git diff in neovim

  " Language support
  Plug 'nvim-treesitter/nvim-treesitter',                     " Syntax colouring for neovim
  Plug 'neovim/nvim-lspconfig',                               " LSP configuration
  Plug 'jose-elias-alvarez/null-ls.nvim',                     " LSP for other tools
  Plug 'jose-elias-alvarez/nvim-lsp-ts-utils',                " Improves JS tooling
  Plug 'hrsh7th/vim-vsnip',                                   " Required by nvim-comp
  Plug 'hrsh7th/cmp-vsnip',                                   " Required by nvim-comp
  Plug 'rafamadriz/friendly-snippets',                        " Snippets for autocompletion
  Plug 'liuchengxu/vista.vim'                                 " Tags

  " Autocomplete
  Plug 'hrsh7th/nvim-cmp',                              " Autocomplete
  Plug 'hrsh7th/cmp-nvim-lsp',                          " LSP support
  Plug 'hrsh7th/cmp-buffer',                            " Buffer support
  Plug 'hrsh7th/cmp-path',                              " Path support
  Plug 'hrsh7th/cmp-nvim-lua',                          " Neovim Lua API
  Plug 'onsails/lspkind-nvim',                          " Meta information

  " Misc
  Plug 'bagrat/vim-buffet'                              " Tab appeareance
  Plug 'editorconfig/editorconfig-vim'                  " Editorconfig support
  Plug 'godlygeek/tabular'                              " Aligns stuff.
  Plug 'gorodinskiy/vim-coloresque'                     " Colours preview.
  Plug 'tpope/vim-sleuth'                               " Set tabs and spaces.

  " Themes
call plug#end()
