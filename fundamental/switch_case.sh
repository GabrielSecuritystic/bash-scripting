#!/bin/bash


<<COMMENTS
syntax dasar
    case expression in  
        pattern_1)  
            statements  
            ;;  
        pattern_2)  
            statements  
            ;;  
        pattern_3|pattern_4|pattern_5)  
            statements  
            ;;  
        pattern-n)  
            statements  
            ;;  
        *)  
            statements  
            ;;  
    esac  

penjelasan:

    Each case statement in bash starts with the 'case' keyword, followed by the case expression and 'in' keyword. The case statement is closed by 'esac' keyword.
    We can apply multiple patterns separated by | operator. The ) operator indicates the termination of a pattern list.
    A pattern containing the statements is referred to as a clause, and it must be terminated by double semicolon (;;).
    An asterisk symbol (*) is used as a final pattern to define the default case. It is used as a default case when used as the last case.

COMMENTS

#contoh penerapan case statement pada bash shell scripting
echo "apakah anda tertarik belajar linux?"
read -p "YES/NO?" answer

case $answer in
Yes|yes|y|Y)
echo "ini menakjubkan"
echo
;;
No|no|N|n)
echo "ini mudah"
;;
esac

#contoh penerapan case statement kedua
echo "operasi sistem mana yang anda gunakan?"
echo "windows,linux,ora Macintosh"
read -p "pilih salah satu" os
case $os in
windows)
echo "anda menggunakan os windows"
echo
;;
linux)
echo "anda menakjubkan"
echo
;;
macintosh)
echo "anda sultan"
echo
;;
*)
echo "anda tidak suka ketiganya"
echo
;;
esac
