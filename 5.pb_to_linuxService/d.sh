要将 PocketBase 作为 Linux 服务启动，可以按照以下步骤操作：

1. 创建 PocketBase 启动脚本
首先，您需要创建一个启动脚本。假设您已经在 /usr/local/bin 下放置了 PocketBase 的可执行文件 pocketbase, 您可以创建一个新的脚本文件，比如 start_pocketbase.sh。

bash
sudo nano /usr/local/bin/start_pocketbase.sh
在该文件中输入以下内容：

bash
#!/bin/bash

# 设置工作目录
cd /path/to/your/pocketbase/directory

# 启动 PocketBase
./pocketbase serve --http=0.0.0.0:8090
请将 /path/to/your/pocketbase/directory 替换为 PocketBase 数据库的实际目录。

然后，保存并退出。

2. 赋予可执行权限
接下来，为脚本赋予可执行权限：

bash
sudo chmod +x /usr/local/bin/start_pocketbase.sh
3. 创建 systemd 服务文件
使用 systemd 创建一个服务文件，以便管理 PocketBase 服务。创建一个名为 pocketbase.service 的文件：

bash
sudo nano /etc/systemd/system/pocketbase.service
在该文件中输入以下内容：

ini
[Unit]
Description=PocketBase Service
After=network.target

[Service]
Type=simple
User=yourusername
ExecStart=/usr/local/bin/start_pocketbase.sh
Restart=always

[Install]
WantedBy=multi-user.target
请将 yourusername 替换为运行 PocketBase 的用户。

4. 启动和启用服务
现在，您可以启动服务并设置为开机自启：

bash
# 启动 PocketBase 服务
sudo systemctl start pocketbase

# 设置服务开机自启
sudo systemctl enable pocketbase
5. 检查服务状态
您可以检查 PocketBase 服务的状态：

bash
sudo systemctl status pocketbase
6. 日志查看
如果遇到问题，可以通过以下命令查看日志：

bash
journalctl -u pocketbase.service
总结
以上步骤完成后，PocketBase 将作为服务运行，并在系统启动时自动启动。您可以随时使用 systemctl 命令来管理该服务。
