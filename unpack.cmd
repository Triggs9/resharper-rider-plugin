:; SCRIPT_DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)
:; ${SCRIPT_DIR}/install.cmd
:; dotnet new resharper-rider-plugin --force --name TestPlugin "$@"
:; exit $?

call %~dp0install.cmd
dotnet new resharper-rider-plugin --force --name TestPlugin %*
