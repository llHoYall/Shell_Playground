# Powershell cmdlet

Powershell에서 사용할 수 있는 명령어들이다.

---

## ToC

* [Get-Command](#Get-Command)
* [Get-ExecutionPolicy](#Get-ExecutionPolicy)
* [Get-Help](#Get-Help)
* [Get-Host](#Get-Host)
* [Get-Location](#Get-Location)
* [Get-Service](#Get-Service)
* [Read-Host](#Read-Host)
* [Update-Help](#Update-Help)
* [Write-Host](#Write-Host)

---

## Get-Command

Gets all commands.

---

## Get-ExecutionPolicy

Gets the execution policies for the current session.

---

## Get-Help

Displays information about PowerShell commands and concepts.

#### Options

* `-Online` : Displays the online version of a help topic in the default Internet browser.

#### Example

```powershell
$ Get-Help <cmdlet>

# 개념 항목의 제목은 'About_'으로 시작한다. 개념 또는 언어 요소에 대한 도움말을 보여준다.
$ Get-Help About_<topic>
```

#### Alias

> help

---

## Get-Host

Gets an object that represents the current host program.

---

## Get-Location

Gets information about the current working location or a location stack.

---

## Get-Service

Gets the services on a local or remote computer.

---

## Read-Host

Reads a line of input from the console.

#### Example

```powershell
$input = Read-Host "Input: "
```

---

## Set-ExecutionPolicy

Changes the user preference for the Windows PowerShell execution policy.

#### Options

* `-ExecutionPolicy <ExecutionPolicy>`
	+ `Restricted` : Does not load configuration files or run scripts. Restricted is the default execution policy.
	+ `RemoteSigned` : Requires that all scripts and configuration files downloaded from the Internet be signed by a trusted publisher.
	+ `Bypass` : Nothing is blocked and there are no warnings or prompts.

---

## Update-Help

Downloads and installs the newest help files on your computer.

---

## Write-Host

Writes customized output to a host.

#### Options

* `-BackgroundColor <ConsoleColor>` : Specifies the background color. There is no default.
* `-ForegroundColor <ConsoleColor>` : Specifies the text color. There is no default.
	+ Black
	+ DarkBlue
	+ DarkGreen
	+ DarkCyan
	+ DarkRed
	+ DarkMagenta
	+ DarkYellow
	+ Gray
	+ DarkGray
	+ Blue
	+ Green
	+ Cyan
	+ Red
	+ Magenta
	+ Yellow
	+ White
* `-NoNewline` : The string representations of the input objects are concatenated to form the output. No spaces or newlines are inserted between the output strings.

#### Alias

> echo

---
