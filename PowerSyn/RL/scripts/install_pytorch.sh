#!/bin/bash

echo "=== 开始安装PyTorch和相关库 ==="

# 加载conda环境配置
source "$(conda info --base)/etc/profile.d/conda.sh"

# 确保环境存在并激活
conda activate rlgym || {
    echo "错误: 无法激活rlgym环境"
    exit 1
}

# 1. 安装CUDA版本的PyTorch（强制指定CUDA，避免歧义）
echo "安装PyTorch 1.10.0 + CUDA 11.1"
conda install -y pytorch==1.10.0 torchvision==0.11.0 torchaudio==0.10.0 cudatoolkit=11.1 \
    -c pytorch -c conda-forge  # 优先用pytorch源，conda-forge补充依赖

# 2. 验证PyTorch是否已启用CUDA（这一步很重要，提前确认，避免后续白做）
echo "验证PyTorch CUDA状态（安装后）："
python -c "import torch; print(f'PyTorch版本: {torch.__version__}'); print(f'CUDA可用: {torch.cuda.is_available()}. 若为False，需检查CUDA安装')" || {
    echo "错误: PyTorch未正确启用CUDA，终止安装"
    exit 1
}

# 3. 用pip安装与CUDA 11.1匹配的PyG组件（避免conda依赖冲突）
# 注意：PyG的组件版本必须与PyTorch版本（1.10.0）和CUDA版本（11.1）严格匹配
echo "安装PyTorch Geometric套件（CUDA 11.1版本）"
pip install torch-scatter==2.0.9 -f https://data.pyg.org/whl/torch-1.10.0+cu111.html
pip install torch-sparse==0.6.13 -f https://data.pyg.org/whl/torch-1.10.0+cu111.html
pip install torch-cluster==1.6.0 -f https://data.pyg.org/whl/torch-1.10.0+cu111.html
pip install torch-spline-conv==1.2.1 -f https://data.pyg.org/whl/torch-1.10.0+cu111.html
pip install torch-geometric==2.0.2  # 最后安装PyG主包

# 4. 安装gcc（版本保持11.2.0，确保编译兼容性）
conda install -c conda-forge -y gcc=11.2.0 gxx=11.2.0 libgcc-ng=11.2.0 libgomp=11.2.0

# 5. 安装mpi4py
echo "安装mpi4py"
conda install -c conda-forge -y mpi4py

# 最终验证
echo "验证安装结果:"
python -c "import torch; print(f'PyTorch版本: {torch.__version__}'); print(f'CUDA可用: {torch.cuda.is_available()}')"
python -c "import torch_geometric; print(f'PyG版本: {torch_geometric.__version__}')"
python -c "import mpi4py; print(f'mpi4py版本: {mpi4py.__version__}')"

echo "=== 安装完成 ==="