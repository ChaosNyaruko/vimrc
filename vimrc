"不要使用vi的键盘模式，使用vim的
set nocompatible

" 在处理未保存或者只读文件的时候，弹出确认
set confirm

" 与windows共享剪贴板
set clipboard+=unnamed

" 侦测文件类型
filetype on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 语法高亮
syntax on

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" 不要备份文件
set nobackup

" 不要生成swap文件，当buffer被丢其实影藏他
setlocal noswapfile
set bufhidden=hide

" 字符间插入的像素航数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 在状态航上显示光标所在的位置的行号和列好
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 设置命令行的高度为2
set cmdheight=2

" backspace 正常处理indent eol start等
set backspace=2

" 可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 使用command,告知文件哪一行被修改过
set report=0

" no bell
set noerrorbells

" 在被分割的窗口显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮时间
set matchtime=5

" 在搜索时忽略大小写
set ignorecase

" 不要高亮被搜索的句子
set nohlsearch

" 在搜索时，输入的词句逐个字符高亮
set incsearch

" 不要闪烁
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\%H:%M\")}

" 总是显示状态行
set laststatus=2

" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式
set autoindent

" 制表符为4
set tabstop=4

" 统一缩进 4
set shiftwidth=4

" 不要换行
set nowrap

" 在行和段开始处使用制表符
set smarttab

" 按照名称排序 
 let Tlist_Sort_Type = "name" 
"
" " 在右侧显示窗口 
 let Tlist_Use_Right_Window = 1 
"
" " 压缩方式 
 let Tlist_Compart_Format = 1 
"
" " 如果只有一个buffer，kill窗口也kill掉buffer 
 let Tlist_Exist_OnlyWindow = 1 
"
" " 不要关闭其他文件的tags 
 let Tlist_File_Fold_Auto_Close = 0 
"
" " 不要显示折叠树 
 let Tlist_Enable_Fold_Column = 0 
"

if has("autocmd") 
	autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number 
	autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o--> 
	autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o 
	autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100 
	autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim 
	autocmd BufReadPost * 
				\ if line("'\"") > 0 && line("'\"") <= line("$") | 
				\ exe " normal g`\"" | 
				\ endif 
endif "has("autocmd")















