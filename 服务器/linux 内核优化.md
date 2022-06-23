# /etc/sysctl.conf

```shell
fs.file-max = 999999                      #打开文件最大数
net.core.netdev_max_backlog = 8096        #网卡接收报文速度大于内核处理速度时，设置缓冲队列最大值
net.core.rmem_default = 262144            #内核套接字接收缓冲区默认值
net.core.wmem_default = 262144            #内核套接字发送缓冲区默认值
net.core.rmem_max = 2097152               #内核套接字接收缓冲区最大值
net.core.wmem_max = 2097152               #内核套接字发送缓冲区最大值
net.ipv4.tcp_tw_reuse = 1                 # =1 允许TIME_WAIT状态的套接字重新用于新的TCP连接
net.ipv4.tcp_keepalive_time = 600         #当keepalive启用是，TCP发送KEEPLIVE消息频率。默认2小时 变小可以更快清理无效连接
net.ipv4.tcp_fin_timeout = 30             #服务器主动关闭是，套接字FIN_WAIT-2 状态的最大时间
net.ipv4.tcp_max_tw_buckets = 5000        #操作系统允许TIME_WAIT套接字数量最大值，超出后会清除并报警 ，默认值180000
net.ipv4.ip_local_port_range = 1024 61000 #定义UDP、TCP连接中本地端口范围（不包含连接到远程的端口）
net.ipv4.tcp_rmem = 4096 32768 262142     #定义TCP接收缓存（tcp接收窗口）最小值，默认值，最大值
net.ipv4.tcp_wmen = 4096 32768 262142     #定义TCP发送缓存（tcp发送窗口） 最小值，默认值，最大值
net.ipv4.tcp_syncookies = 1               #解决tcp的SYN攻击
net.ipv4.tcp_max_syn_backlog = 1024       #TCP3次握手syn请求队列最大值，默认1024

sysctl -p  修改生效
```
