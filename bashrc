if [ -f /etc/bashrc ] ; then  
   . /etc/bashrc
fi


# # # # # # # # # # # #
# #   PATH
# # # # # # # # # # # #

export PATH=~/install:$PATH
export PATH=/opt/local/sbt/latest/bin:$PATH
export PATH=/opt/scala/2.11.2/bin:$PATH



# # # # # # # # # # # #
# #   CLASSIC
# # # # # # # # # # # #

set -o vi

BAR="========================="
export PS1="\n\n\n  $BAR \n  date: \d \t \n  step: \#  \n  user: \u \n  host: \h \n  dir:  \w \n  $BAR \n\n\n  => "


alias c="clear"

alias l="ls -F"

alias ll="ls -lFh"

alias pd="pushd $1"

alias po="popd"

alias 2="pushd $1"

alias 2books="pushd ~/books"


h(){

	if [ -z "$1" ] ; then
      history 
  else
     history | grep "$1" | grep -v "grep"

  fi

}


now() {
   NOW="`date '+%Y%h%m_%H-%M%p'`"
   echo 
   echo $NOW
   echo
}



# # # # # # # # # # # #
# #   SCREEN
# # # # # # # # # # # #

alias jl="screen -ls"

alias j1="screen -d -R jab1"

alias j2="screen -d -R jab2"

alias j3="screen -d -R jab3"




# # # # # # # # # # # #
# #   ENV
# # # # # # # # # # # #

alias b=". ~/env/bashrc"

alias vib="vi ~/env/bashrc"
alias viv="vi ~/env/vimrc"


b.push(){
	CDIR="`pwd`"
	cd ~/env
	git add --all
	git commit -m "`date`"
	git push
	cd $CDIR 
}

b.pull(){
	CDIR="`pwd`"
	cd ~/env
	git pull 
	cd $CDIR 
}


b.merge(){
	CDIR="`pwd`"
	cd ~/bashrc
	git add --all
	git commit -m "local/merge `date`"
	git pull
	#cd $CDIR 
}




# # # # # # # # # # # #
# #   GIT
# # # # # # # # # # # #

alias gb="git branch"
alias git.b="gb"
alias gitb="gb"

 
g() {
  git add --all
  git commit -m "`date`"
  git push
}

alias gp="g"

gcb() {
  git checkout -b $1
}

alias gb="git branch"
alias gc="git checkout"

alias gw="git config -l"
alias git.who="gw"
alias git.w="gw"



# # # # # # # # # # # #
# #   SBT 
# # # # # # # # # # # #

alias s="sbt clean ; sbt compile"

alias sr="sbt clean ; sbt compile; sbt run"

alias r="sbt run"



# # # # # # # # # # # #
# #   GO
# # # # # # # # # # # #

alias 1="pushd ~/game_of_life"

alias jab1="ssh jabdussa1@jabdussa.com"

jab1.scp(){
	scp "$1" jabdussa1@jabdussa.com:~/z
}


