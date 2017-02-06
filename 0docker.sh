#!/bin/sh

docker_install() {
  # Installing Docker
  curl -sSL https://get.daocloud.io/docker | sh
  # Change Docker Mirrors From http://www.daocloud.io
  curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://a594ca5e.m.daocloud.io
  # Open Docker
  sudo service docker restart
  # Installing Docker Compose
  curl -L https://get.daocloud.io/docker/compose/releases/download/1.9.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
  echo "*********************************************************************"
  echo "*********************************************************************"
  echo "***"
  echo "*** docker 安装成功 "
  echo "*** 成功配置国内daocloud.io镜像 "
  echo "***"
  echo "*********************************************************************"
  echo "*********************************************************************"
}

docker_install
