
# #########################
# CUSTOM STUFF
# ########################
# myct-cloud-helpers | helper tooly by cloud and tools team
# autoload -U +X bashcompinit && bashcompinit
#source /Users/niklaskappler/Projects/myct-cloud-helpers/cloud-helpers.sh
#export PATH=/Users/niklaskappler/Library/Python/3.8/bin:$PATH
source /Users/niklaskappler/Projects/myct-cloud-helpers/cloud-helpers.sh
export PATH=/Users/niklaskappler/Library/Python/3.8/bin:$PATH

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# myservices ui good mode
alias unlockUiMasterMode="export MYSERVICES_NPM_INSTALL_I_KNOW_WHAT_IM_DOING=1"
alias lockUiMasterMode="export MYSERVICES_NPM_INSTALL_I_KNOW_WHAT_IM_DOING=0"

export PATH="/Users/niklaskappler/Projects/mhp/dotfile/bin:$PATH"
