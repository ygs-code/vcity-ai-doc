---
sidebar_position: 2  # 菜单中的排序位置（1 表示第一个）
slug: /windows               # 文档访问路径（/ 表示首页）
sidebar_label: "Windows 平台"  # 左侧菜单显示的名称（自定义你想要的文字）
---
# 快速开始

## 技术支持

### 支持的平台

目前支持以下产品和环境：

- 所有 NVIDIA Kepler™ (K80) 及更新的 NVIDIA 数据中心（以前称为 NVIDIA Tesla®）GPU
- NVIDIA® NVSwitch™ 适用于 NVIDIA DGX™ A100、NVIDIA HGX™ A100 及更新的显卡。
- 所有NVIDIA Maxwell™及更新的非数据中心级GPU（例如NVIDIA® GeForce®或NVIDIA® Quadro®）
- CUDA® 7.5+ 和 NVIDIA 驱动程序 R450+
- 裸机和虚拟化（仅限完全直通）

### 支持的Linux发行版

| Linux 发行版               | x86_64 | aarch64 |
| -------------------------- | ------ | ------- |
| Amazon Linux 2023          | ✓     | ✓      |
| Azure Linux 3.0            | ✓     | ✓      |
| Debian 12                  | ✓     | ✓      |
| RHEL 8.y/Rocky Linux 8.y   | ✓     | ✓      |
| RHEL 9.y/Rocky Linux 9.y   | ✓     | ✓      |
| RHEL 10.y/Rocky Linux 10.y | ✓     | ✓      |
| SLES/OpenSUSE 15.y         | ✓     | ✓      |
| Ubuntu 22.04 LTS           | ✓     | ✓      |
| Ubuntu 24.04 LTS           | ✓     | ✓      |

### 支持的Windows发行版

Windows 10及以上

## Linux 安装

### 系统要求

确保您的环境满足这些要求对于容器、虚拟机和裸机解决方案都同样重要。尝试在不满足这些要求的环境中运行 DCGM 可能无法成功。

| 资源                     | 要求              |
| ------------------------ | ----------------- |
| 最小系统内存（主机 RAM） | 16GB 或以上       |
| 最低 CPU 核心数          | 大于等于 GPU 数量 |

### 安装docker

1.1 安装依赖

▶ Ubuntu

```
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release
```

▶ CentOS

```
sudo yum install -y yum-utils

```

1.2 添加 Docker 官方 GPG 密钥和仓库

▶ Ubuntu

```
sudo mkdir -p /etc/apt/keyrings


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \

  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \

  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
```

▶ CentOS

```
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

```

1.3 安装 Docker Engine

▶ Ubuntu

```
sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

```

▶ CentOS

```

sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

```

1.4 启动 Docker 并设置开机自启

```
sudo systemctl start docker

sudo systemctl enable docker

```

1.5 验证安装

```
sudo docker run hello-world 

```

### 安装客户端

2.1、下载安装

```
wget -O vcityai.tar.gz https://vcity.ai/static/file/prod-node-linux.tar.gz && tar -xzf vcityai.tar.gz


```

2.2、启动服务

```

cd vcityai

sudo ./install.sh
```

2.3、FAQ：

```
F: 错误: 未找到 docker compose 或 docker-compose，
请安装 Docker Compose 插件或旧版 docker-compose
```

```
Q:Check if Docker is installed correctly and the Docker version.
```

## Windows安装

### 打开 PowerShell

以 管理员身份 打开 PowerShell（右键开始菜单 → “Windows Terminal (管理员)”）

执行以下命令：

### 启用 WSL 功能

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

```

### 启用虚拟机平台

```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

```

### 重启电脑

```
shutdown /r /t 0
```

### 重新打开PowerShell

重启后，再次打开 PowerShell（管理员），设置 WSL 2 为默认版本：

### 设置WSL 版本

```
wsl --set-default-version 2
```

### 安装Docker Desktop

打开官网：https://www.docker.com/products/docker-desktop/

- 点击 Download for Windows
- 下载文件：Docker Desktop Installer.exe（约 500MB）
- Docker Desktop Installer.exe
- 按照向导操作：

  - 勾选 “Use WSL 2 instead of Hyper-V”（强烈推荐✅）
  - 勾选 “Install required Windows components for WSL 2”（如果未安装）
  - 点击 “OK” 开始安装
- 安装完成后，勾选 “Start Docker Desktop when you log in”，点击 “Close”

### 安装客户端

右键管理员方式执行 install.bat
