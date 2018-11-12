# Powershell Grammar

bash script의 확장자는 `*.sh` 이다. Shebang으로 `#!/bin/bash`를 사용한다.

## ToC

* [Comment](#Comment)
* [Variable](#Variable)
* [Input/Output](#Input/Output)
* [If](#If)
* [Case](#Case)
* [While](#While)
* [Function](#Function)

## Comment

```bash
# single line comment
```

## Variable

Datatype은 없으며, 숫자, 문자 등을 담을 수 있다.

`=` 기호 양 옆에 공백이 없어야 한다.

```bash
var=11
```

## Input/Output

```bash
read var
echo "var: $var"
```

## If statement

```bash
if condition; then
  statement
elif condition; then
  statement
else
  statement
fi
```

#### conditions

* `[ STRING1 = STRING2]` : True if same
* `[ -d FILE ]` : True if FILE exists and is a directory
* `[ -z STRING ]` : True if the length of string is zero
* `[ ! EXPR ]` : True if EXPR is false
* `[ EXPR1 -o EXPR2 ]` : OR operation

## Case statement

```bash
case condition in
  pattern)
    statement
    ;;
  pattern)
    statement
    ;;
  *)
    statement
esac
```

## While statement

```bash
while condition; do
  statement
done
```

## Function Declaration

```bash
function func_name() {
  statement
}

func_name
```
