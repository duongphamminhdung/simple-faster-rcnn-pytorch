import numpy as np
import cv2


import os
import torch as t
from utils.config import opt
from model import FasterRCNNVGG16
from trainer import FasterRCNNTrainer
from data.util import  read_image
from utils.vis_tool import vis_bbox
from utils import array_tool as at

faster_rcnn = FasterRCNNVGG16()
trainer = FasterRCNNTrainer(faster_rcnn).cuda()

trainer.load('/root/simple-faster-rcnn-pytorch/fasterrcnn_08150454_0.9858991106686046')

opt.caffe_pretrain=False # this model was trained from torchvision-pretrained model
num = 0
pth = '/root/simple-faster-rcnn-pytorch/setup/VOCdevkit/VOC2007/JPEGImages/'

for image_path in os.listdir(pth):
    img = read_image(os.path.join(pth, image_path))
    img_t = t.from_numpy(img)
    _bboxes, _labels, _scores = trainer.faster_rcnn.predict(img_t[None],visualize=True)
    # img = np.transpose(img.numpy(), (1, 2, 0))
    boxes = _bboxes[0].astype(int)
    scores = _scores[0].astype(int)
    img = cv2.cvtColor(np.transpose(img, (1, 2, 0)), cv2.COLOR_BGR2RGB)
    for i in range(len(boxes)):
        box = boxes[i]
        # print(box); break
        img = cv2.rectangle(img, (box[1], box[0]), (box[3], box[2]), (255, 0, 0), 2)
    
    # img = np.transpose(img, (2, 0, 1))
    cv2.imwrite('test_res/{}'.format(image_path), img)
    num += 1
    print(num, image_path)
    