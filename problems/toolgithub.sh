#########################################################################

# File Name:    toolgithub.sh
# Author:       程序员Carl
# mail:         programmercarl@163.com
# Created Time: Sat Oct 15 16:36:23 2022
#########################################################################
#!/bin/bash

# <p align="center">
# <a href="https://www.programmercarl.com/xunlian/xunlianying.html" target="_blank">
#   <img src="../pics/训练营.png" width="1000"/>
# </a>
# <p align="center"><strong><a href="./qita/join.md">参与本项目</a>，贡献其他语言版本的代码，拥抱开源，让更多学习算法的小伙伴们收益！</strong></p>

#   <img src="../pics/网站星球宣传海报.jpg" width="1000"/>
# <p align="center">
# <a href="https://programmercarl.com/other/kstar.html" target="_blank">
#   <img src="../pics/网站星球宣传海报.jpg" width="1000"/>
# </a>

for i in *.md
do
    if [[ $i != 'README.md' ]]
    then
    # 移除开头
    sed -i '' '/align/d;/\"\"><\/a>/d;/<\/p>/d;/<\/a>/d;/20210924105952.png/d;/_blank/d' $i
    # 移除结尾
    sed -i '' '/训练营/d;/网站星球宣传海报/d' $i


    # 添加开头
    # 记得从后向前添加
    # ex -sc '1i|<p align="center"><strong><a href="./qita/join.md">参与本项目</a>，贡献其他语言版本的代码，拥抱开源，让更多学习算法的小伙伴们受益！</strong></p>' -cx $i
    # ex -sc '1i|</a>' -cx $i
    # ex -sc '1i|  <img src="../pics/训练营.png" width="1000"/>' -cx $i
    # ex -sc '1i|<a href="https://www.programmercarl.com/xunlian/xunlianying.html" target="_blank">' -cx $i
    # ex -sc '1i|<p align="center">' -cx $i

    ex -sc '1i|* [背八股（40天挑战高频面试题）](https://www.programmercarl.com/xunlian/bagu.html)' -cx $i
    ex -sc '1i|* [刷算法（两个月高强度学算法）](https://www.programmercarl.com/xunlian/xunlianying.html)' -cx $i
    ex -sc '1i|* [做项目（多个C++、Java、Go、测开、前端项目）](https://www.programmercarl.com/other/kstar.html)' -cx $i


    # echo '## 其他语言版本' >> $i
    # echo '\n' >> $i
    # echo 'Java：' >> $i
    # echo '\n' >> $i
    # echo 'Python：' >> $i
    # echo '\n' >> $i
    # echo 'Go：' >> $i
    # echo '\n' >> $i
    # echo '\n' >> $i

    # 添加结尾 

    # echo '<p align="center">' >> $i
    # echo '<a href="https://programmercarl.com/other/kstar.html" target="_blank">' >> $i
    # echo '  <img src="../pics/网站星球宣传海报.jpg" width="1000"/>' >> $i
    # echo '</a>' >> $i 

    # echo '-----------------------' >> $i

    # echo '<div align="center"><img src=../pics/训练营.png width=1000> </img></div>' >> $i
    fi
done

# <p align="center">
# <a href="https://programmercarl.com/other/kstar.html" target="_blank">
#   <img src="https://code-thinking-1253855093.file.myqcloud.com/pics/20210924105952.png" width="1000"/>
# </a>

# <p align="center"><strong><a href="https://mp.weixin.qq.com/s/tqCxrMEU-ajQumL1i8im9A">参与本项目</a>，贡献其他语言版本的代码，拥抱开源，让更多学习算法的小伙伴们收益！</strong></p>



