
# create conda env
echo conda create --name simp python=3.7
conda create --name simp python=3.7

echo bash activate simp
bash activate simp

# install pytorch
echo conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch
conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch

# install other dependancy
echo pip install visdom scikit-image tqdm fire ipdb matplotlib torchnet
pip install visdom scikit-image tqdm fire ipdb matplotlib torchnet

# start visdom
echo nohup python -m visdom.server &
nohup python -m visdom.server &
