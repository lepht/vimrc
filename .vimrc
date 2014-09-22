  "############################################################################
"# Info {{{                                                                  
"############################################################################
"
" Author: lepht - <http://github.com/lepht>
"         <http://lepht.com> - pete.clark@gmail.com
"
" Notes:  This is my vim configuration, built up over the course of several
"         years. I've tried to keep it useful to others:
"
"         * Comments are used wherever possible
"         * Abbreviations are avoided for readability (ie. 'foldmethod'
"           not 'fdm')
"
" Requirements:
"
"         * vim 7.3 or higher, compiled with scripting language support
"           Check what your vim was compiled with using `vim --version`. You
"           need support for at least:
"               - perl
"               - python
"               - ruby
"
"         * vundle[1]
"           For managing and installing the plugins listed in 'Bundles'
"
"         * A Powerline-patched font
"           Use the powerline font patcher[2] to patch your font of choice,
"           then configure your terminal/gvim to use it. I use Anonymous
"           Pro, 11pt[3].
"
"           Alternately, you can disable 'fancy' powerline symbols with:
"             - let g:Powerline_symbols='unicode'
"              *or*
"             - let g:Powerline_symbols='compatible'
"
" Links:
"
"   [1]: <gmarik/vundle>
"   [2]: <Lokaltog/vim-powerline/tree/develop/fontpatcher>
"   [3]: <http://www.google.com/webfonts#UsePlace:use/Collection:Anonymous+Pro>
"
"############################################################################
"# }}}
"############################################################################

set shell=/bin/zsh

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off vi backwards compatibility to enable more features
set nocompatible

syntax enable "Enable syntax hl

cmap w!! %!sudo tee > /dev/null %

" set clipboard=unnamedplus

set modeline
set modelines=3
set noshowmode
set ambiwidth=double
set t_Co=256
set background=dark

" Fix j/k for wrapped lines
nnoremap j gj
nnoremap k gk

" Make jj exit input mode
inoremap jj <ESC>
" inoremap JJ <ESC>:w<CR>
" nnoremap JJ :w<CR>

set directory=~/.vim_swaps
set backupdir=~/.vim_backups
set undodir=~/.vim_undodir

set foldmethod=manual

" Sets how many lines of history VIM has to remember
set history=10000

" Activate mouse
set mouse=a 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure bundles (plugins)
if has('vim_starting')
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

  NeoBundle 'Shougo/vimproc.vim' " Interactive command execution in Vim.
" Installed Bundles {{{
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/neossh.vim'
  NeoBundle 'ujihisa/vimshell-ssh'
  NeoBundle 'rizzatti/dash.vim'
  NeoBundle 'rodjek/vim-puppet'
  NeoBundle 'bufmru.vim' " 0.1   switch to a most recently used buffer quickly
  NeoBundle 'Hackworth/vim-ps1'
  NeoBundle 'FuDesign2008/backbone.vim'
  NeoBundle 'mattn/jscomplete-vim'
  NeoBundle 'godlygeek/tabular'
  NeoBundle 'PotatoesMaster/i3-vim-syntax' " Vim syntax for i3 window manager config
  NeoBundle 'rubycomplete.vim' " 0.7   ruby omni-completion
  NeoBundle 'noprompt/vim-yardoc' " 0.7   ruby omni-completion
  NeoBundle 'tpope/vim-endwise'
  NeoBundle 'bling/vim-bufferline'
  NeoBundle 'justinmk/vim-sneak'
  NeoBundle 'vim-scripts/taskpaper.vim' " TaskPaper to-do list format support
  NeoBundle 'cocoa.vim' " 0.1   Plugin for Cocoa/Objective-C development
  NeoBundle 'jvirtanen/vim-cocoapods' " Syntax highlighting for CocoaPods
  NeoBundle 'vim-scripts/plist.vim' " Old-Style ASCII Property List
  NeoBundle 'hallison/vim-ruby-sinatra' " Vim syntax highlight and snippets that helper coding applications based in Sinatra micro-framework.
  NeoBundle 'mbbill/undotree'
  NeoBundle 'loki-nkl/vim-mysql-mode' " Edit mysql queries with full power of VIM and show results in a split window immediately.
  NeoBundle 'sjl/vitality.vim'
  " NeoBundle 'wesleyche/Trinity'
  NeoBundle 'ref.vim' " 0.3.0 Integrated reference viewer.
  NeoBundle 'matchparenpp'
  NeoBundle 'vim-scripts/taglist.vim'
  NeoBundle 'Shougo/vimfiler'
  NeoBundle 'mhinz/vim-signify'
  NeoBundle 'eshion/vim-sftp-sync'
  NeoBundle 'othree/xml.vim'
  NeoBundle 'Shougo/vimshell'
  NeoBundle 'paredit.vim'
  NeoBundle 'unimpaired.vim'
  NeoBundle 'bclear'
  NeoBundle 'vim-scripts/svn-diff.vim' " Show diff  when commiting changes on a subversion repository
  NeoBundle 'vcscommand.vim' " 1.52  CVS/SVN/SVK/git/hg/bzr integration plugin
  NeoBundle 'slimv.vim'
  NeoBundle 'ctrlp.vim'
  NeoBundle 'rking/ag.vim'
  NeoBundle 'peterhoeg/vim-tmux' " tmux highlighting for vim
  NeoBundle 'LogiPat'
  NeoBundle 'netrw.vim'
  NeoBundle 'VimClojure'
  NeoBundle 'luochen1990/rainbow'
  NeoBundle 'applescript.vim'
  NeoBundle 'SudoEdit.vim'
  NeoBundle 'Lokaltog/vim-easymotion.git'
  NeoBundle 'file-line'
  NeoBundle 'TaskList.vim'
  NeoBundle 'vim-ruby/vim-ruby'
  NeoBundle 'bash-support.vim'
  NeoBundle 'zhougn/molokai-plus'
  NeoBundle 'html5.vim'
  NeoBundle 'sourcebeautify.vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'Lokaltog/vim-powerline'
  NeoBundle 'mojo.vim'
  NeoBundle 'tomtom/tcomment_vim'
  NeoBundle 'zshr.vim'
  NeoBundle 'tlib'
  NeoBundle 'tpope/vim-markdown' 
  NeoBundle 'jtratner/vim-flavored-markdown' 
  NeoBundle 'matchit.zip'
  NeoBundle 'recover.vim'
  NeoBundle 'scrooloose/syntastic' " Syntax checking hacks for vim
  NeoBundle 'quickfixsigns'
  NeoBundle 'jelera/vim-javascript-syntax'
  NeoBundle 'pangloss/vim-javascript'
  NeoBundle 'node.js'
  NeoBundle 'Shougo/neocomplete.vim' " Next generation completion framework after neocomplcache
  NeoBundle 'Shougo/neosnippet.vim' " Next generation completion framework after neocomplcache
  NeoBundle 'Shougo/neosnippet-snippets' " Next generation completion framework after neocomplcache
  NeoBundle 'cuteErrorMarker'
  NeoBundle 'cuteTodoList'
  NeoBundle 'majutsushi/tagbar'
  NeoBundle 'vimoutliner/vimoutliner.git'
  NeoBundle 'tpope/vim-haml.git'
  NeoBundle 'tpope/vim-ragtag.git'
  NeoBundle 'tpope/vim-surround.git'
  NeoBundle 'xolox/vim-misc'
  NeoBundle 'xolox/vim-easytags.git'
  NeoBundle 'jceb/vim-orgmode'
  NeoBundle 'sukima/xmledit.git'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'tpope/vim-repeat.git'
  NeoBundle 'YankRing.vim'
  NeoBundle 'wesleyche/SrcExpl'

" }}}

NeoBundleCheck

if has("gui_macvim")
  let g:tagbar_ctags_bin='/usr/local/bin/ctags'
  let g:neocomplcache_ctags_program='/usr/local/bin/ctags'
  let g:colorizer_auto_filetype='css,html'
else
  let g:tagbar_ctags_bin='/usr/bin/ctags'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8
filetype on
filetype plugin indent on

colorscheme molokai

" With a map leader it's possible to do extra key combinations
let mapleader=","
let g:mapleader=","

command! Q quit
cnoreabbrev W w
command! Wq wq
command! WQ wq
command! BundleSearch Unite neobundle/search
command! BundleUpdate Unite neobundle/update

cnoreabbrev nt tabnew
cnoreabbrev tc tabclose
cnoreabbrev wc <esc><c-w><c-c>
cnoreabbrev na Na
cnoreabbrev shellt VimShellTab

nmap <f8> :TrinityToggleAll<cr>

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
nmap <tab> >>
nmap <s-tab> <<

let g:ctrlp_map = "<C-g>"
nmap <C-b> :CtrlPBuffer<cr>
nmap <C-f> :CtrlPDir<cr>
" nmap <C-v> :CtrlPF<cr>
nmap <C-u> :CtrlPMRU<cr>
" nmap <C-t> :CtrlPBufTagAll<cr>
nmap <C-t> :VimShellPop<cr>
let g:vimshell_use_terminal_command = '/bin/sh -c i3-sensible-terminal'
nmap  :CtrlPLine<cr>
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_mruf_case_sensitive = 0
let g:ctrlp_dotfiles = 1
let g:ctrlp_switch_buffer = 'v'
let g:ctrlp_extensions = ['Z', 'F']

cnoreabbrev sw SudoWrite
cnoreabbrev fp echo expand('%:p')                                                                                                                         

cnoreabbrev na Na
command! -nargs=1 Na TName <f-args> 

" let g:EasyMotion_mapping_f='<C-f>'
" let g:EasyMotion_mapping_F='<C-F>'

" let g:EasyMotion_mapping_t='†'
" let g:EasyMotion_mapping_T='ˇ'

" let g:EasyMotion_mapping_j='J'
" let g:EasyMotion_mapping_k='K'

map [1;5D <<
map [1;5C >>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax checking {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of vimrc
map <leader>e :tabedit! ~/.vimrc<cr>

cnoreabbrev dg diffget
cnoreabbrev W w

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
" autocmd! bufreadpost .vimrc call setpos(".",[0] + searchpos('/Installed Bundles'))
"autocmd! bufreadpost .vimrc %foldopen!

"Persistent undo
try
    set undofile
    set undolevels=1000 "maximum number of changes that can be undone
    set undoreload=10000 "maximum number lines to save for undo on a buffer reload
    catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on and configure wildmenu, for command tab-completion
set wildmenu
set wildmode=list:longest,full

" let g:neocomplcache_enable_cursor_hold_i = 1
" Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
" let g:neocomplcache_enable_camel_case_completion = 1
"
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_auto_completion_start_length = 4
let g:neocomplcache_max_list = 20
let g:neocomplcache_max_menu_width = 30
let g:neocomplcache_temporary_dir = expand('~/.vim_neocomp')

let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_preview = 1

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

set ruler "Always show current position

" to handle exiting insert mode via a control-C
inoremap <c-c> <c-o>:call InsertLeaveActions()<cr><c-c>


set hidden "Change buffer without having to save

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

set updatetime=2000
let g:easytags_updatetime_min=500
let g:easytags_resolve_links = 1
let g:easytags_dynamic_files = 0
let g:easytags_events = ['BufWritePost']

" No sound on errors
set noerrorbells
set visualbell t_vb=
" set tm=500

set number " Show line numbers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on the taglist
let g:tagbar_usearrows = 1
let g:tagbar_updateonsave_maxlines = 1000
let g:tagbar_width = 30
let g:tagbar_expand = 0
let g:tagbar_singleclick = 0
let g:tagbar_autoshowtag = 1
" autocmd VimEnter * nested TagbarOpen
let g:tagbar_compact = 1
let g:tagbar_autoclose = 0
nnoremap <silent> <leader>b :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=2
set copyindent
set tabstop=2
set smarttab
set expandtab
set softtabstop=2
set cinoptions=(0,u0,U0
set textwidth=0
set linebreak
set autoindent "Auto indent
" set smartindent " Smart indet
set wrap " Wrap lines
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab/Buffer Movement {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map space to / (search) and c-space to ? (backgwards search)
" map <space> /
map <silent> ,<space> :noh<cr>

" Smart way to move between windows
nnoremap <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nmap <C-c> <C-W><C-C>
" nmap <C-s> <C-W><C-s>
" nmap <C-v><C-v> <C-W><C-v>


inoremap <C-Space> <C-x><C-o>

" Close the current buffer
map <leader>bd :Bclose<cr>
cnoreabbrev bd Bclose

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" When pressing <leader>cd switch to the directory of the open buffer
" map <leader>cd :cd %:p:h<cr>

command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
  let l:currentBufNum=bufnr("%")
  let l:alternateBufNum=bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction

" Specify the behavior when switching between buffers 
try
  set switchbuf=usetab
  set stal=2
catch
endtry
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statusline {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set diffopt+=iwhite
set diffopt+=vertical

" Always enable the statusline
set laststatus=2

let g:Powerline_symbols='unicode'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_section_y = '%{getcwd()}'


" set statusline=%<\ %n:%f\ %m%r%y%{fugitive#statusline()}%=%-15.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
" let g:bufferline_echo = 1


function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  else
    return ''
  endif
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Parenthesis/bracket expanding {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Abbrevs {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Open file explorer with  <f1>
set wildignore+=*.sw[op],*.o,*.obj,*/.git/*,*/.emacs*/*,*/.svn/*,*.pyc,$HOME/src/*,*/Migration/*,*/.vim_*/*,*/.cpan/*,*/.neocomp/*,*/.Trash/*

" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|^\.vim.*$\|\.svn$\|tags$',
      \ 'file': '\.exe$\|\.so$\|\.dll$',
      \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Yanking {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" After pasting, press <C-p> to replace paste with previous entries in yank history
" map <C-y> :YRShow<CR>
nnoremap Y "+yy
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <silent> <C-\> :TComment<CR>
inoremap <silent> <C-\> :TComment<CR>i

set cursorline
set pastetoggle=<F2>
set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone

" Tell vim to remember certain things when we exit
"  '20  :  marks will be remembered for up to 10 previously edited files
"  "1000 :  will save up to 1000 lines for each register
"  :40  :  up to 40 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo=\'20,\"1000,:40,n~/.vim_info

nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
cnoreabbrev rr SCCompileRun

let g:bufferline_echo = 0
autocmd VimEnter *
      \ let &statusline='%{bufferline#refresh_status()}'
      \ .bufferline#get_status_string()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd vimenter * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <Leader>n :NERDTreeToggle<CR>
map <Leader>N :NERDTreeFromBookmark 
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Filetypes {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimoutliner files
autocmd BufNewFile,Bufread *.otl set filetype=vo_base
" Misc.
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,mark*} setlocal filetype=ghmarkdown
autocmd BufRead,BufNewFile *.taskpaper setfiletype taskpaper
autocmd BufRead,BufNewFile *.taskpapertheme setfiletype xml
autocmd FileType help map <buffer> q :quit<cr>
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncategorized {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: Put these in proper categories
let g:BASH_Ctrl_j='off'
let g:rainbow_active = 1
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatic views {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Save and load view state (manual folds, etc) automatically when
" opening/closing files
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview 
" map <unique> <silent> <C-f> <Plug>SimpleFold_Foldsearch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim:fdm=marker:tw=80

