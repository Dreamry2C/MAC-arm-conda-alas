#!/bin/bash

# 最小化当前终端窗口
osascript -e 'tell application "Terminal" to set miniaturized of front window to true'

# 激活环境变量
# source ~/.zshrc

# 初始化 Conda
eval "$(conda shell.bash hook)"
# 若激活失败，请注释/删除 eval "$(conda shell.bash hook)"，后尝试使用 conda init 来初始化 Conda
# conda init

# 激活 alas 环境
conda activate alas

# 切换到 ALAS 目录
cd /Users/<yourname>/AzurLaneAutoScript
# 手动修改该行中的路径为 ALAS 目录，例：/Users/Dreamry2C/AzurLaneAutoScript 或 /Users/NEANC/Downloads/AzurLaneAutoScript

# 延迟2秒后打开测览器访问 ALAS WEB GUI
(sleep 2 && open http://127.0.0.1:22267) &
# 若不需要自动打开浏览器，请注释/删除该命令

# 运行 gui.py
python gui.py
