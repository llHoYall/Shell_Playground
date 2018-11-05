# Powershell Tips

## ToC

* [Exit](#ExitScript)
* [CLA](#ComandLineArgument)
* [GetPath](#GetPath)

## Exit Script

* `Exit` : Exit without code.
* `Exit(1)` : Exit with code.
* `$LastExitCode` : 이전에 실행한 명령의 exit code.

## Command Line Argument

* `$Args` : Arguments list.
* `$Args.Count` : Number of arguments exclude script.
* `$Args[0]` : 1st Arguments.

## Get Path

* `$Pwd.Path` : path of caller.
* `$PSScriptRoot` : path of script file.
