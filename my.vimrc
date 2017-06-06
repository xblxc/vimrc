" 开启语法高亮
syntax enable
syntax on
set nu
set t_Co=256
set background=dark
colorscheme Benokai

" 检测文件类型
filetype on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on
filetype indent on
" 鼠标设置
if has('mouse')
    set mouse=a
endif

" 设置可折叠
set foldmethod=manual

" 打通vim和系统剪贴板之间的通道
vmap "+y :w !pbcopy<CR><CR>
nmap "+p :r !pbpaste<CR><CR>

"set guifont=consolas:h15
"===================
" Display Settings
"===================
" 显示当前行号和列号
set ruler
"set smartindent  
set tabstop=4
set shiftwidth=4  
set expandtab  
"set softtabstop=4  
" 设置代码匹配，包括括号匹配情况
set showmatch
" 设置收缩高亮（hlsearch）
set hls
" 设置搜索时忽略大小写
set ignorecase
set incsearch
" 当搜索的时候尝试smart
set smartcase
" 强调光标所在行
set cursorline
" 设置tab"
set list listchars=tab:»-

"set backspace=indent,eol,start

 " 自动补全配置让Vim补全菜单行为跟IDE一致
 "set completeopt=longest,menu
 
 call has('python3')

 "=============Vundle==================
 set nocompatible
 syntax on
 filetype off
 set rtp+=~/.vim/bundle/Vundle.vim/
 call vundle#begin()
 Plugin 'gmarik/Vundle.vim'
 Plugin 'kien/ctrlp.vim'
 Plugin 'The-NERD-tree'
 "Plugin 'The-NERD-Commenter'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'Lokaltog/vim-easymotion'
 "Plugin 'auto-pairs'
 "Plugin 'delimitMate.vim'
 Plugin 'https://github.com/kana/vim-smartinput'
 Plugin 'tpope/vim-surround'
 Plugin 'mattn/emmet-vim'
 "Plugin 'https://github.com/Lokaltog/vim-powerline.git'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'terryma/vim-multiple-cursors'
 Plugin 'yegappan/mru'
 Plugin 'repeat.vim'
 Plugin 'vim-stylus'
 Plugin 'posva/vim-vue'
 " %匹配的增强版
 Plugin 'matchit.zip'
 " js语法高亮
 "Plugin 'othree/yajs.vim'
 "Plugin 'othree/html5.vim'
 "js 格式化
 Plugin 'maksimr/vim-jsbeautify'

 Plugin 'Valloric/YouCompleteMe'
 " .tern-project文件应位于所在工程目录、或者上层目录
 Plugin 'https://github.com/ternjs/tern_for_vim.git'
 "Plugin 'https://github.com/ervandew/supertab'
 "Plugin 'pangloss/vim-javascript'

 Plugin 'junegunn/vim-easy-align'
 Plugin 'https://github.com/vim-scripts/sessionman.vim'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'https://github.com/tpope/vim-fugitive'
 "显示书签名
 Plugin 'vim-signature'
 "Plugin 'tmhedberg/SimpylFold'
 "Plugin 'SirVer/ultisnips'
 "文件操作：移动，重命名等
 Plugin 'https://github.com/tpope/vim-eunuch'

 " *********  React  *********************
 " vim-react-snippets:
 "Bundle 'justinj/vim-react-snippets'
 "" SnipMate and its dependencies:
 "Bundle 'MarcWeber/vim-addon-mw-utils'
 "Bundle 'tomtom/tlib_vim'
 "Bundle 'garbas/vim-snipmate'
 "" Other sets of snippets (optional):
 "Bundle 'honza/vim-snippets'
 "" jsx highlight
 "Bundle 'https://github.com/mxw/vim-jsx'

 " 暂时停用插件
 "Plugin 'Yggdroot/indentLine'
 "Plugin 'JavaScript-Indent'
 "Plugin 'flazz/vim-colorschemes'
 "Plugin 'crusoexia/vim-javascript-lib'
 "Plugin 'crusoexia/vim-monokai'
 "相当于sublime里的allignment,对齐用的"
 "Plugin 'git://github.com/godlygeek/tabular.git'
 "Plugin 'https://github.com/walm/jshint.vim'
 "类似vimgrep
 "Plugin 'mileszs/ack.vim'
 "vim启动界面
 "Plugin 'mhinz/vim-startify'
 "Plugin 'AutoClose'
 "Plugin 'YankRing.vim'
 "Plugin 'airblade/vim-gitgutter'
 "Plugin 'gregsexton/gitv'
 "Plugin 'taglist.vim'
 "Plugin 'winmanager'
 "Plugin 'https://github.com/leafgarland/typescript-vim'
 
 "手动安装的插件
 "bufexplorer.vim
 "html.vim

 call vundle#end()
 filetype plugin indent on
 "=============/Vundle==================
 
 "=============vim-powerline==================
 set laststatus=2
 "set t_Co=256
 "let g:Powerline_symbols='unicode'
 "let g:Powerline_symbols = 'fancy'
 "set encoding=utf8
 "=============/vim-powerline==================
 "
 "=============/vim-airline===================
 let g:airline_theme = 'badwolf'
 let g:airline#extensions#hunks#enabled=0
 let g:airline#extensions#branch#enabled=1

" 在不同的窗口移动
  map <C-j> <C-W>j
  map <C-k> <C-W>k
  map <C-h> <C-W>h
  map <C-l> <C-W>l

  let mapleader="," 
  "mru" 最近工作文件
  map <leader>r :MRU<CR>
  "你用mru查找文件
  map <leader>f :MRU 
  map <leader>e :BufExplorer<CR>
  let g:bufExplorerShowRelativePath=1
  "ctrlp====设置快捷键"
  let g:ctrlp_map = '<c-p>'

  vmap <leader>y "+y
  nmap <leader>p "+p

  "easy-align
  vmap <Enter> <Plug>(EasyAlign)

  "taglist
  let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
  let Tlist_Show_One_File = 1
  "taglist为最后一个窗口时，退出vim
  let Tlist_Exit_OnlyWindow = 1
  "taglist窗口显示在右侧，缺省为左侧
  let Tlist_Use_Right_Window =1
  "设置taglist打开关闭的快捷键F8
  map <leader>t :TlistToggle<CR>

  "大括号补全，加逗号
  "inoremap <C-9> {<CR><CR>}<ESC>0ki<Tab> }
   "let g:AutoPairsFlyMode = 1
  "save
  "nmap s :w<CR>

  "let g:indentLine_color_term = 237

  "MRU 配置
  "let MRU_Max_Entries = 1000 "设置默认记录的打开文件数量，默认100
  "let MRU_Exclude_Files = '^/guanmai/*.' "设置默认不包含哪些文件，默认空
  "let MRU_Include_Files = '.js|.html|.css|.json|.conf' "设置默认只包含哪些文件，默认空

  " ========== emmet setting ==========
  let g:user_emmet_settings = {
        \ 'html' : {
        \   'indent_blockelement': 1
        \ }
        \}

  "sessionman
  nmap <leader>sl :SessionList<CR>
  nmap <leader>ss :SessionSave<CR>
  nmap <leader>so :SessionOpen<CR>
  nmap <leader>sc :SessionClose<CR>
  "for ycm
  "关闭烦人的提示窗（永远关闭）
  set completeopt-=preview
  set shortmess+=c
  "（自动打开，自动关闭）
  "let g:ycm_autoclose_preview_window_after_completion = 1
  let g:ycm_error_symbol = '>>'
  let g:ycm_warning_symbol = '>*'
  nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
  "for tern : Auto using tern_for_vim plugin in HTML files
  autocmd FileType html set ft=html.javascript
  "cmap ssj set ft=javascript
  "cmap ssh set ft=html.javascript

  "删除键无法删除
  set backspace=indent,eol,start

  "修复.vue 混合文件的注释问题
  let g:ft = ''
  fu! NERDCommenter_before()
    if &ft == 'vue'
      let g:ft = 'vue'
      let stack = synstack(line('.'), col('.'))
      if len(stack) > 0
        let syn = synIDattr((stack)[0], 'name')
        if len(syn) > 0
          let syn = tolower(syn)
          exe 'setf '.syn
        endif
      endif
    endif
  endfu
  fu! NERDCommenter_after()
    if g:ft == 'vue'
      setf vue
      g:ft
    endif
  endfu

