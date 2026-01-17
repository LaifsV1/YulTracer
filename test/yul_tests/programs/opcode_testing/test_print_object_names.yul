// Object name cannot be the same as the name of the containing object.
object "A" {
    code {
        print_ids()
        print_names()
        print_object(dataoffset("A"))
        print_object(dataoffset("B1"))
        print_object(dataoffset("B1.C1"))
        print_object(dataoffset("B1.C1.D1"))
        print_object(dataoffset("B1.C1.D2"))
        print_object(dataoffset("B1.C1.D3"))
        print_object(dataoffset("B1.C2"))
        print_object(dataoffset("B1.C2.D1"))
        print_object(dataoffset("B1.C2.D2"))
        print_object(dataoffset("B1.C2.D3"))
        print_object(dataoffset("B1.C3"))
        print_object(dataoffset("B1.C4"))
        print_object(dataoffset("B1.C4.D1"))
        print_object(dataoffset("B1.C4.D2"))
        print_object(dataoffset("B1.C5"))
        print_object(dataoffset("B2"))
        print_object(dataoffset("B3"))
        print_object(dataoffset("B3.C1"))
        print_object(dataoffset("B3.C1.D1"))
        print_object(dataoffset("B3.C1.D2"))
        print_object(dataoffset("B3.C1.D3"))
        print_object(dataoffset("B3.C2"))
        print_object(dataoffset("B3.C2.D1"))
        print_object(dataoffset("B3.C2.D2"))
        print_object(dataoffset("B3.C2.D3"))
        print_object(dataoffset("B3.C3"))
        print_object(dataoffset("B3.C4"))
        print_object(dataoffset("B3.C4.D1"))
        print_object(dataoffset("B3.C4.D2"))
        print_object(dataoffset("B3.C5"))
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

