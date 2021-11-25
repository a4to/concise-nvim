 
         " ################################################################################# ################################################################################# "
        " ################################################################################ ### ################################################################################# "
       " ########################################################################## #### ## # ## #### ########################################################################### "
      " ## #                            #######     #########  ########          --->>  V I M R C   <<---          ########  ########     #######                             # ## "
       " ########################################################################## #### ## # ## #### ########################################################################### "
        " ################################################################################ ### ################################################################################# "
          " ################################################################################ ################################################################################# "



 "  #######################################
"  ## ##### General Configuration : ##### ##
 "  #######################################

syntax on

map <ESC> :noh<CR>

filetype indent on
filetype plugin on

let @c = ':w !xsel -ib<CR>'
let @v = ':r !xsel -ob<CR>'

let mapleader = "\\"

"---------------------------------------------"
"---------------------------------------------"

set exrc
set nu rnu   
set relativenumber
set noerrorbells
set hidden
set virtualedit=all
set guicursor=n-v-c-sm:block 
set termguicolors 
set nohlsearch              
set incsearch
set mouse=a
set hidden
set termguicolors
set signcolumn=yes
set autoindent
set smartindent
set noshowmode
set scrolloff=8
set signcolumn=no
set completeopt=menuone,noinsert,noselect 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=$HOME/.vim/undodir
set undofile   
set hlsearch
set clipboard=unnamed
set pastetoggle=<leader><backspace>
set backspace=indent,eol,start
set showmatch
set shortmess=a
set clipboard=unnamedplus
set autoread
set noruler
set wildmenu
" set spell

set colorcolumn=187 
highlight ColorColumn ctermbg=0 guibg=green


" Allow crosshair cursor highlighting.
hi CursorLine   cterm=NONE ctermbg=0
hi CursorColumn cterm=NONE ctermbg=0
nnoremap <Leader>cc :set cursorline!<CR>
nnoremap <leader>cv :set cursorcolumn!<CR>


"######################################################################################################################################################################################## ##                                                                                                                                                                                    ##
"########################################################################################################################################################################################

    "#---------------------#"   
   "# #   R e m a p s :   # #"
    "#---------------------#"             

    
"" Obliterate visual mode..

nnoremap Q ,

"" Essentials :

nnoremap ; :
nnoremap ss :%s/
nnoremap v <c-v>
nnoremap <space> V 

nnoremap <leader>i  :PlugInstall<CR>
nnoremap <F12>      :UndotreeToggle<CR>
nnoremap <leader>t  :TableModeToggle<CR>
nnoremap <leader>;  :NERDTreeToggle $HOME<CR> 
nnoremap <leader>sc :SyntasticCheck<CR>

"" Exiting :

nnoremap <leader>] :w!<CR>
nnoremap <leader>w :w!<space>
nnoremap <leader>' :wq!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>= :q!<CR>

"" Telescope :

nnoremap <leader>[ :Telescope<CR>
nnoremap <leader>s :Telescope symbols<CR>
nnoremap <leader>z :Telescope colorscheme<CR>
nnoremap '' :Telescope grep_string<CR> 

"" Appearance :

nnoremap <F11> :Denite colorscheme<CR>
nnoremap <F10> :set syn=sh<CR>
nnoremap <F8>  :set cursorcolumn!<bar>set cursorline!<CR>
nnoremap <leader>cx :set cursorcolumn!<bar>set cursorline!<CR>

"" Norm Mappings :

nnoremap <leader>n :norm i2>/dev/null<CR>
nnoremap <leader>. :norm 0I# <CR>
nnoremap <leader>, :norm 0I" <CR>
nnoremap <leader>b : :set syn=sh<CR> :norm 0I#!/bin/sh<CR>

"" Define Script Functions :

nnoremap <leader>fn :norm idvn(){ >/dev/null 2>&1; }<CR>
nnoremap <leader>fd :norm imkdmnt(){ $(sudo mkdir -p /mnt/home/drives/"$1" >/dev/null 2>&1 && sudo mount /dev/"$2" /mnt/home/drives/"$1" >/dev/null 2>&1) ; }<CR>
nnoremap <leader>fe :norm iec(){ echo -e "\n"; }<CR>
nnoremap <leader>fm :norm imsg(){ echo "$(tput bold; tput setaf 2)[+] ${*}$(tput sgr0)"; }<CR>
nnoremap <leader>fe :norm ierr(){ echo >&2 "$(tput bold; tput setaf 1)[-] ERROR: ${*}$(tput sgr0)" && exit 1337; }<CR> 
nnoremap <leader>fw :norm iwarn(){ echo >&2 "$(tput bold; tput setaf 1)[!] WARNING: ${*}$(tput sgr0)"; }<CR>
nnoremap <leader>fcr :norm icheck_root(){ [ "$(id -u)" -ne 0 ] && err "root priviledges are required to run this script."; }<CR>
nnoremap <leader>ftd :norm imake_tmp_dir(){ tmp="$(mktemp -d /tmp/blackarch_strap.XXXXXXXX)" ; trap 'rm -rf $tmp' EXIT ; cd "$tmp" \|\| err "Could not enter directory $tmp"; }<CR>

"" Define Script Variables :

nnoremap <leader>/ :norm i >/dev/null 2>&1<CR>
nnoremap <leader>- :norm i echo -e "\n" <CR>
nnoremap <leader>ud :norm iUNIDIR="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd && echo)"<CR>
nnoremap <leader>xc :norm i   ="${XDG_CONFIG_HOME:-$HOME/  <CR>
nnoremap <leader>xd :norm i   ="${XDG_DATA_HOME:-$HOME/  <CR>


"" Wincmd Mappings :

nnoremap <leader><end> :tabnext<CR>
nnoremap <leader><del> :tabNext<CR>
nnoremap <leader>d :wincmd l<CR>
nnoremap <leader>f :wincmd h<CR>
nnoremap <leader><home> :vsplit<CR>
nnoremap <leader><up> :split<CR>
nnoremap <leader><pageup> :tabedit<bar>Ex<CR>
nnoremap <c-Up> :resize -2<CR>
nnoremap <c-Down> :resize +2<CR>
nnoremap <c-Left> :vertical resize -2<CR>
nnoremap <c-Right> :vertical resize +2<CR>
nnoremap <leader><ins> :tabedit<CR>
nnoremap <a-t> :tabedit<CR>
nnoremap <a-d> :tabNext<CR>
nnoremap <a-f> :tabnext<CR>
nnoremap <leader>\ :wincmd v<bar> :Ex $HOME <bar> :vertical resize 80<CR>
nnoremap <leader><pagedown> :tabedit <bar> :Ex $HOME <CR> 
nnoremap <pagedown>w :resize -2<CR>
nnoremap <pagedown>d  :resize +2<CR>
nnoremap <pagedown>a  :vertical resize -2<CR>
nnoremap <pagedown>s  :vertical resize +2<CR>


"" Source Files :

nnoremap <leader>sv :so $HOME/.config/nvim/init.vim<CR>



"" Other remaps :

nnoremap <leader>8 80-A<ESC>d80<bar>|

noremap <Leader>h :call<SID>LongLineHLToggle()<cr>

nnoremap '; :Denite<space>

nnoremap 's :wincmd v <CR>  
":vertical resize 40<CR> 

" vnoremap <silent> <f3> :<c-u>HSHighlight 1<CR>
" vnoremap <silent> <f4> :<c-u>HSRmHighlight<CR>


"########################################################################################################################################################################################
"##                                                                                                                                                                                    ##
"########################################################################################################################################################################################

call plug#begin('$HOME/.vim/plugged')

  "#---------------------------#"
 "# ##   P L U G G I N S :   ## #"
  "#---------------------------#"  


" Auto Completion:

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ycm-core/YouCompleteMe', {'branch': 'release'} 


" Snippits:

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


" Theming And Appearance:

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'gruvbox-community/gruvbox'
Plug 'ap/vim-css-color'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'flazz/vim-colorschemes'
Plug 'whatyouhide/vim-gotham'
Plug 'tomasr/molokai'
Plug 'mkarmona/colorsbox'
Plug 'rainglow/vim'
Plug 'rafi/awesome-vim-colorschemes'


" Fuzzy Finding:

Plug 'Shougo/denite.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'


" Telescope:

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'


" Workflow Trees:

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'


" Functionality:

Plug 'jremmen/vim-ripgrep'
Plug 'johnpapa/lite-server'
Plug 'tpope/vim-fugitive'


" Calculations Etc:

Plug 'dhruvasagar/vim-table-mode'
Plug 'sk1418/HowMuch'
Plug 'makerj/vim-pdf'


" Assistance And Syntax Checking:

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
Plug 'vim-utils/vim-man'
Plug 'vim-syntastic/syntastic'



call plug#end()  

"########################################################################################################################################################################################
"##                                                                                                                                                                                    ##
"########################################################################################################################################################################################

 "----------------------------------------------------------" 
 " ### ## # ## ###  P L U G I N  S E T U P  ### ## # ## ### "
 "----------------------------------------------------------"

 " # ## COLOR SCHEMES ## # "

" colorscheme monokai-phoenix        
" colorscheme monokain
  colorscheme concise





"####  D E N I T E  ####"
"
" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


"####  S Y N T A C T I C  #### "

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


"####  H O W  M U C H  #### "

let g:HowMuch_scale = 2
let g:HowMuch_auto_engines = ['bc', 'vim', 'py']


"####  T A B L E  M O D E  ####"

let g:table_mode_corner='+'
let g:table_mode_fillchar='='
let g:table_mode_fillhead='-'

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


"####  V I M - A I R L I N E  ####"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


"####  P O W E R L I N E  ####"

let g:Powerline_symbols = 'fancy'


"########################################################################################################################################################################################
"##                                                                                                                                                                                    ##
"########################################################################################################################################################################################

"####  S C R I P T S  ####"

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winsaveview(l:save)
endfun

hi OverLength ctermbg=none cterm=none
match OverLength /\%>80v/
fun! s:LongLineHLToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction

if executable('rg')
    let g:rg_derive_root='true'
endif


" " Call compile
" " Open the PDF from /tmp/
" function! Preview()
        " :call Compile()<CR><CR>
        " execute "! zathura /tmp/op.pdf &"
" endfunction
" 
" " [1] Get the extension of the file
" " [2] Apply appropriate compilation command
" " [3] Save PDF as /tmp/op.pdf
" function! Compile()
        " let extension = expand('%:e')
        " if extension == "ms"
                " execute "! groff -ms % -T pdf > /tmp/op.pdf"
        " elseif extension == "tex"
                " execute "! pandoc -f latex -t latex % -o /tmp/op.pdf"
        " elseif extension == "md"
                " execute "! pandoc % -s -o /tmp/op.pdf"
        " endif
" endfunction


" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
 
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
 
" Default: 0.5
" let g:limelight_default_coefficient = 0.7
" 
" " Number of preceding/following paragraphs to include (default: 0)
" let g:limelight_paragraph_span = 1
" 
" " Beginning/end of paragraph
" "   When there's no empty line between the paragraphs
" "   and each paragraph starts with indentation
" let g:limelight_bop = '^\s'
" let g:limelight_eop = '\ze\n^\s'
" 
" " Highlighting priority (default: 10)
" "   Set it to -1 not to overrule hlsearch
" let g:limelight_priority = -1
" 
 " map \ + p to preview
" noremap <leader>p :call Preview()<CR><CR><CR>
" 
" " map \ + q to compile
" noremap <leader>q :call Compile()<CR><CR>




























"########################################################################################################################################################################################
"########################################################################################################################################################################################
"##                                                                                                                                                                                    ##
"########################################################################################################################################################################################
"########################################################################################################################################################################################
