#!/usr/bin/env sh

# 错误时停止
set -e

# 打包
npm run build

# 进入目标文件夹
cd dist

# 部署到自定义域域名
echo 'https://blog.tianleyou.cn' > CNAME

# 提交到本地仓库

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
git push -f git@github.com:Tianleyy/Tianleyy.github.io.git master

cd -