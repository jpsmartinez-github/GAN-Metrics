#!/bin/bash

VENV_PATH=.venv

# PyTorch (check https://pytorch.org/get-started/locally/ for compatibility)
pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 -f https://download.pytorch.org/whl/torch_stable.html

# Builders
pip install cython==0.29.21
pip install numpy==1.20.1

# Other dependencies
pip install cycler==0.10.0
pip install kiwisolver==1.3.1
pip install matplotlib==3.3.4
pip install Pillow==8.1.0
pip install POT==0.5.1
pip install pyparsing==2.4.7
pip install python-dateutil==2.8.1
pip install scipy==1.6.0
pip install six==1.15.0
pip install tqdm==4.19.6
