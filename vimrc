:set number
:set hlsearch
:set incsearch
:set textwidth=80
:set cindent
:set expandtab
:set tabstop=8
:set shiftwidth=2
:set laststatus=2
:set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
if has("cscope")
 set csprg=/usr/bin/cscope
" modify the stabdard tag feature to use cscope
 set csto=0
 set cst
" silent the database add errors
 set nocsverb
 " add any database in current directory
 if filereadable("cscope.out")
     cs add cscope.out
 " else add database pointed to by environment
 elseif $CSCOPE_DB != ""
     cs add $CSCOPE_DB
 endif
" restore database add errors
 set csverb
endif
nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

