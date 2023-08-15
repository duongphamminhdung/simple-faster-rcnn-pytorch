
echo installing data
# wget https://drive.google.com/file/d/1xtpLsvMBfaw2pj8s4m5lf05i4aB0jmwj/view?usp=drive_link
# wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtest_06-Nov-2007.tar
# wget http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCdevkit_08-Jun-2007.tar

# tar xvf VOCtrainval_06-Nov-2007.tar
# tar xvf VOCtest_06-Nov-2007.tar
# tar xvf VOCdevkit_08-Jun-2007.tar
pip install gdown
gdown https://drive.google.com/uc?id=15IKfgjVQMU1Fllryv2f0KKi9qa8ejHl4
unzip VOCdevkit.zip

# install pytorch
echo conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch
conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch

# install other dependancy
echo pip install visdom scikit-image tqdm fire ipdb matplotlib torchnet
pip install visdom scikit-image tqdm fire ipdb matplotlib torchnet

# start visdom
echo nohup python -m visdom.server &
nohup python -m visdom.server &
