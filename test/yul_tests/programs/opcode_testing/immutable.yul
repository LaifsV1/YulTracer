
/// @use-src 0:"immutable.sol"
object "Deployer_42" {
    code {
        setimmutable(0, "hello1", 42)
        setimmutable(0, "hello2", 43)
        setimmutable(0, "qwer", 44)
        setimmutable(0, "asdf", 45)
        setimmutable(0, "AAAAAAAA", 45)
        setimmutable(0, "TEST", 46)

        PRINT(loadimmutable("hello1"))
        PRINT(loadimmutable("hello2"))
        PRINT(loadimmutable("qwer"))
        PRINT(loadimmutable("asdf"))
        PRINT(loadimmutable("AAAAAAAA"))
        PRINT(loadimmutable("TEST"))

        START_ANALYSIS()
    }
}

