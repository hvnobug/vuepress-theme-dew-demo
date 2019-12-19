# 开始
set -e

# 编译
yarn run build

cd dist

# 新建 CNAME 文件，并写入域名
# echo hvnobug.com > CNAME

# 初始化仓库
git init

# 添加
git add -A

# 提交
git commit -m "Site updated: `date '+%Y-%m-%d %H:%M:%S'`"

# 强制推送到 hvnobug.github.io 仓库的 master 分支
git push -f git@github.com:hvnobug/hvnobug.github.io.git master

rm -rf dist

# 结束
cd -
