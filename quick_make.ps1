$beginLine=4


function build {
  param (
    $fileName
  )

  xelatex -output-directory="./build" $fileName".tex"
}


# encoding
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

# make build directory
mkdir build

#make inkscape figure
if (inkscape --version){
  cd figures
  foreach ($i in $(gci -fi *.svg)){
    inkscape $i `
    --export-filename=_$([io.path]::GetFileNameWithoutExtension($i)).pdf `
    --export-latex --export-area-drawing
  }
  cd ..
}

build main

echo "..............................................."
echo "Sucess!!"
echo "Press Enter to exit"
echo "..............................................."


Read-Host
