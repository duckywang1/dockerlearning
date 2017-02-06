# 关于docker学习

个人布置 node 使用。基于 阿里云 Ubuntu 14.04 镜像。

## 把 Ubuntu 内核升级。并且更新包  
```
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y --install-recommends linux-generic-lts-xenial
sudo apt-get update -yqq && sudo apt-get install -yqq curl git zip && sudo apt-get clean
sudo apt-get clean && sudo apt-get autoclean && sudo apt-get autoremove

重启服务器
```

## 跑 0docker.sh 安装 docker
```
source /root/nodeDevOps/0docker.sh
```

## 复制一个 Express 项目跑起来
```
git clone https://git.oschina.net/duckywang/alinode0.git

cd alinode0/

npm i --registry=https://registry.npm.taobao.org

docker run -it --rm --name my-script -p 80:3000 -v /root/alinode0:/web/ node:6.9.1 node /web/bin/www
```
