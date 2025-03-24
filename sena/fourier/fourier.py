import os
from math import pi
from time import sleep

def main():
    clear()

    A = 7
    F = int(input("Frecuancia\n> "))
    limite = 11 * 2 - 1

    print( "\n\tAmplitud    Frecuencia" )
    #print( "%s\t\t>0" %(A / 2.0) )

    n = 1
    for i in range(1, limite, 2):
        sleep(.05)
        print( "%s\t%s\t    %s" %(n, str((2 * A) / (pi * i))[0:6], F * i) )
        n += 1

def clear():
    if os.name == "nt":
        os.system("cls")
    else:
        os.system("clear")

main()
