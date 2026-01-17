// Object name cannot be the same as the name of the containing object.
object "A" {
    code {

        print_names()
        
        let _1 := dataoffset("A")
        let _2 := dataoffset("B1")
        let _3 := dataoffset("B1.C1")
        let _4 := dataoffset("B1.C1.D1")
        let _5 := dataoffset("B1.C1.D2")
        let _6 := dataoffset("B1.C1.D3")
        let _7 := dataoffset("B1.C2")
        let _8 := dataoffset("B1.C2.D1")
        let _9 := dataoffset("B1.C2.D2")
        let _10 := dataoffset("B1.C2.D3")
        let _11 := dataoffset("B1.C3")
        let _12 := dataoffset("B1.C4")
        let _13 := dataoffset("B1.C4.D1")
        let _14 := dataoffset("B1.C4.D2")
        let _15 := dataoffset("B1.C5")
        let _16 := dataoffset("B2")
        let _17 := dataoffset("B3")
        let _18 := dataoffset("B3.C1")
        let _19 := dataoffset("B3.C1.D1")
        let _20 := dataoffset("B3.C1.D2")
        let _21 := dataoffset("B3.C1.D3")
        let _22 := dataoffset("B3.C2")
        let _23 := dataoffset("B3.C2.D1")
        let _24 := dataoffset("B3.C2.D2")
        let _25 := dataoffset("B3.C2.D3")
        let _26 := dataoffset("B3.C3")
        let _27 := dataoffset("B3.C4")
        let _28 := dataoffset("B3.C4.D1")
        let _29 := dataoffset("B3.C4.D2")
        let _30 := dataoffset("B3.C5")

        datacopy(0,_1,32)
        datacopy(32,_2,32)
        datacopy(64,_3,32)
        datacopy(96,_4,32)
        datacopy(128,_5,32)
        datacopy(160,_6,32)
        datacopy(192,_7,32)
        datacopy(224,_8,32)
        datacopy(256,_9,32)
        datacopy(288,_10,32)
        datacopy(320,_11,32)
        datacopy(352,_12,32)
        datacopy(384,_13,32)
        datacopy(416,_14,32)
        datacopy(448,_15,32)
        datacopy(480,_16,32)
        datacopy(512,_17,32)
        datacopy(544,_18,32)
        datacopy(576,_19,32)
        datacopy(608,_20,32)
        datacopy(640,_21,32)
        datacopy(672,_22,32)
        datacopy(704,_23,32)
        datacopy(736,_24,32)
        datacopy(768,_25,32)
        datacopy(800,_26,32)
        datacopy(832,_27,32)
        datacopy(864,_28,32)
        datacopy(896,_29,32)
        datacopy(928,_30,32)
        
        for{let i := 0} lt(i,mul(30,32)) {i := add(i,32)} {
            print_object(mload(i))
        }
        
    }
    object "B1" {
        code {

        }

        object "C1" {
            code {
            }
            object "D1" {
                code {

                }
            }
            object "D2" {
                code {

                }
            }
            object "D3" {
                code {

                }
            }
        }

        object "C2" {
            code {

            }
            object "D1" {
                code {

                }
            }
            object "D2" {
                code {

                }
            }
            object "D3" {
                code {

                }
            }
        }


        object "C3" {
            code {

            }
        }

        object "C4" {
            code {

            }

            object "D1" {
                code {

                }
            }
            object "D2" {
                code {

                }
            }
        }

        object "C5" {
            code {

            }
        }
    }

    object "B2" {
        code {

        }
    }

    object "B3" {
        code {

        }

        object "C1" {
            code {

            }
            object "D1" {
                code {

                }
            }
            object "D2" {
                code {

                }
            }
            object "D3" {
                code {

                }
            }
        }

        object "C2" {
            code {

            }
            object "D1" {
                code {

                }
            }
            object "D2" {
                code {

                }
            }
            object "D3" {
                code {

                }
            }
        }


        object "C3" {
            code {

            }
        }

        object "C4" {
            code {

            }

            object "D1" {
                code {

                }
            }
            object "D2" {
                code {

                }
            }
        }

        object "C5" {
            code {

            }
        }
    }
    
}

