$beginLine=4


function build {
  param (
    $fileName
  )

  xelatex -output-directory="./build" $fileName".tex"
  bibtex ./build/$fileName
  xelatex -output-directory="./build" $fileName".tex"
  xelatex -output-directory="./build" $fileName".tex"
}

function add_extra {
  param (
    $fileName
  )

  Get-Content main.tex |
  Select-Object -Skip $beginLine |
  Out-File $fileName -Append
}

# encoding
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

# make build directory
mkdir build


# make todo
echo "\documentclass[pdfCover]{contestTemplate} %去掉封面与编号页" |
  Out-File todo.tex
add_extra todo.tex
build todo
rm todo.tex

# make ebook
echo "\documentclass[ebook]{contestTemplate} % 去掉封面与编号页" |
  Out-File ebook.tex
add_extra ebook.tex
build ebook
rm ebook.tex

# make release version
echo "\PassOptionsToPackage{disable}{todonotes} \documentclass[pdfCover]{contestTemplate}" |
  Out-File release.tex
add_extra release.tex
build release
rm release.tex

echo "..............................................."
echo "Sucess!!"
echo "Press Enter to exit"
echo "..............................................."


Read-Host
