문서정보 : 2022.09.12. 작성, 작성자 [@SAgiKPJH](https://github.com/SAgiKPJH)

# AutoHotKey
개발자 키보드 코딩 단축키 매크로 설정하기, 단축키 만들기, 매크로 만들기

<br>

### 목적
- 코딩작업을 보다 빠르게 완료하기 위한 키보드 단축키 제작 및 활용한다.
- <kbd>Enter</kbd>키, <kbd>backspace</kbd>키 등등 

<br>

### 목표
- [x] : 기본 기능에 대한 단축키 (2022.09.12.)
- [x] : C# 코딩을 위한 단축키 (2022.09.12.)
- [x] : Markdown 코딩을 위한 단축키 (2022.09.12.)
- [x] : Markdown - Mermaid를 위한 단축키 (2022.09.12.)

<br>

# Sagi_AutoKey_C#_Markdown_ver01 내용
- 자체 제작한 단축키에 대해 표로 표현하는 내용입니다.
- <kbd>caps lock</kbd>를 중심으로 특별 단축키를 구성었습니다.
- <kbd>caps lock</kbd>+<kbd>a</kbd>를 통해 별도의 기능을 가진 단축키를 구성하였습니다.

### 기본 기능

- i,j,k,l를 키보드 방향키를 대신 활용하도록 합니다.
- 기본적으로, <kbd>caps lock</kbd>를 통해 동작합니다.
- a카와 연동을 통해 어절 앞/뒤 이동(ctrl을 추가한 키보드 방향키)동작을 수행합니다.
- w키와 연동을 통해 문서 넘김 및 문단 맨 앞/뒤 이동(pgup/dn 및 home/end)을 수행합니다.

키 | 이름 | 동작
-- | -- | --
<kbd>caps   lock</kbd>+<kbd>i</kbd> | 위 방향키 | <kbd>Up</kbd>
<kbd>caps   lock</kbd>+<kbd>j</kbd> | 왼쪽 방향키 | <kbd>Left</kbd>
<kbd>caps   lock</kbd>+<kbd>k</kbd> | 아래 방향키 | <kbd>Down</kbd>
<kbd>caps   lock</kbd>+<kbd>l</kbd> | 오른쪽 방향키 | <kbd>Right</kbd>
<kbd>caps   lock</kbd>+<kbd>q</kbd>+<kbd>i</kbd> | ctrl 위 방향키 | <kbd>ctrl</kbd>+<kbd>Up</kbd>
<kbd>caps   lock</kbd>+<kbd>q</kbd>+<kbd>j</kbd> | ctrl 왼쪽 방향키 | <kbd>ctrl</kbd>+<kbd>Left</kbd>
<kbd>caps   lock</kbd>+<kbd>q</kbd>+<kbd>k</kbd> | ctrl 아래 방향키 | <kbd>ctrl</kbd>+<kbd>Down</kbd>
<kbd>caps   lock</kbd>+<kbd>q</kbd>+<kbd>l</kbd> | ctrl 오른쪽 방향키 | <kbd>ctrl</kbd>+<kbd>Right</kbd>
<kbd>caps   lock</kbd>+<kbd>w</kbd>+<kbd>i</kbd> | 빠른 위 방향키 | <kbd>pgup</kbd>
<kbd>caps   lock</kbd>+<kbd>w</kbd>+<kbd>j</kbd> | 빠른 왼쪽 방향키 | <kbd>home</kbd>
<kbd>caps   lock</kbd>+<kbd>w</kbd>+<kbd>k</kbd> | 빠른 아래 방향키 | <kbd>pgdn</kbd>
<kbd>caps   lock</kbd>+<kbd>w</kbd>+<kbd>l</kbd> | 빠른 오른쪽 방향키 | <kbd>end</kbd>
<kbd>caps lock</kbd>+<kbd>d</kbd> | backspase | <kbd>backspace</kbd>
<kbd>caps lock</kbd>+<kbd>space</kbd> | 엔터 | <kbd>Enter</kbd>
<kbd>caps lock</kbd>+<kbd>a</kbd>+<kbd>space</kbd> | 엔터 후 복귀 | <kbd>Enter</kbd> > <kbd>Up</kbd> > <kbd>end</kbd>


### C# 코딩

#### 기본
키 | 이름 | 동작
-- | -- | --
<kbd>caps lock</kbd>+<kbd>=</kbd> |" = "(가독성 목적) | <kbd>space</kbd>+<kbd>=</kbd>+<kbd>space</kbd>
<kbd>caps lock</kbd>+<kbd>-</kbd> |" - "(가독성 목적) | <kbd>space</kbd>+<kbd>-</kbd>+<kbd>space</kbd>
<kbd>caps lock</kbd>+<kbd>+</kbd> |" + "(가독성 목적) | <kbd>space</kbd>+<kbd>+</kbd>+<kbd>space</kbd>
<kbd>caps lock</kbd>+<kbd>7</kbd> |" & "(가독성 목적) | <kbd>space</kbd>+<kbd>7</kbd>+<kbd>space</kbd>
<kbd>caps lock</kbd>+<kbd>8</kbd> |" * "(가독성 목적) | <kbd>space</kbd>+<kbd>8</kbd>+<kbd>space</kbd>
<kbd>caps lock</kbd>+<kbd>/</kbd> |" / "(가독성 목적) | <kbd>space</kbd>+<kbd>/</kbd>+<kbd>space</kbd>
<kbd>caps lock</kbd>+<kbd>,</kbd> |" , "(가독성 목적) | <kbd>,</kbd>+<kbd>space</kbd>
<kbd>space</kbd>+<kbd>;</kbd> | 맨 뒤 ";" | <kbd>end</kbd>+<kbd>;</kbd>
<kbd>space</kbd>+<kbd>(</kbd> | 소괄호 | <kbd>(</kbd>+<kbd>)</kbd>+<kbd>Left</kbd>
<kbd>space</kbd>+<kbd><</kbd> | 비교문 - 이하 | <kbd><</kbd>+<kbd>=</kbd>
<kbd>space</kbd>+<kbd>></kbd> | 비교문 - 이상 | <kbd>></kbd>+<kbd>=</kbd>

#### 코드 자동 완성

- 각 문법의 앞 글자를 따와 구성합니다.
- 특수한 경우(이전 키와 중복되는 경우 따위) <kbd>a</kbd>를 추가로 입력합니다.

키 | 이름 | 동작
-- | -- | --
<kbd>caps lock</kbd>+<kbd>f</kbd> | for | for ()
<kbd>caps lock</kbd>+<kbd>b</kbd> | break | break;
<kbd>caps lock</kbd>+<kbd>e</kbd> | else | "else "
<kbd>caps lock</kbd>+<kbd>w</kbd> | while | while ()
<kbd>caps lock</kbd>+<kbd>s</kbd> | switch | switch
<kbd>caps lock</kbd>+<kbd>a</kbd>+<kbd>t</kbd> | true | true
<kbd>caps lock</kbd>+<kbd>a</kbd>+<kbd>f</kbd> | false | false
<kbd>caps lock</kbd>+<kbd>r</kbd> | return | return;
<kbd>caps lock</kbd>+<kbd>c</kbd> | continue | continue;
<kbd>caps lock</kbd>+<kbd>u</kbd> | using | "using "
<kbd>caps lock</kbd>+<kbd>n</kbd> | namespace | "namespace "
<kbd>caps lock</kbd>+<kbd>p</kbd> | public | "public "
<kbd>caps lock</kbd>+<kbd>?</kbd> | ()? : ; | "?  :  ;
<kbd>caps lock</kbd>+<kbd>v</kbd> | void | "void "
<kbd>caps lock</kbd>+<kbd>a</kbd>+<kbd>p</kbd> | private | "private "
<kbd>caps lock</kbd>+<kbd>a</kbd>+<kbd>i</kbd> | if | if ()
<kbd>caps lock</kbd>+<kbd>a</kbd>+<kbd>c</kbd> | case : break | case : break;
<kbd>caps lock</kbd>+<kbd>1</kbd> | WriteLine | Console.WriteLine();
<kbd>caps lock</kbd>+<kbd>2</kbd> | Write | Console.Write();
  
### MarkDown

### Mark - Mermaid


<br>


### 참조

- [💻 개발자 키보드 ⌨️ 코딩 단축키 매크로 설정하기 (미니배열)](https://inpa.tistory.com/entry/%F0%9F%92%BB-%EC%BD%94%EB%94%A9%EC%9A%A9-%ED%82%A4%EB%B3%B4%EB%93%9C-%E2%8C%A8%EF%B8%8F-%EB%A7%A4%ED%81%AC%EB%A1%9C-%EC%84%A4%EC%A0%95%ED%95%98%EA%B8%B0)
