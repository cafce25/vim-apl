scriptencoding utf-8
let b:keymap_name=expand('<sfile>:t:r')

let a ='^1234567890-` ˇ°§ℓ»«$€„“”—¸'
let a.='xvlcwkhgfqß´  XVLCWKHGFQẞ~ '
let a.='uiaeosnrtdy   UIAEOSNRTDY  '
let a.='üöäpzbm,.j    ÜÖÄPZBM–•J   '

let b ='⋄¨¯<≤=≥>≠∨∧×÷ ⌺⌶⍫⍒⍋⌽⍉⊖⍟⍱⍲!⌹'
let b.='?⍵∊⍴~↑↓⍳○*←→  ?⍵⍷⍴⍨↑↓⍸⍥⍣⍞⍬ '
let b.='⍺⌈⌊∥∇∆∘''⎕⍎⍕   ⍺⌈⌊⊚∇∆⍤⌸⌷≡≢  '
let b.='⊂⊃∩∪⊥⊤|⍝⍀⌿    ⊆⊃⍎⍕⊢⊣|⍪⍙⍠   '

let p=exists('g:apl_prefix_key')?g:apl_prefix_key:'`'
execute 'lnoremap<buffer> '.p.'<space> '.p
execute 'cnoremap<buffer> '.p.'<space> '.p
let[A,B]=map([a,b],"split(v:val,'\\zs *')")
for i in range(len(A))
	execute escape('lnoremap<buffer>'.p.A[i].' '.B[i],'|')
endfor
for i in range(len(A))
	execute escape('cnoremap<buffer>'.p.A[i].' '.B[i],'|')
endfor
unlet a b A B i p
