// Object name cannot be the same as the name of the containing object.
object "A" {
    code {
        datasize("hello")
    }
    object "B1" {
        code {
            datasize("hello")
        }

        object "C1" {
            code {
                datasize("hello")
            }
            object "D1" {
                code {
                    datasize("hello")
                }
            }
            object "D2" {
                code {
                    datasize("hello")
                }
            }
            object "D3" {
                code {
                    datasize("hello")
                }
            }
        }

        object "C2" {
            code {
                datasize("hello")
            }
            object "D1" {
                code {
                    datasize("hello")
                }
            }
            object "D2" {
                code {
                    datasize("hello")
                }
            }
            object "D3" {
                code {
                    datasize("hello")
                }
            }
        }


        object "C3" {
            code {
                datasize("hello")
            }
        }

        object "C4" {
            code {
                datasize("hello")
            }

            object "D1" {
                code {
                    datasize("hello")
                }
            }
            object "D2" {
                code {
                    datasize("hello")
                }
            }
        }

        object "C5" {
            code {
                datasize("hello")
            }
        }
    }

    object "B2" {
        code {
            datasize("hello")
        }
    }

    object "B3" {
        code {
            datasize("hello")
        }

        object "C1" {
            code {
                datasize("hello")
            }
            object "D1" {
                code {
                    datasize("hello")
                }
            }
            object "D2" {
                code {
                    datasize("hello")
                }
            }
            object "D3" {
                code {
                    datasize("hello")
                }
            }
        }

        object "C2" {
            code {
                datasize("hello")
            }
            object "D1" {
                code {
                    datasize("hello")
                }
            }
            object "D2" {
                code {
                    datasize("hello")
                }
            }
            object "D3" {
                code {
                    datasize("hello")
                }
            }
        }


        object "C3" {
            code {
                datasize("hello")
            }
        }

        object "C4" {
            code {
                datasize("hello")
            }

            object "D1" {
                code {
                    datasize("hello")
                }
            }
            object "D2" {
                code {
                    datasize("hello")
                }
            }
        }

        object "C5" {
            code {
                datasize("hello")
            }
        }
    }
    
}

