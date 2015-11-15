#!/bin/bash


#Update CentOS with patches
yum update -y --exclude=kernel
# tools
yum install -y git unzip screen nc telent

