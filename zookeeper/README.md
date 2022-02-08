# Starting a zookeeper cluster


### Overview

|name |address|
|------------ | -------------|
|zk52| 192.168.11.52|
|zk59| 192.168.11.59|
|zk62| 192.168.11.62|


### Prelude
see https://zookeeper.apache.org/releases.html


> 需事先在 /data/zookeeper/data 目录下创建 myid 文件，并填写对应的 server id


```
[root@zk52 zookeeper-3.6.3]# tree /data/zookeeper/
/data/zookeeper/
├── data
│   ├── myid
│   ├── version-2
│   │   ├── acceptedEpoch
│   │   ├── currentEpoch
│   │   ├── snapshot.0
│   │   ├── snapshot.100000000
│   │   └── snapshot.20000000a
│   └── zookeeper_server.pid
└── logs
    └── version-2
        ├── log.100000001
        └── log.10000010b

4 directories, 9 files
[root@zk52 zookeeper-3.6.3]# 
[root@zk52 zookeeper-3.6.3]# cat /data/zookeeper/data/myid 
52
```

### Use systemd to start etcd on linux at boot 
see ./systemd
