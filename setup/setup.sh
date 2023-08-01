echo config git
git config --global user.email "duongphamminhdung@gmail.com"
git config --global user.name "duongphamminhdung"

echo installing condacolab
pip install -q condacolab

echo installing nvtop
apt install nvtop

echo installing anaconda
python iconda.py

echo installing data
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtrainval_06-Nov-2007.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCdevkit_08-Jun-2007.tar

tar xvf VOCtrainval_06-Nov-2007.tar
tar xvf VOCtest_06-Nov-2007.tar
tar xvf VOCdevkit_08-Jun-2007.tar

echo init conda
conda init

