
object "TestLinker" {
    code {
        SETLINKER("this is a file name",42)
        PRINT(linkersymbol("this is a file name"))

        SETLINKER("blahblahblah",43)
        PRINT(linkersymbol("blahblahblah"))

        SETLINKER("wwwwwwwwwwwwwwwww",44)
        PRINT(linkersymbol("wwwwwwwwwwwwwwwww"))

        SETLINKER("koooooooooooooo",45)
        PRINT(linkersymbol("koooooooooooooo"))

        SETLINKER("this is a file name",42)
        PRINT(linkersymbol("this is a file name"))

        SETLINKER("blahblahblah",43)
        PRINT(linkersymbol("blahblahblah"))

        SETLINKER("wwwwwwwwwwwwwwwww",44)
        PRINT(linkersymbol("wwwwwwwwwwwwwwwww"))

        SETLINKER("koooooooooooooo",45)
        PRINT(linkersymbol("koooooooooooooo"))

    }

}
