# electronics_design_contest_template
全国大学生电子设计竞赛 latex 模板

本人无参赛经验，
只是顺手做了一下，
仅供参考

## 特性
-   [inkscape svg自动转换](https://inkscape.org/)
-   [linux makefile](./makefile)
-   [doxygen 文档生成并附加](https://www.doxygen.nl/index.html)
-   [doxygen awesom css主体(就是网页看着好看一点了)](https://github.com/jothepro/doxygen-awesome-css)
-   pro 进阶功能
    -   分文件
    -   Python 做数值计算


## 使用


### 下载模板并添加子模块
```bash
git clone https://github.com/chenboshuo/electronics_design_contest_template.git
cd electronics_design_contest_template
git submodule init
git submodule update
```

### 说明
```text
.
├── docs                          # 存放程序说明文档
│   ├── attachment_setting.tex    # 存放说明文档pdf的头文件
│   ├── build                     # doxygen 创建的文件夹
│   │   ├── doxygen_html          # 文档的html格式
│   │   │   ├── index.html        # 文档首页
│   │   ├── doxygen_latex         # 文档latex
│   │   │   ├── Makefile          
│   │   │   ├── refman.pdf        # LaTeX 说明文档
│   │   │   ├── refman.tex        # 文档的原始 tex
│   ├── Doxyfile                  # deoygen 设置文件
│   └── doxygen-awesome-css       # doxgen 主题文件
├── makefile
├── README.md
├── report
│   ├── build
│   │   ├── ebook.pdf             # 适用于移动设备，方便讨论
│   │   ├── main.pdf              # 带TODO的文件
│   │   ├── release.pdf           # 不带todo的文件
│   │   └── release_without_attachment.pdf # 不带附录的文件
│   ├── contestTemplate.cls       # 模板类
│   ├── figures                   # 存放所有图片
│   │   ├── cover.pdf             # 要求的封面
│   │   ├── _test.pdf             # _开头表明又程序生成
│   │   ├── _test.pdf_tex
│   │   └── test.svg              # inkscape 原始文件
│   ├── main.tex                  # 主文件
│   ├── makefile                  # linux 构建文件
│   ├── make.ps1                  # powershell 构建脚本
│   ├── quick_make.ps1            # 快速构建   
│   └── reference
│       ├── notes.pdf             # 参赛手册
│       └── reference.bib         # 参考文献bib
└── src                           # 代码文件
    ├── example.c                 # 如何写doxygen注释的说明
    ├── lib                  
    └── tests
````

## 依据
-   [2021年电赛陕西赛区参赛手册](http://nuedc.xidian.edu.cn/html/news/2021/0713/454.html)

    > 设计报告封面和每页纸上一律不得出现参赛队的学校、代码、姓名等文字，否则取消评审资格。

    > 《设计报告》正文在8000字以内，第一页为300字以内的设计中文摘要，正文采用小四号宋体字，标题字号自定，一律采用A4纸纵向打印。《设计报告》每页上方必须留出3cm空白，空白内不得有任何文字，每页右下端注明页码。报告用纸由参赛学校自备。

    > 竞赛结束时，参赛队应将《设计报告》封面纸及《报告》在距设计报告上端约2厘米处装订，然后将参赛队的编号填在设计报告封面纸下方的空格处。

## 许可
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="知识共享许可协议" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />本作品采用<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议</a>进行许可。
