#!/usr/bin/zsh

chmod +x ~/.scripts/Miniconda3-latest-MacOSX-arm64.sh \
sh ~/.scripts/Miniconda3-latest-MacOSX-arm64.sh \
source ~/miniconda/bin/activate

conda install -c apple tensorflow-deps
python -m pip install tensorflow-macos
python -m pip install tensorflow-metal