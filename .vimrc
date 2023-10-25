map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"设置树的显示图标
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = ''

set nu!
set guifont=Luxi/Mono/9
syntax on
set autoindent
set tabstop=4
set shiftwidth=3
set ai!
set showmatch
set hlsearch
