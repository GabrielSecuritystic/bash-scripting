echo "project pembuatan sistem direktori"
read projectname

mkdir $projectname #root folder
echo "membuat direktori utama berhasil..."

cp index.html $projectname/index.html #menyalin file index.html kedalam sebuah direktori yang sudah diinputkan tadi(yaitu direktori abc)
echo "file berhasil disalin"

cd $projectname
mkdir model
mkdir controller
mkdir views
cd views #command cd digunakan,setelah membuat sub folder views otomatis dengan perintah mkdir views,maka akan langsung masuk ke folder views tersebut

mkdir css
cd css
cp ../../../main.css main.css #path direktori ../ 3x dikarenakan sebelum direktori css ada 3folder sebelumnya(css,views,kemudian root folder/folder utama yg dibuat)
cd ../
mkdir js
mkdir img
echo "project berhasil dibuat"
