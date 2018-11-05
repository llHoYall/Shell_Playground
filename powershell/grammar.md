# Powershell Grammar

powershell script의 확장자는 `*.ps1` 이다.

## ToC

* [Comment](#Comment)
* [Variable](#Variable)
* [If](#If)
* [Switch](#Switch)
* [Function](#Function)

## Comment

```powershell
# single line comment

<#
  multi line comment
#>
```

## Variable

```powershell
$var = "powershell"
```

## If statement

```powershell
if (condition) {
  statement
}
elseif (condition) {
  statement
}
else {
  statement
}
```

#### conditions

* `-eq` : equal to
* `-ne` : not equal to
* `-ceq` : case sensitive equal to
* `-gt` : greater than
* `-ge` : greater than or equal to
* `-and` : AND
* `-or` : OR

## Switch statement

```powershell
switch (condition) {
  pattern { statement }
  pattern { statement }
  default { statement }
}
```

#### example

```powershell
switch ($condition) {
  {($_ -ceq "G") -or ($_ -ceq "Global")} {
    Write-Host "Global"
  }
  default {
    Write-Host "Fail"
  }
}
```

## Function Declaration

```powershell
function func_name {
  statement
}
```
