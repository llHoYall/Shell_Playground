# Command-Line Arguments

Command-Line 인자를 다루는 방법이다.

## 실행

> $ ./cmd-args.sh [-a] [-b \<string\>] \<directory\>
>
> $ ./cmd-args.sh .
>
> $ ./cmd-args.sh -a .
>
> $ ./cmd-args.sh -b "===TEST===" .
>
> $ ./cmd-args.sh -ab "===TEST===" .

## 설명

### getopts

명령행 인자를 처리하기 위한 명령이다. 문법은 다음과 같다.

`getopts optstring name [arg]`

  * optstring: 처리할 인자 리스트이다. 추가 인자를 갖을 경우 ':'을 붙여준다.
  * name: 스크립트 내에서 사용할 변수 이름이다.

### shift

getopts 명령어로 옵션 해석이 끝난 다음에 셸 변수 OPTIND는 다음에 처리할 위치 파라미터 번호를 나타낸다.

여기서 1을 뺀  값으로 shift 명령어를 실행하면 옵션 부분을 무시하고 명령행 인수를 순서대로 $1, $2, $3로 다룰 수 있다.

`shift $(expr $OPTIND - 1)`

즉, '$1'은 <directory>에 해당한다.

### --

명령행에서 '--' 뒤에는 더이상 인자가 존재하지 않음을 명시한다.

예를 들어, `$ ls -l -- -a` 와 같이 실행하면 '-l'은 인자로 취급되지만, '-a'는 인자로 취급되지 않고 파일명 혹은 디렉토리명으로 취급된다.
