# Go to home directory
cd ~

CONDA_VERSION=Anaconda3-2018.12-MacOSX-x86_64.sh
# You can change what anaconda version you want at
# https://repo.continuum.io/archive/
curl -Ok https://repo.continuum.io/archive/$CONDA_VERSION
bash $CONDA_VERSION -b -p ~/anaconda
rm $CONDA_VERSION
echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.zshrc

# Refresh basically
source .zshrc

conda update conda
conda install tensorflow
