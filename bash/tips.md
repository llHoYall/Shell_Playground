# Bash Tips

## ToC

* [Exit](#ExitScript)
* [CLA](#ComandLineArgument)
* [CheckOS](#CheckOS)

## Exit Script

* `exit 0` : Exit script with 0.
* `exit 1` : Exit script with return value.
* `$?` : 이전에 실행한 명령의 exit code.

## Command Line Argument

* `$#` : Number of arguments include script.
* `$0` : Name of script
* `$#` : nth Arguments.

## Check OS

```bash
# MAC (OS X)
if [ "$(uname -s)" == "Darwin" ]

# Linux (Mint)
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]

# Windows (Powershell)
if [ "$(expr substr $(uname -s) 1 7)" == "MSYS_NT" ]
```
