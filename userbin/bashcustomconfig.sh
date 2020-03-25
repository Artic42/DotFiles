#Run neofetch to visualize the computer info
neofetch

#Set powerline as part of the prompt
function _update_ps1() {
	PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
	PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#At the bin folder on the home deirectory to the PATH, all the standard script are in this folder this way is esaier to run them
export PATH=$PATH:~/bin

