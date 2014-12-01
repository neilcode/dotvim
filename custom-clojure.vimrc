nnoremap <leader>E :%Eval<CR>

" Rainbow parentheses always on
au BufEnter *.clj RainbowParenthesesToggleAll

" Parse implementation namespace from the first line in the test file
" Example:
"   (ns foo-app.handler-spec)
"   => foo-app.handler
function! s:GetNamespaceFromTest()
  let regex = "(ns\\s\\+\\(.*\\)-\\(spec\\|test\\)"
  let location = 1
  let line = getline(location)
  return substitute(line, regex, "\\1", "")
endfunction

" Reload implementation namespace and eval test file
function! RunTestWithReload()
  let namespace = s:GetNamespaceFromTest()
  execute 'Require ' . namespace
  %Eval
endfunction

function! s:AutoReload()
  Require
endfunction

autocmd BufRead *_spec.clj,*_test.clj nnoremap <buffer> <leader>t :call RunTestWithReload()<CR>
autocmd BufWritePre *.clj :call s:AutoReload()

let tlist_clojure_settings = 'lisp;f:function'
