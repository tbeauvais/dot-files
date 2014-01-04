#export JAVA_HOME=/Library/Java/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk/Contents/Home


#export PATH=/usr/local/bin:/bin:/opt/local/sbin:/usr/local/git/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH

#export PATH=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin:/usr/local/bin:/bin:/opt/local/sbin:/usr/local/git/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH

export PATH=/usr/local/bin:/bin:/opt/local/sbin:/usr/local/git/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:$JAVA_HOME/bin:$PATH:~/jmeter/apache-jmeter-2.10/bin

# To add JRuby profiling (--profile.api -J-Djruby.profile.max.methods=10000000)
# export JRUBY_OPTS="-J-Djruby.jit.background=false -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=5 -J-Djruby.compile.mode=JIT -J-Xms3584m -J-Xmx3584m -J-XX:MaxPermSize=512m -J-XX:MaxDirectMemorySize=256M -J-XX:+UseG1GC -J-XX:+HeapDumpOnOutOfMemoryError -J-XX:HeapDumpPath=/opt/cc/logs -J-server --profile.api -J-Djruby.profile.max.methods=10000000"

# Use for faster spec runs
#export JRUBY_OPTS="-J-Djruby.jit.background=true -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=100 -J-Djruby.compile.mode=JIT -J-Xms3584m -J-Xmx3584m -J-XX:MaxPermSize=512m -J-XX:MaxDirectMemorySize=256M -J-XX:+HeapDumpOnOutOfMemoryError -J-XX:HeapDumpPath=/opt/cc/logs -J-server -J-Djruby.compile.invokedynamic=false"

export JRUBY_OPTS="-J-Djruby.jit.background=false -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=5 -J-Djruby.compile.mode=JIT -J-Xms3584m -J-Xmx3584m -J-XX:MaxPermSize=512m -J-XX:MaxDirectMemorySize=256M -J-XX:+UseG1GC -J-XX:+HeapDumpOnOutOfMemoryError -J-XX:HeapDumpPath=/opt/cc/logs -J-server"

# prod memory
#export JRUBY_OPTS="-J-Djruby.jit.background=false -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=5 -J-Djruby.compile.mode=JIT -J-Xms5120m -J-Xmx5120m -J-XX:MaxPermSize=576m -J-XX:MaxDirectMemorySize=256M -J-XX:CMSInitiatingOccupancyFraction=70 -J-XX:+UseG1GC -J-XX:+HeapDumpOnOutOfMemoryError -J-XX:HeapDumpPath=/opt/cc/logs -J-server"

# custom GC Time
#export JRUBY_OPTS="-J-Djruby.jit.background=false -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=5 -J-Djruby.compile.mode=JIT -J-Xms5120m -J-Xmx5120m -J-XX:MaxPermSize=576m -J-XX:MaxDirectMemorySize=256M -J-XX:CMSInitiatingOccupancyFraction=70 -J-XX:+UseG1GC -J-XX:+HeapDumpOnOutOfMemoryError -J-XX:HeapDumpPath=/opt/cc/logs -J-server -J-XX:GCTimeRatio=19 -J-XX:MaxGCPauseMillis=75"



#export JRUBY_OPTS="-J-Djruby.jit.background=false -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=5 -J-Djruby.compile.mode=JIT -J-Xms3584m -J-Xmx3584m -J-XX:MaxPermSize=512m -J-XX:MaxDirectMemorySize=256M -J-XX:CMSInitiatingOccupancyFraction=70 -J-XX:+UseG1GC -J-XX:+HeapDumpOnOutOfMemoryError -J-XX:HeapDumpPath=/opt/cc/logs -J-server"


# -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/opt/cc/logs/contacts-`date +DATE: %m-%d-%y%nTIME:%H:%M:%S`-pid$$.hprof"

#export JRUBY_OPTS="--1.9 -J-Xms1536m -J-Xmx1536m -J-XX:MaxPermSize=512m -J-server"

# export JRUBY_OPTS="--1.9 -J-Dfile.encoding=UTF-8 -J-Xms1536m -J-Xmx1536m -J-XX:MaxPermSize=512m -J-server"
# export JRUBY_OPTS="--1.9 -J-Xdebug -J-Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n"

#export JRUBY_OPTS="--1.9 -J-Dfile.encoding=UTF-8 -J-Djruby.jit.threshold=10 -J-Djruby.compile.mode=FORCE -J-Xms1536m -J-Xmx1536m -J-XX:MaxPermSize=512m -J-server"

alias pryr='pry -r ./config/environment'
alias md='mkdir'
alias core='cd ~/dev/contacts-core'

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


#export TORQUEBOX_HOME=/Users/tbeauvais/.rvm/gems/jruby-1.7.4/gems/torquebox-server-2.3.2-java
#export TORQUEBOX_HOME=/Users/tbeauvais/.rvm/gems/jruby-1.7.2/gems/torquebox-server-2.3.0-java
export TORQUEBOX_HOME=/Users/tbeauvais/.rvm/gems/jruby-1.7.4/gems/torquebox-server-3.0.0-java

source ~/.bashrc
