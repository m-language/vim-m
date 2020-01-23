if exists("b:current_syntax")
    finish
end

let b:current_syntax="m"

" Everything cluster
syntax cluster mLispAll contains=mApplication,mBool,mKeyword,mNumber,mString,mComment,mTodo

" TODO comments
syntax keyword mTodo TODO XXX FIXME NOTE
syntax match mComment "\v#.*$" contains=mTodo,mCommentParens
syntax region mCommentParens start="(" end=")" contains=mTodo,mCommentParens contained

" M Number literals (symbols) 
syntax match mNumber "\v<-?\d+>"
syntax match mNumber "\v<-?\d+\.\d*>"

" Booleans
syntax keyword mBool
            \ true
            \ false

" M Strings
syntax region mString start=/"/  end=/"/

syntax match mId /\v[^\ ^)^(]+/ contained

" Application
syntax match mApplication /(\@1<=\s*\v[^\ ^)^(]+/ contains=mNumber,mString,mId

" Set up highlighting
highlight link mId Function
highlight link mNumber Number
highlight link mString String
highlight link mBlockComment Comment
highlight link mComment Comment
highlight link mCommentParens Comment
highlight link mBool Boolean
highlight link mTodo Todo
