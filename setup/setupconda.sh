
# create conda env
conda create --name simp python=3.7
conda activate simp
# install pytorch
conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch

# install other dependancy
pip install visdom scikit-image tqdm fire ipdb matplotlib torchnet

# start visdom
nohup python -m visdom.server &