# ReSSL: Relational Self-Supervised Learning with Weak Augmentation

This repository contains PyTorch evaluation code, training code and pretrained models for ReSSL.

## Reproducing

To run the code, you probably need to change the Dataset setting (dataset/imagenet.py), and Pytorch DDP setting (util/dist_init.py) for your own server enviroments.

The distribued training of this code is base on slurm enviroments, we have provide the training scrips under the script folder.


We also provide the pretrained model for ResNet50 (We change the Linear evaluation setting to SwAV style so the performance can be slightly boosted)

|          |Arch | BatchSize | Epochs | Linear Eval | Linear Eval (Paper) | Download  |
|----------|:----:|:---:|:---:|:---:|:---:|:---:|
|  ReSSL | ResNet50 | 256 | 200 | 69.9 % | 69.6% | [ressl-200.pth](https://drive.google.com/file/d/16Ib4rvEvB_rdQThPxkoOb9wvCALzPTZd/view?usp=sharing) |

If you want to test the pretained model, please download the weights from the link above, and move it to the checkpoints folder (create one if you don't have .checkpoints/ directory). The evaluation scripts also has been provided in script/train.sh

