---
sidebar_position: 2  # 菜单中的排序位置（1 表示第一个）
slug: /windows               # 文档访问路径（/ 表示首页）
sidebar_label: "Windows platforms"  # 左侧菜单显示的名称（自定义你想要的文字）
---
# Quick Start

## Technical Support Supported Platforms

### Supported platforms

Currently supports the following products and environments:

- All NVIDIA Kepler™ (K80) and newer NVIDIA Data Center GPUs (formerly known as NVIDIA Tesla®)
- NVIDIA® NVSwitch™ for NVIDIA DGX™ A100, NVIDIA HGX™ A100, and newer GPUs.
- All NVIDIA Maxwell™ and newer non-data-center GPUs (e.g., NVIDIA® GeForce® or NVIDIA® Quadro®)
- CUDA® 7.5+ and NVIDIA driver R450+
- Bare metal and virtualization (full passthrough only)

### Supported Linux Distributions

| Linux Distribution         | x86_64 | aarch64 |
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

### Supported Windows Distributions

Windows 10 and above

## Linux Installation

### System Requirements

Ensure your environment meets these requirements—these apply equally to containerized, virtual machine, and bare-metal deployments. Attempting to run DCGM in an environment that does not meet these requirements may fail.

| Resource                         | Requirement                                 |
| -------------------------------- | ------------------------------------------- |
| Minimum system memory (host RAM) | 16 GB or more                               |
| Minimum CPU cores                | Greater than or equal to the number of GPUs |

### Install Docker

1.1 Install Dependencies

▶ Ubuntu

```
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release
```

▶ CentOS

```
sudo yum install -y yum-utils

```

1.2 Add Docker Official GPG Key and Repository

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

1.3  Install Docker Engine

▶ Ubuntu

```
sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

```

▶ CentOS

```

sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

```

1.4 Start Docker and Enable Auto-start on Boot

```
sudo systemctl start docker

sudo systemctl enable docker

```

1.5 Verify Installation

```
sudo docker run hello-world 

```

### Install Client

2.1、 Download and Install

```
wget -O vcityai.tar.gz https://vcity.ai/static/file/prod-node-linux.tar.gz && tar -xzf vcityai.tar.gz



```

2.2、Start Service

```

cd vcityai

sudo ./install.sh
```

2.3、FAQ：

```
Q: Error: docker compose or docker-compose not found. Please install the Docker Compose plugin or legacy docker-compose.
```

```
A: Check if Docker is installed correctly and verify the Docker version.
```

## Windows Installation

### Open PowerShell as Administrator

Right-click the Start menu → “Windows Terminal (Admin)”

Run the following commands in PowerShell:

### Enable WSL Feature

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

```

### Enable Virtual Machine Platform

```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

```

### Restart Computer

```
shutdown /r /t 0
```

### After Reboot

Reopen PowerShell as Administrator, then set WSL 2 as the default version:

### Set WSL Version

```
wsl --set-default-version 2
```

### Install Docker Desktop

- Go to the official website: https://www.docker.com/products/docker-desktop/
- Click Download for Windows
- Download the installer: Docker Desktop Installer.exe（约 500MB）
- Double-click the downloaded  Docker Desktop Installer.exe
- Double-click the downloaded

  - ✅ Check “Use WSL 2 instead of Hyper-V” (strongly recommended)
  - ✅ Check “Install required Windows components for WSL 2” (if not already installed)
  - Click “OK” to begin installation
- After installation completes:

  - ✅ Check “Start Docker Desktop when you log in”
  - Click “Close”

### Install Client

Right-click and run install.bat as Administrator
