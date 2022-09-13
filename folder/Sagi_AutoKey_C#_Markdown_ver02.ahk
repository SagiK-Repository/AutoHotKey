;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; [ 간단 autoHokey 문법 정리 ]
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 
; 키 지정 방법: https://autohotkey.com/docs/Hotkeys.htm
; 전체 키 목록: https://autohotkey.com/docs/KeyList.htm
 
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift
; &: 두개의 키 조합
 
; send는 한문자 일일이 타이핑하게 되고 (속도가 느리고)
; sendinput은 복사하여 붙여넣는 스피드로 (속도가 빠르다)
 
; { } 안에는 특정 키를 누르게 되며, { } 없는 것은 문자열로 인식하게 되어 타이핑 쳐지게 된다.
 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - 기본 capslock기능을 꺼둠
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
SetCapsLockState, AlwaysOff
 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - capslock + f 키로 기본 capslock를 키고 끔
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Capslock & z::Capslock
 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - Capslock키를 누르고 있을경우
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
#If GetKeyState("Capslock","P")
 
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - 방향키
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━	
i::Up
j::Left
k::Down
l::Right
q & j::^Left ; 캡스락 + q + j : 빠르게 이동
q & l::^Right
q & i::^Up
q & k::^Down
w & j::Home
w & l::End
w & i::PgUp
w & k::PgDn

;Up::Send, {Home}{Up}  ; 위 아래 첫 줄 이동
;Down::Send, {Home}{Down}

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - 특수 키
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
d::BackSpace ;Delete
space:: Enter
a & space::Send, {Enter}{Up}{End}

;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - C#
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

;" = "
=::Send, {space}{=}{space}
-::Send, {space}{-}{space}
+::Send, {space}{+}{space}
7::Send, {space}{&}{space}
8::Send, {space}{*}{space}
/::Send, {space}{/}{space}
,::Send, {,}{space}

; 특수기호
$;::Send, {End}{;}
(::Send, {(}{)}{Left}
<::Send, {<}{=}
>::Send, {>}{=}

;코드 자동완성
f::SendInput, for{space}{(}{)}{Left}
b::SendInput, break;
e::SendInput, else{space}
a & w::SendInput, while{space}{(}{)}{Left}
s::SendInput, switch
a & t::SendInput, true
a & f::SendInput, false
r::SendInput, return;{Left}
c::SendInput, continue;
u::SendInput, using{space}
n::SendInput, namespace{space}
p::SendInput, public{space}
?::SendInput, ?{space}{space}:{space}{space};{Left}{Left}{Left}{Left}{Left}
;/::Send, {/}{*}{*}{/}{Left}{Left}
a & p::SendInput, private{space}
a & i::SendInput, if {(}{)}{Left}
a & c::SendInput, case{space}{space}:{space}break;{Left}{Left}{Left}{Left}{Left}{Left}{Left}{Left}
v::SendInput, void{space}



;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - 자주 쓰는 문장 자동완성 단축키
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━	
1::SendInput, Console.WriteLine();{Left}{Left}
2::SendInput, Console.Write();{Left}{Left}


;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
; - Markdown
;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
m & i::SendInput, <img src="" width="">{Left}{Left}{Left}{Left}{Left}{Left}{Left}{Left}{Left}{Left}{Left}
m & `::Send, ``{``}{``}{Enter}{``}{``}{``}{Up}{End}
m & s::SendInput, <details> {Enter}<summary>Name</summary> {Enter}{Enter}</details> {Up}
m & b::SendInput, <br>
m & 8::Send, {*}{*}{*}{*}{Left}{Left}
m & >::Send, >>>{Enter}>>>{Up}{End}
m & -::SendInput, - [ ] 
m & x::SendInput, - [x] 
;mermaid
m & 1::SendInput, ``{``}{``}mermaid{Enter}flowchart LR{Enter}A["A"]--->B["B"]{Enter}{``}{``}{``}{Up}{End}
m & 2::SendInput, ``{``}{``}mermaid{Enter}sequenceDiagram{Enter}Alice->>John: Hello John, how are you?{Enter}{``}{``}{``}{Up}{End}
m & k::SendInput, <kbd></kbd>{Left}{Left}{Left}{Left}{Left}{Left}

;;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; - 커맨드
;;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;w::PgUp
;a::Home
;s::PgDn
;d::End
; 
;Left::Home
;Right::End
;Up::PgUp
;Down::PgDn
; 
;Enter::^Enter ; - 커서를 끝까지 옮기지 않고 그자리에서 바로 엔터처리
;;BackSpace::Esc
;o::BackSpace
;u::Del
; 
;;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; - 코딩 특수기호
;;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;;m::Send, {-}
;;,::Send, {_}
;;.::Send, {=}
;;/::Send, {+}
; 
;;q & m::Send, {-}{>} ; - 인스턴스 참조
;;q & ,::Send, {<}{=} ; - 논리값
;;q & .::Send, {>}{=}
;;q & /::Send, {=}{>} ; - 화살표함수
; 
;'::Send, {``} ; - 백틱
;q & '::Send, {~}
; 
;[::Send, {/}{*} ; - 주석
;]::Send, {*}{/}
;q & [::Send, {<}{!}{-}{-}
;q & ]::Send, {-}{-}{>} 
; 
;;9::Send, {[}  
;;0::Send, {]}
;;q & 9::Send, {{}
;;q & 0::Send, {}}
; 
;;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; - 자주 쓰는 문장 자동완성 단축키
;;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━	
;1::SendInput, console.log(){Left}
;2::SendInput, ${{}{}}{Left}
;;3::SendInput,
; 
;;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
;; - 한/영 단축키 변경
;;━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━		
;; Alt::
;;    Send, {vk15sc138} ; shift + space를 한영키로 사용
;; return
; 
;#If