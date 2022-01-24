inoremap <A-m> <esc>:call ToggleMathMode()<cr>a

let g:imappings = [
\ [".a", "\\alpha"],
\ [".b", "\\beta"],
\ [".g", "\\gamma"],
\ [".d", "\\delta"],
\ [".e", "\\epsilon"],
\ [".p", "\\phi"],
\ [".l", "\\lambda"],
\ [".r", "\\rho"],
\ [".t", "\\theta"],
\ [".T", "\\tau"],
\ [".m", "\\mu"],
\ [".n", "\\nu"],
\ [".R", "\\mathbb{R}"],
\ [".S", "\\Sigma"],
\ [".B", "\\boldsymbol{}<esc>i"],
\ [".N", "\\mathcal{N}"],
\ [".8", "\\infty"],
\ [".*", " \\times "],
\ [".(", "\\left(  \\right)<esc>Bhi"],
\ [".[", "\\left[  \\right]<esc>Bhi"],
\ [".{", "\\left\\{  \\right\\}<esc>Bhi"],
\ [".$", "\\begin{equation}\\begin{aligned}<cr>\\end{aligned}\\end{equation}<esc>O& "],
\ [".M", "\\begin{pmatrix}<cr> & \\\\<cr> & \\\\<cr>\\end{pmatrix}<esc>kk0i"],
\ [".V", "\\begin{pmatrix} \\\\ \\end{pmatrix}<esc>BBhi"],
\ ["__", "_{}<esc>i"],
\ ["^^", "^{}<esc>i"],
\ ["./", "\\frac{}{}<esc>2hi"],
\ [".+", "\\sum_{}^{}<esc>3hi"],
\ ["<Tab>", "<esc>/[[({\\])}]<cr>:nohl<cr>a"]
\ ]


" NOTE: adding <esc>a allows to undo individual shortcuts
function! ToggleMathMode()
  if !exists("g:MathModeOn")
    for im in g:imappings
      let cmd = ":" . "inoremap " . im[0] . " " . "<esc>a" . im[1]
      execute('silent! ' . cmd)
    endfor
    let g:MathModeOn = 1
  else
    for im in g:imappings
      let cmd = ":" . "iunmap " . im[0] 
      execute('silent! ' . cmd)
    endfor
    unlet g:MathModeOn
  endif
endfunction

