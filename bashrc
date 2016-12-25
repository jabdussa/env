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
alias gitw="gw"


# # # # # # # # # # # #
# #   GIT - END
# # # # # # # # # # # #



# # # # # # # # # # # #
# #   SBT 
# # # # # # # # # # # #

alias s="sbt clean ; sbt compile"

alias sr="sbt clean ; sbt compile; sbt run"

alias r="sbt run"


# # # # # # # # # # # #
# #   2 PUSH OR NOT TO PUSH  ;)
# # # # # # # # # # # #


alias 2b="pushd ~/bashrc"
alias 2bb="pushd ~/Dropbox/_b_b_/new"
alias pd="2b"
alias p="2b"
alias po="popd"



# # # # # # # # # # # #
# #   #go
# # # # # # # # # # # #

alias 1="pushd ~/game_of_life"
