
# create conda env
echo creating environment
conda create --name simp python=3.7

echo activate environment "simp"
conda activate simp

# install pytorch
echo installing pytorch
conda install pytorch==1.5.1 torchvision==0.6.1 cudatoolkit=10.2 -c pytorch

# install other dependancy
echo installing other dependacy
pip install visdom scikit-image tqdm fire ipdb matplotlib torchnet

# start visdom
echo startvisdomy
nohup python -m visdom.server &
