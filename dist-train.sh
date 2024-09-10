# On 104.171.200.62 (the master node)
python3 -m torch.distributed.launch \
--nproc_per_node=2 --nnodes=2 --node_rank=0 \
--master_addr=104.171.200.62 --master_port=1234 \
main.py \
--backend=nccl --use_syn --batch_size=8192 --arch=resnet152

# On 104.171.200.182 (the worker node)
# python3 -m torch.distributed.launch \
# --nproc_per_node=2 --nnodes=2 --node_rank=1 \
# --master_addr=104.171.200.62 --master_port=1234 \
# main.py \
# --backend=nccl --use_syn --batch_size=8192 --arch=resnet152