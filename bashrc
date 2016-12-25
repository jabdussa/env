if [ -f /etc/bashrc ] ; then  
   . /etc/bashrc
fi


# # # # # # # # # # # #
# #   CLASSIC
# # # # # # # # # # # #

set -o vi

export PS1="\n\n[\u@\h:\w]\n\n\n> "

alias l="ls -F"

alias ll="ls -lFh"

alias c="clear"

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

vibash(){
  vi ~/.bashrc
}


# # # # # # # # # # # #
# #   ENV
# # # # # # # # # # # #


b.push(){
	CDIR="`pwd`"
	cd ~/env
	git add --all
	git commit -m "`date`"
	git push
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
# #   #go
# # # # # # # # # # # #

alias 1="pushd ~/game_of_life"
