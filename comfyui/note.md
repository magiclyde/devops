# ComfyUI

## 第一步：创建 conda 环境

```bash
conda create -n comfyui python=3.11 -y
conda activate comfyui
```

## 第二步：克隆 ComfyUI

```bash
git clone https://github.com/comfyanonymous/ComfyUI
cd ComfyUI
```

## 第三步：安装 PyTorch（关键！先装 PyTorch，再装其他依赖）

这一步需要根据你的硬件情况选择： 

- 如果有 NVIDIA GPU：

```bash
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y
```

- 如果只有 CPU（或 AMD GPU）：

```bash
conda install pytorch torchvision torchaudio cpuonly -c pytorch -y
```

- 如果是 Mac（Apple Silicon）：

```bash
conda install pytorch torchvision torchaudio -c pytorch -y
```

> ⚠️ 先装 PyTorch 再装 requirements.txt 是为了让 conda 管理 CUDA 版本，避免 pip 装错版本。


## 第四步：安装其余依赖

pip install -r requirements.txt

## 第五步：启动 ComfyUI

python main.py --port 8000

--- 

## 日常使用（每次启动）

```bash
conda activate comfyui
cd ComfyUI
python main.py --port 8000
```

## 补充：确认环境是否正确


```bash
# 确认 Python 版本
python --version   # 应显示 Python 3.11.x

# 确认 PyTorch 和 CUDA 是否正常
python -c "import torch; print(torch.__version__); print(torch.cuda.is_available())"

```
