setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
setlocal spell

" This turns off physical line wrapping (ie: automatic insertion of newlines)
" setlocal textwidth=0 wrapmargin=0
set linebreak breakindent

set textwidth=80

setlocal includeexpr=substitute(v:fname,'^/','','')
