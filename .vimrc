" https://github.com/wklken/k-vim/blob/master/vimrc
" https://github.com/ma6174/vim/blob/master/.vimrc
" https://github.com/grigio/vim-sublime
"==========================================
" Author: Victor Wang
" Version: 0.1
" Email: wjp2013@gmail.com
" BlogPost: http://wjp2013.gmail.com
" Last_modify: 2014-12-01
" Sections:
"       -> Initial Plugin 加载插件
"       -> General Settings 基础设置
"       -> Display Settings 展示/排版等界面格式设置
"       -> FileEncode Settings 文件编码设置
"       -> Others 其它配置
"       -> HotKey Settings  自定义快捷键
"       -> FileType Settings  针对文件类型的设置
"       -> Theme Settings  主题设置
"
"       -> 插件配置和具体设置在vimrc.bundles中
"==========================================
"  
"==========================================
" Initial Plugin 加载插件
"==========================================
"
" 修改leader键
let mapleader = ','
let g:mapleader = ','

" 不兼容VI键盘，使用vim键盘
set nocompatible

" 设置开启语法高亮
syntax on

" install Vundle bundles
" if filereadable(expand("~/.vimrc.bundles"))
"   source ~/.vimrc.bundles
" endif

" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

"==========================================
" General Settings 基础设置
"==========================================

" 以下配置有详细说明，一些特性不喜欢可以直接注解掉

" 字体 && 字号
"set guifont=Monaco:h20

" 历史记录数
set history=2000

" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on


" 文件修改之后自动载入
set autoread

" 禁止生成临时文件
set nobackup
" 关闭交换文件
set noswapfile

" create undo file
"if has('persistent_undo')
"  set undolevels=1000         " How many undos
"  set unuoreload=10000        " number of lines to save for undo
"  set undofile                " So is persistent undo ...
"  set undodir=/tmp/vimundo/
"endif

" tab键的自动完成现在会忽略这些
set wildignore=*.swp,*.bak,*.pyc,*.class,.svn

" 突出显示当前行等
" set cursorcolumn
set cursorline

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
" 好处：误删什么的，如果以前屏幕打开，可以找回
" set t_ti= t_te=

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
" 修复ctrl+m
" 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
set selection=exclusive
set selectmode=mouse,key
" Hide the mouse cursor while typing
" set mousehide

" No annoying sound on errors
" 去掉输入错误的提示声音
set title                " change the terminal's title
set novisualbell         " don't beep
set noerrorbells         " don't beep
set t_vb=
set tm=500

" Remember info about open buffers on close"
set viminfo^=%

" For regular expressions turn magic on
set magic

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l"

"==========================================
" Display Settings 展示/排版等界面格式设置
"==========================================

" 显示当前的行号列号：
set ruler
" 显示行号
set number
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode
" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7
" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2
" 取消换行。
set nowrap
" 高亮显示匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2

" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 查找结果高亮度显示
set hlsearch
" 搜索忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99

" 缩进配置
set smartindent   " Smart indent
set autoindent    " 打开自动缩进

" tab相关变更
set tabstop=2     " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=2  " 每一次缩进对应的空格数
set softtabstop=2 " 按退格键时可以一次删掉 2 个空格
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 2 个空格
set expandtab     " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround    " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>' tab宽度

" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast

" " 00x增减数字时使用十进制
set nrformats=

" 相对行号      行号变成相对，可以用 nj  nk   进行跳转 5j   5k 上下跳5行
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
		set norelativenumber number
	else
		set relativenumber
	endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
set termencoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac
" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" 合并两行中文时，不在中间加空格：
set formatoptions+=B

"==========================================
" others 其它设置
"==========================================
autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载: windows
autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载: linux
" 自动补全配置
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
" 增强模式中的命令行自动完成操作
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class
" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"==========================================
" HotKey Settings  自定义快捷键设置
"==========================================
" 主要按键重定义

" Treat long lines as break lines (useful when moving around in them)
" se swap之后，同物理行上线直接跳
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" F1 - F6 设置
" F1 废弃这个键,防止调出系统帮助
" F2 行号开关，用于鼠标复制代码用
" F3 显示可打印字符开关
" F4 换行开关
" F5 粘贴模式paste_mode开关,用于有格式的代码粘贴
" F6 语法开关，关闭语法可以加快大文件的展示

" I can type :help on my own, thanks.  Protect your fat fingers from the evils
" of <F1>
noremap <F1> <Esc>"

""为方便复制，用<F2>开启/关闭行号显示:
function! HideNumber()
  if(&relativenumber == &number)
      set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
nnoremap <F2> :call HideNumber()<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>
"set paste
set pastetoggle=<F5> " when in insert mode, press <F5> to go to paste mode, where you can paste mass data that won't be autoindented. 
" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Go to home and end using capitalized directions
"noremap H ^
"noremap L $

"Map ; to : and save a million keystrokes
" ex mode commands made easy 用于快速进入命令行
nnoremap ; :

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 命令行下按tab键自动完成
set wildmode=list:full
set wildmenu

" 搜索相关
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
" 进入搜索Use sane regexes"
"nnoremap / /\v
"vnoremap / /\v

" Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" switch # *
" nnoremap # *
" nnoremap * #

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 设置自动保存
imap <F9> <Esc>:up<cr>

" Remap Your ESCAPE Key in Vim
inoremap jj <ESC>
