chcp 65001

:: 先push生成文档
call npm run dbuild
cd ./docs/.vuepress/dist
git init
git add *
git commit -m%time%
git push -f git@github.com:320wuyanzu/PG-Math.git master:gh-pages

:: 再push源文档
cd ../../../
git add *
git commit -m"第一章应该是完美了，还差练习题"
git push -f git@github.com:320wuyanzu/PG-Math.git master:master