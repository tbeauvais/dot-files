#export PATH=/usr/local/bin:/bin:/opt/local/sbin:/usr/local/git/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH

export PATH=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin:/usr/local/bin:/bin:/opt/local/sbin:/usr/local/git/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH


export JRUBY_OPTS="--1.9 -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=10 -J-Djruby.compile.mode=FORCE -J-Xms1536m -J-Xmx1536m -J-XX:MaxPermSize=512m -J-server"

#export JRUBY_OPTS="--1.9 -J-Xms1536m -J-Xmx1536m -J-XX:MaxPermSize=512m -J-server"

# export JRUBY_OPTS="--1.9 -J-Dfile.encoding=UTF-8 -J-Xms1536m -J-Xmx1536m -J-XX:MaxPermSize=512m -J-server"
# export JRUBY_OPTS="--1.9 -J-Xdebug -J-Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n"

#export JRUBY_OPTS="--1.9 -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=10 -J-Djruby.compile.mode=FORCE -J-Xms1536m -J-Xmx1536m -J-XX:MaxPermSize=512m -J-server"


# Homebrew stuff.
export PATH=`brew --prefix`/bin:`brew --prefix`/sbin:~/bin:$PATH

# git bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi



__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)"
    if [ -n "$b" ]; then
        if [ -n "$1" ]; then
            printf "$1" "${b##refs/heads/}"
        else
            printf " (%s)" "${b##refs/heads/}"
        fi
    fi
}

export PS1='[\u[$(~/.rvm/bin/rvm-prompt)]:  \W$(__git_ps1 " (%s)")]\$ '
# export PS1=\\W\>
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
