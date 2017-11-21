" fill this out
" vundle commands
" vim +BundleInstall +qall
" vim +BundleUpdate +qall

" git clone https://github.com/gmarik/Vundle.vim.git ./bundle/Vundle.vim
let bundles_installed=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let bundles_installed=0
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ================= Naviagtion ====================
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'kien/ctrlp.vim'
let g:ctrlp_extensions = ['funky']
Plugin 'tacahiroy/ctrlp-funky'

" Plugin 'danielcbaldwin/ctrlp-modified.vim'

Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'endel/ctrlp-filetype.vim'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'majutsushi/tagbar'
  let g:tagbar_compact = 1
  let g:tagbar_sort = 0
  let g:tagbar_autofocus = 1

Plugin 'terryma/vim-multiple-cursors.git'


" ===================== UI ========================
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
  set laststatus=2
  let g:airline_theme = 'powerlineish'
  let g:airline#extensions#branch#enabled = 1
  let g:airline#extensions#syntastic#enabled = 1
  let g:airline#extensions#whitespace#enabled = 0
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = '⮀'
  let g:airline#extensions#tabline#left_alt_sep = '⮁'


  " vim-powerline symbols
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_branch_prefix = '⭠'
  let g:airline_readonly_symbol = '⭤'
  let g:airline_linecolumn_prefix = '⭡'

" ================== Commands =====================
Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-commentary'
  autocmd FileType ruby set commentstring=#\ %s
  autocmd FileType vim set commentstring=\"\ %s
  autocmd FileType javascript set commentstring=\/\/\ %s

" ============= EditorConfig ================
Plugin 'editorconfig/editorconfig-vim'

" ============= External Integrations ================
Plugin 'mrtazz/simplenote.vim'

" ============= Language Additions ================
Plugin 'scrooloose/syntastic'

" Ruby
Plugin 'vim-scripts/ruby-matchit'


" JavaScript
Plugin 'Shutnik/jshint2.vim'

" CSV
" Plugin 'chrisbra/csv.vim'

" Coffee Script
Plugin 'kchmck/vim-coffee-script'

" GO
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" JSX (react js)
Plugin 'mxw/vim-jsx.git'

" Rust
Plugin 'rust-lang/rust.vim'

" Elm
Plugin 'lambdatoast/elm.vim.git'

" Elixir
Plugin 'elixir-lang/vim-elixir'


" All of your Plugins must be added before the following line
call vundle#end()            " required
if bundles_installed == 0
  echo "Installing Plugins, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
