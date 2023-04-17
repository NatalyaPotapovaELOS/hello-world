#!/bin/sh

CISLO=$1

if [ "$CISLO" = "0" ]; then
        echo "Operand nesmi byt 0!"
        exit 1;
        elif [ -z "$1" ]; then
                echo "Chyby operand"
                exit 1;
        else

                for (( i = 1; i <= $CISLO; i++ ))
                do
                echo "Hello World $i" | tee -a test.$(date +%Y.%m.%d.%H:%M:%S).log
                done
         exit 0;
fi
