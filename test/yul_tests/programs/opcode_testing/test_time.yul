
object "TestPrinting" {
    code {
        PRINT( timestamp() )
        WAIT_MS( 50 )
        PRINT( timestamp() )
        WAIT_MS( 50 )
        PRINT( timestamp() )
        WAIT_MS( 1150 )
        PRINT( timestamp() )
    }

}

