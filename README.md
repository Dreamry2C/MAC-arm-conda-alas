# MAC ARM Conda ALAS

> [!NOTE]
> 本文默认您熟练掌握 CD 命令，并能链接 Github，且熟练掌握国内源设置

> [!TIP]
> 如果遇到下载问题，请自行设置代理或者使用国内源安装

在 Mac ARM 中使用 Conda 安装与配置 AzurLaneAutoScript 的指南

---

> [!NOTE]
> HomeBrew 是 macOS 的包管理器

## 1. 安装 HomeBrew

1. 打开**终端（Terminal）**

2. 在终端中运行下列命令安装 HomeBrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

> [!IMPORTANT]
> macOS 中默认的环境变量是 .zshrc，本文使用 .bash_profile

3. 配置环境变量，在终端中逐行运行下列命令

```bash
# 创建 .bash_profile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile

# 添加环境变量
eval "$(/opt/homebrew/bin/brew shellenv)"

# 激活环境变量
source ~/.bash_profile
```

4. 验证安装

```bash
brew --version
```

---

> [!NOTE]
> Git 和 Adb 是 ALAS 运行所需工具

## 2. 使用 HomeBrew 安装 Git 和 Adb

在终端中运行下列命令

```bash
brew install git android-platform-tools
```

---

> [!NOTE]
> Miniforge 是 conda 环境的轻量级发行版

## 3. 安装 Miniforge

1. 点击[Miniforge3](https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh)，下载安装包

2. 运行安装脚本，根据提示，一路输入回车，待弹出 `yes or no` 后再输入 `yes` 完成安装

```bash
# 进入下载目录
cd downloads
# 运行安装脚本
bash Miniforge3-MacOSX-arm64.sh
```

3. 验证安装

```bash
conda --version
```

> [!TIP]
> 在步骤 1.中已执行过 source ~/.bash_profile，一般无需再次配置环境变量

---

## 4. 下载 AzurLaneAutoScript

1. 使用 Git 拉取 ALAS

```bash
git clone https://github.com/LmeSzinc/AzurLaneAutoScript/
```

2. **切换到 ALAS 目录**

```bash
cd AzurLaneAutoScript
```

---

> [!NOTE]
> environment.yml 定义了 ALAS 的虚拟环境

## 5. 创建并配置 environment.yml 文件

1. 在终端中输入下列命令为 ALAS 目录下新建名为 `environment.yml` 的文件

```bash
touch environment.yml
```

- 或从本仓库中下载 [environment.yml](./environment.yml) 文件，后放置到 ALAS 目录下

<details>
<summary>
2. 打开文件 `environment.yml` 填入，被折叠的内容
</summary>

```yaml
name: alas
channels:
  - anaconda
  - conda-forge
dependencies:
  - _mutex_mxnet=0.0.50=openblas
  - aiofiles=22.1.0=py38hca03da5_0
  - anyio=1.3.1=py_0
  - asgiref=3.5.2=py38hca03da5_0
  - async_generator=1.10=pyhd3eb1b0_0
  - attrs=23.1.0=py38hca03da5_0
  - av=10.0.0=py38h846960b_3
  - blas=1.0=openblas
  - brotli-python=1.0.9=py38hc377ac9_7
  - bzip2=1.0.8=h93a5062_5
  - c-ares=1.19.1=h80987f9_0
  - ca-certificates=2024.2.2=hf0a4a13_0
  - cairo=1.16.0=h302bd0f_5
  - certifi=2024.2.2=pyhd8ed1ab_0
  - cffi=1.16.0=py38h80987f9_0
  - charset-normalizer=2.0.4=pyhd3eb1b0_0
  - click=8.1.7=py38hca03da5_0
  - colorama=0.4.6=py38hca03da5_0
  - commonmark=0.9.1=pyhd3eb1b0_0
  - cryptography=41.0.3=py38hd4332d6_0
  - curio=1.4=pyhd3eb1b0_0
  - cyrus-sasl=2.1.28=h9131b1a_1
  - dataclasses=0.8=pyh6d0b6a4_7
  - eigen=3.3.7=h525c30c_1
  - exceptiongroup=1.0.4=py38hca03da5_0
  - expat=2.5.0=h313beb8_0
  - ffmpeg=5.1.2=gpl_hf318d42_106
  - font-ttf-dejavu-sans-mono=2.37=hd3eb1b0_0
  - font-ttf-inconsolata=2.001=hcb22688_0
  - font-ttf-source-code-pro=2.030=hd3eb1b0_0
  - font-ttf-ubuntu=0.83=h8b1ccd4_0
  - fontconfig=2.14.1=hee714a5_2
  - fonts-anaconda=1=h8fa9717_0
  - fonts-conda-ecosystem=1=hd3eb1b0_0
  - freetype=2.12.1=h1192e45_0
  - future=0.18.3=py38hca03da5_0
  - gettext=0.22.5=h8fbad5d_2
  - gettext-tools=0.22.5=h8fbad5d_2
  - giflib=5.2.1=h80987f9_3
  - glib=2.69.1=h514c7bf_2
  - gmp=6.2.1=hc377ac9_3
  - gnutls=3.7.9=hd26332c_0
  - graphite2=1.3.14=hc377ac9_1
  - gst-plugins-base=1.14.1=h313beb8_1
  - gstreamer=1.14.1=h80987f9_1
  - h11=0.12.0=pyhd3eb1b0_0
  - harfbuzz=4.3.0=he9eebac_1
  - hdf5=1.12.1=h05c076b_3
  - icu=68.1=hc377ac9_0
  - idna=3.4=py38hca03da5_0
  - imageio=2.27.0=pyh24c5eb1_0
  - importlib-metadata=6.0.0=py38hca03da5_0
  - inflection=0.5.1=py38hca03da5_0
  - jellyfish=0.11.2=py38hd0c8013_0
  - jpeg=9e=h80987f9_1
  - krb5=1.20.1=hf3e1bf2_1
  - lame=3.100=h1a28f6b_0
  - lcms2=2.12=hba8e193_0
  - lerc=3.0=hc377ac9_0
  - libasprintf=0.22.5=h8fbad5d_2
  - libasprintf-devel=0.22.5=h8fbad5d_2
  - libblas=3.9.0=22_osxarm64_openblas
  - libcblas=3.9.0=22_osxarm64_openblas
  - libclang=14.0.6=default_h1b80db6_1
  - libclang13=14.0.6=default_h24352ff_1
  - libcurl=7.88.1=h3e2b118_2
  - libcxx=16.0.6=h4653b0c_0
  - libdeflate=1.17=h80987f9_1
  - libedit=3.1.20221030=h80987f9_0
  - libev=4.33=h1a28f6b_1
  - libffi=3.4.2=h3422bc3_5
  - libgettextpo=0.22.5=h8fbad5d_2
  - libgettextpo-devel=0.22.5=h8fbad5d_2
  - libgfortran=5.0.0=13_2_0_hd922786_3
  - libgfortran5=13.2.0=hf226fd6_3
  - libiconv=1.17=h0d3ecfb_2
  - libidn2=2.3.4=h80987f9_0
  - libintl=0.22.5=h8fbad5d_2
  - libintl-devel=0.22.5=h8fbad5d_2
  - liblapack=3.9.0=22_osxarm64_openblas
  - libllvm14=14.0.6=h7ec7a93_3
  - libmxnet=1.5.1=openblas_h34268ac_0
  - libnghttp2=1.57.0=h62f6fdd_0
  - libopenblas=0.3.27=openmp_h6c19121_0
  - libopus=1.3.1=h27ca646_1
  - libpng=1.6.39=h80987f9_0
  - libpq=12.15=h02f6b3c_1
  - libsodium=1.0.18=h1a28f6b_0
  - libsqlite=3.45.2=h091b4b1_0
  - libssh2=1.10.0=h02f6b3c_2
  - libtasn1=4.19.0=h80987f9_0
  - libtiff=4.5.1=h313beb8_0
  - libunistring=0.9.10=h1a28f6b_0
  - libvpx=1.11.0=hc377ac9_0
  - libwebp=1.3.2=ha3663a8_0
  - libwebp-base=1.3.2=h80987f9_0
  - libxml2=2.10.4=h372ba2a_0
  - libxslt=1.1.37=habca612_0
  - libzlib=1.2.13=h53f4e23_5
  - llvm-openmp=18.1.3=hcd81f8e_0
  - lz4=4.3.2=py38h80987f9_0
  - lz4-c=1.9.4=h313beb8_0
  - mxnet=1.5.1=hca03da5_0
  - mysql=5.7.24=ha71a6ea_2
  - ncurses=6.4.20240210=h078ce10_0
  - nettle=3.9.1=h40ed0f5_0
  - numpy=1.24.4=py38ha84db1f_0
  - opencv=4.6.0=py38h8794c10_2
  - openh264=2.3.1=hb7217d7_2
  - openjpeg=2.3.0=h7a6adac_2
  - openssl=3.2.1=h0d3ecfb_1
  - outcome=1.1.0=pyhd3eb1b0_0
  - p11-kit=0.24.1=h29577a5_0
  - pcre=8.45=hc377ac9_0
  - pillow=10.0.1=py38h3b245a6_0
  - pip=24.0=pyhd8ed1ab_0
  - pixman=0.40.0=h1a28f6b_0
  - platformdirs=3.10.0=py38hca03da5_0
  - pooch=1.7.0=py38hca03da5_0
  - prettytable=2.2.1=pyhd8ed1ab_0
  - psutil=5.9.3=py38hb991d35_1
  - py-mxnet=1.5.1=py38h3f2eb1c_0
  - pycparser=2.21=pyhd3eb1b0_0
  - pydantic=1.10.12=py38h80987f9_1
  - pygments=2.15.1=py38hca03da5_1
  - pyopenssl=23.2.0=py38hca03da5_0
  - pysocks=1.7.1=py38hca03da5_0
  - python=3.8.19=h2469fbe_0_cpython
  - python_abi=3.8=4_cp38
  - pyyaml=6.0.1=py38h80987f9_0
  - pyzmq=22.3.0=py38hc377ac9_2
  - qt-main=5.15.2=h9b4df51_9
  - qt-webengine=5.15.9=h2903aaf_7
  - qtwebkit=5.212=h19f419d_5
  - readline=8.2=h92ec313_1
  - requests=2.31.0=py38hca03da5_0
  - retrying=1.3.3=pyhd3eb1b0_2
  - rich=11.2.0=pyhd8ed1ab_0
  - scipy=1.10.1=py38h9d039d2_1
  - setuptools=69.2.0=pyhd8ed1ab_0
  - six=1.16.0=pyhd3eb1b0_1
  - sniffio=1.2.0=py38hca03da5_1
  - sortedcontainers=2.4.0=pyhd3eb1b0_0
  - sqlite=3.41.2=h80987f9_0
  - starlette=0.14.2=pyhd8ed1ab_0
  - svt-av1=1.4.1=h7ea286d_0
  - tk=8.6.13=h5083fa2_1
  - tqdm=4.65.0=py38h86d0a89_0
  - trio=0.22.0=py38hca03da5_0
  - typing-extensions=4.7.1=py38hca03da5_0
  - typing_extensions=4.7.1=py38hca03da5_0
  - urllib3=1.26.18=py38hca03da5_0
  - uvicorn=0.17.6=py38h10201cd_1
  - wcwidth=0.2.5=pyhd3eb1b0_0
  - websockets=12.0=py38h336bac9_0
  - wheel=0.43.0=pyhd8ed1ab_1
  - wrapt=1.13.1=py38hea4295b_0
  - x264=1!164.3095=h57fd34a_2
  - x265=3.5=hbc6ce65_3
  - xz=5.4.2=h80987f9_0
  - yaml=0.2.5=h1a28f6b_0
  - zeromq=4.3.4=hc377ac9_0
  - zipp=3.11.0=py38hca03da5_0
  - zlib=1.2.13=h53f4e23_5
  - zstd=1.5.5=hd90d995_0
  - pip:
      - adbutils==0.11.0
      - alas-webapp==0.3.7.0
      - apkutils2==1.0.0
      - cached-property==1.5.2
      - cigam==0.0.3
      - cnocr==1.2.3
      - contourpy==1.1.1
      - cycler==0.12.1
      - decorator==5.1.1
      - deprecated==1.2.14
      - deprecation==2.1.0
      - filelock==3.13.4
      - fonttools==4.51.0
      - gevent==24.2.1
      - gluoncv==0.6.0
      - greenlet==3.0.3
      - importlib-resources==6.4.0
      - kiwisolver==1.4.5
      - logzero==1.7.0
      - lxml==5.2.1
      - matplotlib==3.7.5
      - msgpack==1.0.8
      - onepush==1.3.0
      - packaging==20.9
      - portalocker==2.8.2
      - progress==1.6
      - py==1.11.0
      - pycryptodome==3.20.0
      - pyelftools==0.31
      - pyparsing==3.1.2
      - pypresence==4.2.1
      - python-dateutil==2.9.0.post0
      - pywebio==1.6.2
      - retry==0.9.2
      - tornado==6.4
      - ua-parser==0.18.0
      - uiautomator2==2.16.17
      - uiautomator2cache==0.3.0.1
      - user-agents==2.2.0
      - whichcraft==0.6.1
      - xmltodict==0.13.0
      - zerorpc==0.6.3
      - zope-event==5.0
      - zope-interface==6.2
```

</details>

---

> [!IMPORTANT]
> 如果部分依赖无法安装，请重复执行步骤 6-2

## 6. 创建并配置虚拟环境

1. 在 ALAS 目录下运行下列命令：

```bash
conda env create -f environment.yml
```

2. 如果部分依赖无法安装，出现类似 `No matching distribution found for XXX` 的报错:

- 在命令行使用 `conda install <无法安装的包名>` 独立安装，例如 `conda install python-graphviz==0.8.4`
  - 安装成功后，打开 `environment.yml` 文件，将对应依赖用 # 注释掉，例如 `#- python-graphviz==0.8.4`
    - 保存后在终端运行下列命令

```bash
conda env update --name alas --file environment.yml
```

> [!CAUTION]
> 更新至 macOS v15.4.1 版本后，虚拟环境出错请尝试在终端运行下列命令

[MacOS Sequoia 15.4.1 更新引发了重复 R 路径的错误](https://stackoverflow.com/a/79592182)

```bash
conda install "1ibgfortran5>=14"
```

---

## 7. 配置 config/deploy.yaml

1. 在终端运行下列命令，重命名 `deploy.yaml` 文件

```bash
 cp config/deploy.template-cn.yaml config/deploy.yaml
```

2. 在终端逐行运行下列命令，分别查看并记录 `Git`、`Python`、`Adb` 的安装路径

```bash
# 查找 Git
which git
# 查找 Python
which python
# 查找 Adb
which adb
```

- 若未找到可使用 `source ~/.bash_profile` 激活环境后再试

3. 打开 ALAS 目录下的 `config/deploy.yaml` 文件，找到并替换路径

```yaml
Git:
  # Filepath of git executable
  GitExecutable: ./toolkit/Git/mingw64/bin/git.exe
  # 把 which git 得到的地址替换这里，例如/usr/bin/git

Python:
  # Filepath of python executable
  PythonExecutable: ./toolkit/python.exe
  # 把 which python 得到的地址替换这里

Adb:
  # Filepath of ADB executable
  AdbExecutable: ./toolkit/Lib/site-packages/adbutils/binaries/adb.exe
  # 把 which adb 得到的地址替换这里
```

---

## 8. 运行 ALAS

1. 激活环境

```bash
conda activate alas
```

2. 进入脚本目录

```bash
cd AzurLaneAutoScript
```

3. 运行 GUI

```bash
python gui.py
```

4. 打开浏览器访问 `http://127.0.0.1:22267`，即可看到 ALAS 的图形界面

   - 可随时关闭浏览器，只要终端没关闭，ALAS 就不会终止运行

---

> [!NOTE]
> 后续可直接运行 sh 脚本，而不是按照步骤 8.来运行 ALAS

## 9. 使用脚本运行 ALAS

创建并配置 run_alas.sh 文件

1. 在终端执行下列代码，创建脚本文件

```bash
touch run_alas.sh
```

2. 编辑脚本文件

```bash
#!/bin/bash

# 初始化 Conda
conda init
source ~/.bash_profile

# 激活 alas 环境
conda activate alas

# 切换到 alas 目录
cd /Users/<yourname>/AzurLaneAutoScript

# 运行 gui.py
python gui.py
```

3. 修改脚本文件权限

```bash
chmod +x run_alas.sh
```

4. 运行脚本

```bash
./run_alas.sh
```

5. 打开浏览器访问 `http://127.0.0.1:22267`，即可看到 ALAS 的图形界面

## 换行符转换

若使用远程桌面（WIN 到 MAC）部署脚本，请将脚本文件使用 `dos2unix 将换行符转换为 UNIX 标准。

```bash
# 安装 dos2unix
brew install dos2unix

# 使用 dos2unix 转换换行符
dos2unix run_alas.sh
```

---

## 附录 终端单次临时代理设置

在终端中运行即可

```bash
# <port> 为代理端口
export http_proxy="http://127.0.0.1:<port>"
export https_proxy="http://127.0.0.1:<port>"
export socks_proxy="socks://127.0.0.1:<port>"
```
