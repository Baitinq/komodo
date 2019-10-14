    B main
hello DEFB "HELLO\n",0

    ALIGN
main ADR R0, hello
    SWI 3
    SWI 2
