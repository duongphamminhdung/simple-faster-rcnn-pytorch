echo config git
git config --global user.email "duongphamminhdung@gmail.com"
git config --global user.name "duongphamminhdung"

echo pip install -q condacolab
pip install -q condacolab

echo installing nvtop
apt install nvtop

echo installing anaconda
python iconda.py

echo installing data
# wget https://drive.google.com/file/d/1xtpLsvMBfaw2pj8s4m5lf05i4aB0jmwj/view?usp=drive_link
# wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar
# wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCdevkit_08-Jun-2007.tar

# tar xvf VOCtrainval_06-Nov-2007.tar
# tar xvf VOCtest_06-Nov-2007.tar
# tar xvf VOCdevkit_08-Jun-2007.tar
pip install gdown
gdown https://drive.google.com/uc?id=1xtpLsvMBfaw2pj8s4m5lf05i4aB0jmwj
unzip VOCdevkit.zip


echo init conda
conda init

echo conda create --name simp python=3.7
conda create --name simp python=3.7

tmux