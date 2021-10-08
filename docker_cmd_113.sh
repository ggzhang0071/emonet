
#img="nvcr.io/nvidia/pytorch:21.03-py3"
img=" 520713654638.dkr.ecr.us-east-1.amazonaws.com/sagemaker-pytorch:1.2.0-cpu-py3"
#img="padim:0.1"


docker run --gpus all  --privileged=true   --workdir /git --name "emonet"  -e DISPLAY --ipc=host -d --rm  -p 6604:4452  \
-v /mnt/data/git/emonet:/git/emonet \
 -v /mnt/data/git/datasets:/git/datasets \
 $img sleep infinity

docker exec -it emonet /bin/bash

pip list  |grep "pytorch"
