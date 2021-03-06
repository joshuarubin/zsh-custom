local fdir=$0:A:h/functions
fpath+=$fdir
autoload -Uz $fdir/*(:t)

path[1,0]="/snap/bin"
path[1,0]="$ZSH/bin"
path[1,0]="$HOME/bin"

if [[ "$OSTYPE" == darwin* ]]; then
  export ANDROID_HOME=/usr/local/opt/android-sdk
  path[1,0]="/Applications/VMware Fusion.app/Contents/Library"
else
  export ANDROID_HOME="$HOME/working/android-sdk-linux"
  path[1,0]="$HOME/working/android-sdk-linux/tools"
  path[1,0]="$HOME/working/android-sdk-linux/platform-tools"
fi

if [ -d /usr/local/cuda ]; then
  export CUDA_HOME=/usr/local/cuda
  export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
  path[1,0]="$CUDA_HOME/bin"
fi

path[1,0]="/usr/local/google-cloud-sdk/bin"
path[1,0]="$HOME/.cabal/bin"
path[1,0]="$HOME/.cargo/bin"

path=($^path(N))
path[1,0]="node_modules/.bin"
path[1,0]="bin"
