0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

src="${0:h}/src"

# Recreate if needed
[[ $HOME/.cargo/bin/starship -nt ${src}/starship.zsh ]] && $HOME/.cargo/bin/starship init zsh --print-full-init > ${src}/starship.zsh	
[[ $HOME/.cargo/bin/zoxide -nt ${src}/zoxide.zsh ]] && $HOME/.cargo/bin/zoxide init --cmd a zsh > ${src}/zoxide.zsh

# Source
for FILE in ${src}/*~*.zwc; do
	source $FILE
done
