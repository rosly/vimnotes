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
:set mouse=c
:syntax on
:nnoremap <F5> :buffers<CR>:buffer<Space>
:vs

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

function! GnuIndent()
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal shiftwidth=2
  setlocal tabstop=8
endfunction

au FileType c,cpp call GnuIndent() 
au BufRead,BufNewFile *.g2 setfiletype c

