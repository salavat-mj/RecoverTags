## bash

# conda install
MINICONDA=Miniconda3-4.5.4-Linux-x86_64.sh
wget https://repo.continuum.io/$MINICONDA -O miniconda.sh
chmod +x miniconda.sh
./miniconda.sh  -b -f -p ./conda/

# conda
source ./conda/bin/activate
pip install -r requirements.txt

# envirovent
conda env create -f environment.yml # python=3.5 1.14.2
source activate semantic
conda install python=3.5
python -c 'import torch; print(torch.version.cuda)'

# demo
CHECK=./real_weights/black.pth
DEMO=./Image_Folder
RESULT=./result
GLOVE=./glove.6B.50d.txt
python demo.py --tag=sport --checkpoint_path=$CHECK --demo_path=$DEMO --result_path=$RESULT --glove_path=$GLOVE
