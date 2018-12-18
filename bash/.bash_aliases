
# Joey Fernau (c) 2017,2018

# Some example alias instructions
# If these are enabled they will be used instead of any instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
#
# Interactive operation...
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#
# Default to human readable figures
# alias df='df -h'
# alias du='du -h'
#
# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort

alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# alias ll='ls -l'                              # long list
# alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #


# Shortcuts for ssh sessions
alias linux='sshqclinux'                     # in ~/scripts
alias harv='sshqcharv'                       # in ~/scripts

alias chrome='/cygdrive/c/"Program Files (x86)"/Google/Chrome/Application/chrome.exe'

# Windows install of cmake to allow for Visual Studio meta building
alias cmakewin='/cygdrive/c/"Program Files"/CMake/bin/cmake.exe'
# Path to MSBuild 14.0 (2015) to build Visual Studio projects
alias msbuild14='/cygdrive/c/"Program Files (x86)"/MSBuild/14.0/Bin/MSBuild.exe'
# Path to MSBuild 11.0 (2012) to build Visual Studio projects
alias msbuild11='/cygdrive/c/"Program Files (x86)"/MSBuild/11.0/Bin/MSBuild.exe'

# Qualcomm shortcut for Chester testing
alias Chester='/home/fernau/docs/fern_harv_ws_tip/llvm/QA_Tools/Chester/Chester.exe'

# To start Windows programs from Cygwin:
alias start='cmd /c start'
