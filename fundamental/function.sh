#!/bin/bash

<<COMMENTS

#contoh function declaration pada bash shell scripting

function namafunction(){
        #code
}

#contoh function anonimus pada bash shell scripting
function1(){
 #code
} 

COMMENTS

#implementasi function declaration
function test(){
if [ -d Documents ];
then
	echo "direktori sudah tersedia"
else
	echo "direktori tidak ada"
fi

}


function test2(){
if [-e Documents ];
then
	echo "test2"
else
	echo "tidak bisa"
fi

#callback function terhadap function declaration sebelumnya
test
}
test2


