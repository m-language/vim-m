if exists("b:current_syntax")
    finish
end

let b:current_syntax="m"

" Everything cluster
syntax cluster mLispAll contains=mApplication,mBool,mKeyword,mNumber,mString,mComment,mTodo

" TODO comments
syntax keyword mTodo TODO XXX FIXME NOTE
syntax match mComment "\v;.*$" contains=mTodo

" Keywords
syntax keyword mKeyword
            \ def
            \ fn
            \ macro
            \ impure

if exists("g:m_if_is_special")
    syntax keyword mKeyword 
        \ if
end

" M Number literals (symbols) 
syntax match mNumber "\v<-?\d+>"
syntax match mNumber "\v<-?\d+\.\d*>"

" Sexp
"syntax region mSexp start="(" end=")" contains=@mLispAll

" Application
syntax match mApplication "\v\(\s*\zs[^\ ^)^(]+\ze"

" Booleans
syntax keyword mBool
            \ true
            \ false

" M Strings
syntax region mString start=/"/ skip=/\\"/ end=/"/

" Set up highlighting
highlight link mApplication Function
highlight link mKeyword Keyword
highlight link mNumber Number
highlight link mString String
highlight link mComment Comment
highlight link mBool Boolean
highlight link mTodo Todo
