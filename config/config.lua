ElevatorFnc = {}

Elevator = {
    PlayerData = {},
    Ped = 0,
    PedCoords = vector3(0,0,0),
    CurrentVehicle = 0
}

Elevator.Utils = {
    distanceCheckThreadActive = false,
    IntervalForDistanceCheck = 250 * 1,
    IntervalBetweenUse = 1000 * 2 + 500,
    LastUse = 0,
    UsingElevator = false,
    MenuOpen = false
}

Elevator.Elevators = {
    LawyersGarageIn = {
        label = "Garage des avocats [Ascenseur automobile]",
        coords = vector3(-140.34155273438, -589.18078613281, 167.00021362305),
        tpCoords = vector3(-142.93524169922, -592.33850097656, 166.76191711426),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        isInstant = false,
        heading = 130.35,
        maxDst = 2.0,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyersGarageOut',
                raid = true,
                canHack = true,
                inVeh = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyersGarageOut = {
        label = "Sortit du garage des avocats [Ascenseur automobile]",
        coords = vector3(-144.36486816406, -576.82916259766, 32.4245262146),
        tpCoords = vector3(-144.36486816406, -576.82916259766, 32.4245262146),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 5.0,
        isInstant = false,
        heading = 160.50,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyersGarageIn',
                raid = true,
                inVeh = true,
                canHack = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerGarageNotCar = {
        label = "Garage des avocats [Ascenseur principale]",
        coords = vector3(-138.33645629883, -592.98260498047, 167.00022888184),
        tpCoords = vector3(-138.33645629883, -592.98260498047, 167.00022888184),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 37.50,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageRoofTop',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerMainFloorElevatorEastSide1',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerGarageRoofTop = {
        label = "Toit de la tour [Ascenseur principale]",
        coords = vector3(-155.06123352051, -602.26452636719, 201.73527526855),
        tpCoords = vector3(-155.06123352051, -602.26452636719, 201.73527526855),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 134.50,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageNotCar',
                raid = true,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerMainFloorElevatorWestSide1',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerWestSideEntrance',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerGarageRoofTop2 = {
        label = "Toit de la tour [Ascenseur principale]",
        coords = vector3(-134.10635375977, -584.49957275391, 201.73527526855),
        tpCoords = vector3(-134.10635375977, -584.49957275391, 201.73527526855),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 314.09,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageNotCar',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerMainFloorElevatorEastSide1',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerEstSideEntrance',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerMainFloorElevatorEastSide1 = {
        label = "Etage principale [Ascenseur principale]",
        coords = vector3(-139.56408691406, -617.38299560547, 168.82054138184),
        tpCoords = vector3(-139.56408691406, -617.38299560547, 168.82054138184),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 1.0,
        isInstant = false,
        heading = 99.31,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageNotCar',
                raid = true,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerGarageRoofTop2',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerEstSideEntrance',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerMainFloorElevatorEastSide2 = {
        label = "Etage principale [Ascenseur principale]",
        coords = vector3(-139.43354797363, -620.7763671875, 168.82054138184),
        tpCoords = vector3(-139.43354797363, -620.7763671875, 168.82054138184),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 1.0,
        isInstant = false,
        heading = 101.31,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageNotCar',
                raid = true,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerGarageRoofTop2',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerEstSideEntrance',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerEstSideEntrance = {
        label = "Rdc coté est [Ascenseur principale]",
        coords = vector3(-117.32735443115, -604.45446777344, 36.280715942383),
        tpCoords = vector3(-117.32735443115, -604.45446777344, 36.280715942383),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 4.0,
        isInstant = false,
        heading = 254.31,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageNotCar',
                raid = true,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerGarageRoofTop2',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerMainFloorElevatorEastSide1',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerMainFloorElevatorWestSide1 = {
        label = "Etage principale [Ascenseur principale]",
        coords = vector3(-141.83772277832, -617.72760009766, 168.82054138184),
        tpCoords = vector3(-141.83772277832, -617.72760009766, 168.82054138184),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 1.0,
        isInstant = false,
        heading = 278.31,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageNotCar',
                raid = true,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerGarageRoofTop',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerWestSideEntrance',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerMainFloorElevatorWestSide2 = {
        label = "Etage principale [Ascenseur principale]",
        coords = vector3(-141.68344116211, -620.94207763672, 168.82054138184),
        tpCoords = vector3(-141.68344116211, -620.94207763672, 168.82054138184),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 1.0,
        isInstant = false,
        heading = 278.31,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageNotCar',
                raid = true,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerGarageRoofTop',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerWestSideEntrance',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    LawyerWestSideEntrance = {
        label = "Rdc coté ouest [Ascenseur principale]",
        coords = vector3(-197.59019470215, -574.01940917969, 40.489307403564),
        tpCoords = vector3(-197.59019470215, -574.01940917969, 40.489307403564),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 72.31,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'LawyerGarageNotCar',
                raid = true,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerGarageRoofTop',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            },

            {
                index = 'LawyerMainFloorElevatorWestSide1',
                raid = true,
                inVeh = false,
                canHack = true,
                public = true,
                raidjobs = {
                    {job = 'police', grade = {5,6,7}},
                    {job = "sheriff", grade = {5,6,7}}
                },
                allowedJobs = {
                    {job = 'lawyer', grade = {1,2,3,4,5}}
                },
                itemlist = {
                    {name = 'lawyeraccescard', amount = 1}
                }
            }
        }
    },

    HospitalMainFloor1 = {
        label = "Rdc [Ascenseur 1]",
        coords = vector3(330.2966003418, -601.08825683594, 43.283973693848),
        tpCoords = vector3(330.2966003418, -601.08825683594, 43.283973693848),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 71.01,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'HospitalUnderFloor1',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'HospitalRoofTop',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            }
        }
    },

    HospitalMainFloor2 = {
        label = "Rdc [Ascenseur 2]",
        coords = vector3(332.33560180664, -595.68109130859, 43.283973693848),
        tpCoords = vector3(332.33560180664, -595.68109130859, 43.283973693848),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 71.01,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'HospitalUnderFloor2',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'HospitalRoofTop',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            }
        }
    },

    HospitalMainFloor3 = {
        label = "Rdc [Ascenseur 3]",
        coords = vector3(327.1760559082, -603.81317138672, 43.283973693848),
        tpCoords = vector3(327.1760559082, -603.81317138672, 43.283973693848),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 339.77,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'HospitalRoofTop',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            }
        }
    },

    HospitalRoofTop = {
        label = "Toit",
        coords = vector3(339.00982666016, -583.90087890625, 74.165664672852),
        tpCoords = vector3(339.00982666016, -583.90087890625, 74.165664672852),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 250.59,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'HospitalMainFloor1',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            },

            {
                index = 'HospitalMainFloor2',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            },

            {
                index = 'HospitalMainFloor3',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            },

            {
                index = 'HospitalUnderFloor1',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            },

            
            {
                index = 'HospitalUnderFloor2',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            }
        }
    },

    HospitalUnderFloor1 = {
        label = "Sous sol [Ascenseur 1]",
        coords = vector3(344.56555175781, -586.27130126953, 28.796850204468),
        tpCoords = vector3(344.56555175781, -586.27130126953, 28.796850204468),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 253.97476196289065,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'HospitalMainFloor1',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'HospitalRoofTop',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            }
        }
    },

    HospitalUnderFloor2 = {
        label = "Sous sol [Ascenseur 2]",
        coords = vector3(345.72576904297, -582.67950439453, 28.796850204468),
        tpCoords = vector3(345.72576904297, -582.67950439453, 28.796850204468),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 257.64300537109375,
        hacking = {
            elevatorhackingcard = {
                minTimer = math.random(15,15),
                maxTimer = math.random(15,15),
                minNods = math.random(1,1),
                maxNods = math.random(1,1)
            }
        },
        accesibles = {
            {
                index = 'HospitalMainFloor2',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'HospitalRoofTop',
                raid = false,
                inVeh = false,
                canHack = true,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
                    {job = 'police', grade = {0,1,2,3,4,5,6,7}},
                    {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
                },
                itemlist = {
                }
            }
        }
    },

    DickButtBooner = {
        coords = vector3(-70.663627624512, 141.61862182617, 81.860061645508),
        tpCoords = vector3(-72.208763122559, 137.05097961426, 127.67840576172),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = true,
        heading = 35.45,
        public = true,
        raid = true,
        inVeh = false,
        hacking = {
        },
        raidjobs = {
        },
        allowedJobs = {
            -- {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
            -- {job = 'police', grade = {0,1,2,3,4,5,6,7}},
            -- {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
        },
        itemlist = {
            -- {name = 'lawyeraccescard', amount = 1}
        }
    },

    DickButtBooner2 = {
        coords = vector3(-72.208763122559, 137.05097961426, 127.67840576172),
        tpCoords = vector3(-70.663627624512, 141.61862182617, 81.860061645508),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = true,
        heading = 35.45,
        public = true,
        raid = true,
        inVeh = false,
        hacking = {
        },
        raidjobs = {
        },
        allowedJobs = {
            -- {job = 'ambulance', grade = {1,2,3,4,5,6,7,8}},
            -- {job = 'police', grade = {0,1,2,3,4,5,6,7}},
            -- {job = 'sheriff', grade = {0,1,2,3,4,5,6,7}}
        },
        itemlist = {
            -- {name = 'lawyeraccescard', amount = 1}
        }
    },

    AirportOutSide = {
        label = "Exterieur",
        coords = vector3(-1070.6539306641, -2868.5119628906, 13.971863746643),
        tpCoords = vector3(-1070.6539306641, -2868.5119628906, 13.971863746643),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 146.08975219726565,
        hacking = {
        },
        accesibles = {
            {
                index = 'AirportOffice2',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'AirportRoof',
                raid = false,
                inVeh = false,
                canHack = false,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'airdealer', grade = {0,1,2,3,4,5,6,7,8}},
                },
                itemlist = {
                }
            }
        }
    },

    AirportOffice2 = {
        label = "Deuxieme étage",
        coords = vector3(-1068.2601318359, -2837.033203125, 36.472713470459),
        tpCoords =  vector3(-1068.2601318359, -2837.033203125, 36.472713470459),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 4.0,
        isInstant = false,
        heading = 330.8762512207031,
        hacking = {
        },
        accesibles = {
            {
                index = 'AirportOutSide',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'AirportRoof',
                raid = false,
                inVeh = false,
                canHack = false,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'airdealer', grade = {0,1,2,3,4,5,6,7,8}},
                },
                itemlist = {
                }
            }
        }
    },

    AirportRoof = {
        label = "Toit",
        coords = vector3(-1079.1307373047, -2767.30078125, 44.557506561279),
        tpCoords =  vector3(-1079.1307373047, -2767.30078125, 44.557506561279),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 4.0,
        isInstant = false,
        heading = 140.93370056152344,
        hacking = {
        },
        accesibles = {
            {
                index = 'AirportOutSide',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'airdealer', grade = {0,1,2,3,4,5,6,7,8}},
                },
                itemlist = {
                }
            },

            {
                index = 'AirportOffice2',
                raid = false,
                inVeh = false,
                canHack = false,
                public = false,
                raidjobs = {
                },
                allowedJobs = {
                    {job = 'airdealer', grade = {0,1,2,3,4,5,6,7,8}},
                },
                itemlist = {
                }
            }
        }
    },    
    
    roofTopAmmuFloor = {
        label = "Premier etage",
        coords = vector3(109.55625915527, -1090.5455322266, 29.302471160889),
        tpCoords =  vector3(109.55625915527, -1090.5455322266, 29.302471160889),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 4.0,
        isInstant = false,
        heading = 339.5950622558594,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAmmuTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopAmmuTop = {
        label = "Toit",
        coords = vector3(93.204414367676, -1099.4219970703, 63.28645324707),
        tpCoords =  vector3(93.204414367676, -1099.4219970703, 63.28645324707),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 4.0,
        isInstant = false,
        heading = 339.3237915039063,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAmmuFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }, 

    roofTopgrooveTop = {
        label = "Toit",
        coords = vector3(338.83657836914, -1651.4624023438, 92.701354980469),
        tpCoords =  vector3(338.83657836914, -1651.4624023438, 92.701354980469),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 4.0,
        isInstant = false,
        heading = 231.19033813476565,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopgrooveFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopgrooveFloor = {
        label = "Premier etage",
        coords = vector3(320.92828369141, -1627.5317382813, 32.534042358398),
        tpCoords =  vector3(320.92828369141, -1627.5317382813, 32.534042358398),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 6.0,
        isInstant = false,
        heading = 47.16597366333008,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopgrooveTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopbannerFloor = {
        label = "Premier etage",
        coords = vector3(-313.50103759766, -1034.138671875, 30.53049659729),
        tpCoords =  vector3(-313.50103759766, -1034.138671875, 30.53049659729),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 339.50384521484375,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopbannerTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopbannerTop = {
        label = "Toit",
        coords = vector3(-334.33712768555, -1051.2746582031, 73.885566711426),
        tpCoords =  vector3(-334.33712768555, -1051.2746582031, 73.885566711426),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 160.240478515625,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopbannerFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopAltaFloor = {
        label = "Premier etage",
        coords = vector3(-273.49667358398, -934.04736328125, 31.219688415527),
        tpCoords =  vector3(-273.49667358398, -934.04736328125, 31.219688415527),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 340.4942932128906,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAltaFloorOuest',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorEst',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorSud',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorNord',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopAltaFloorNord = {
        label = "Toit Coté Nord",
        coords = vector3(-268.87130737305, -947.79705810547, 130.61779785156),
        tpCoords =  vector3(-268.87130737305, -947.79705810547, 130.61779785156),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 338.9617614746094,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAltaFloorOuest',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorEst',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorSud',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopAltaFloorSud = {
        label = "Toit Coté Sud",
        coords = vector3(-275.31997680664, -963.30078125, 130.6180267334),
        tpCoords =  vector3(-275.31997680664, -963.30078125, 130.6180267334),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 159.30685424804688,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAltaFloorOuest',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorEst',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorNord',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopAltaFloorEst = {
        label = "Toit Coté Est",
        coords = vector3(-260.81924438477, -959.45190429688, 130.61807250977),
        tpCoords =  vector3(-260.81924438477, -959.45190429688, 130.61807250977),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 247.2541656494141,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAltaFloorOuest',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorSud',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorNord',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopAltaFloorOuest = {
        label = "Toit Coté Ouest",
        coords = vector3(-283.43887329102, -951.28436279297, 130.61807250977),
        tpCoords =  vector3(-283.43887329102, -951.28436279297, 130.61807250977),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 76.06085968017578,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAltaFloorEst',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorSud',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloorNord',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'roofTopAltaFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopWrapFloor = {
        label = "Premier etage",
        coords = vector3(-263.14669799805, -903.466796875, 32.310794830322),
        tpCoords =  vector3(-263.14669799805, -903.466796875, 32.310794830322),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 339.2243957519531,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopWrapTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopWrapTop = {
        label = "Toit",
        coords = vector3(-237.85546875, -911.51696777344, 52.51778793335),
        tpCoords =  vector3(-237.85546875, -911.51696777344, 52.51778793335),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 344.9064025878906,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopWrapFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }, 

    roofTopHookaFloor = {
        label = "Premier etage",
        coords = vector3(5.6927251815796, -985.47302246094, 29.35737991333),
        tpCoords =  vector3(5.6927251815796, -985.47302246094, 29.35737991333),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 341.8524475097656,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopHookaTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopHookaTop = {
        label = "Toit",
        coords = vector3(3.6920931339264, -999.89013671875, 86.029769897461),
        tpCoords =  vector3(3.6920931339264, -999.89013671875, 86.029769897461),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 341.84765625,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopHookaFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }, 

    roofTopAcoteDuChihuaFloor = {
        label = "Premier etage",
        coords = vector3(57.987113952637, -1003.520324707, 29.357395172119),
        tpCoords =  vector3(57.987113952637, -1003.520324707, 29.357395172119),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 335.9938049316406,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAcoteDuChihuaTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopAcoteDuChihuaTop = {
        label = "Toit",
        coords = vector3(55.914611816406, -1017.4224243164, 79.771553039551),
        tpCoords =  vector3(55.914611816406, -1017.4224243164, 79.771553039551),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 245.36968994140625,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopAcoteDuChihuaFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }, 

    roofTopEmissaryFloor = {
        label = "Premier etage",
        coords = vector3(105.49377441406, -933.37634277344, 29.796979904175),
        tpCoords =  vector3(105.49377441406, -933.37634277344, 29.796979904175),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 248.40676879882812,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopEmissaryTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopEmissaryTop = {
        label = "Toit",
        coords = vector3(70.459884643555, -921.35400390625, 85.287567138672),
        tpCoords =  vector3(70.459884643555, -921.35400390625, 85.287567138672),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 249.7417907714844,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopEmissaryFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }, 
    
    roofTopRicardFloor = {
        label = "Premier etage",
        coords = vector3(143.56442260742, -832.19323730469, 31.170106887817),
        tpCoords =  vector3(143.56442260742, -832.19323730469, 31.170106887817),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 295.6717529296875,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopRicardTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopRicardTop = {
        label = "Toit",
        coords = vector3(109.86302947998, -847.86895751953, 73.58521270752),
        tpCoords =  vector3(109.86302947998, -847.86895751953, 73.58521270752),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 251.10238647460935,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopRicardFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }, 

    roofTopCelticaFloor = {
        label = "Premier etage",
        coords = vector3(281.94662475586, -815.873046875, 29.31343460083),
        tpCoords =  vector3(281.94662475586, -815.873046875, 29.31343460083),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 249.5015411376953,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopCelticaTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopCelticaTop = {
        label = "Toit",
        coords = vector3(256.59487915039, -811.14923095703, 75.702514648438),
        tpCoords =  vector3(256.59487915039, -811.14923095703, 75.702514648438),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 164.0327911376953,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopCelticaFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }, 

    roofTopTenCentsFloor = {
        label = "Premier etage",
        coords = vector3(362.98931884766, -711.63397216797, 29.276369094849),
        tpCoords =  vector3(362.98931884766, -711.63397216797, 29.276369094849),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 69.54937744140625,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopTenCentsTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    roofTopTenCentsTop = {
        label = "Toit",
        coords = vector3(376.48861694336, -704.05712890625, 85.612228393555),
        tpCoords =  vector3(376.48861694336, -704.05712890625, 85.612228393555),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 176.15359497070312,
        hacking = {
        },
        accesibles = {
            {
                index = 'roofTopTenCentsFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    insideCardealerAndAirGarage = {
        label = "Interieur du garage",
        coords = vector3(-1266.8328857422, -2961.0661621094, -48.489650726318),
        tpCoords =  vector3(-1266.8328857422, -2961.0661621094, -48.489650726318),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 69.54937744140625,
        hacking = {
        },
        accesibles = {
            {
                index = 'outsideCardealerAndAirGarage',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    outsideCardealerAndAirGarage = {
        label = "Exterieur du garage",
        coords = vector3(-317.88412475586, -2718.5541992188, 7.5480794906616),
        tpCoords =  vector3(-317.88412475586, -2718.5541992188, 7.5480794906616),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 0.0,
        isInstant = false,
        heading = 315.1643371582031,
        hacking = {
        },
        accesibles = {
        }
    },

    breezeAutoPedElevator = {
        label = "Prémier étage",
        coords = vector3(138.19729614258, -137.31109619141, 54.861034393311),
        tpCoords =  vector3(138.19729614258, -137.31109619141, 54.861034393311),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        maxZ = 0.5,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 1.5,
        isInstant = false,
        heading = 160.66452026367188,
        hacking = {
        },
        accesibles = {
            {
                index = 'breezeAutoPedElevatorSecondFloor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    breezeAutoPedElevatorSecondFloor = {
        label = "Deuxieme étage",
        coords = vector3(137.55830383301, -134.33534240723, 60.518020629883),
        tpCoords =  vector3(137.55830383301, -134.33534240723, 60.518020629883),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        maxZ = 1.0,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 1.5,
        isInstant = false,
        heading = 159.54977416992188,
        hacking = {
        },
        accesibles = {
            {
                index = 'breezeAutoPedElevator',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    breezeAutoCarElevator = {
        label = "Prémier étage",
        coords = vector3(135.14022827148, -132.76191711426, 54.912670135498),
        tpCoords =  vector3(134.5458984375, -134.35758972168, 54.912670135498),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 159.26617431640625,
        hacking = {
        },
        accesibles = {
            {
                index = 'breezeAutoCarElevatorSecondFloor',
                raid = false,
                inVeh = true,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    breezeAutoCarElevatorSecondFloor = {
        label = "Deuxieme étage",
        coords = vector3(134.74031066895, -130.03073120117, 60.569644927979),
        tpCoords =  vector3(134.19258117676, -131.98461914063, 60.569652557373),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 159.33729553222656,
        hacking = {
        },
        accesibles = {
            {
                index = 'breezeAutoCarElevator',
                raid = false,
                inVeh = true,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    ammunationCentrevilleShootingRange = {
        coords = vector3(8.3104906082153, -1095.1939697266, 29.834535598755),
        tpCoords = vector3(8.7537021636963, -1093.8868408203, 29.797033309937),
        isZone = true,
        nuiLabel = "Entré",
        isKey = true,
        jobs = {"armurier"},
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 0.8,
        isInstant = true,
        heading = 339.1858825683594,
        public = false,
        raid = false,
        inVeh = false,
        hacking = {
        },
        raidjobs = {
        },
        allowedJobs = {
            {job = 'armurier', grade = {0,1,2,3,4,5}}
        },
        itemlist = {
            -- {name = 'lawyeraccescard', amount = 1}
        }
        
    },  

    ammunationCentrevilleShootingRangeInside = {
        coords = vector3(8.8353624343872, -1093.9300537109, 29.797033309937),
        tpCoords = vector3(8.3965406417847, -1095.3887939453, 29.834537506104),
        isZone = true,
        nuiLabel = "Sortir",
        isKey = true,
        jobs = {"armurier"},
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 1.0,
        isInstant = true,
        heading = 158.13096618652344,
        public = false,
        raid = true,
        inVeh = false,
        hacking = {
        },
        raidjobs = {
        },
        allowedJobs = {
            {job = 'armurier', grade = {0,1,2,3,4,5}}
        },
        itemlist = {
            -- {name = 'lawyeraccescard', amount = 1}
        }
    },

    casino = {
        label = "Entré",
        coords = vector3(935.78802490234, 46.79956817627, 81.095695495605),
        tpCoords =  vector3(935.78802490234, 46.79956817627, 81.095695495605),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 147.0332183837891,
        hacking = {
        },
        accesibles = {
            {
                index = 'casinoRoofTop',
                raid = false,
                inVeh = true,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    casinoRoofTop = {
        label = "Toit",
        coords = vector3(964.66180419922, 58.660270690918, 112.55300140381),
        tpCoords =  vector3(964.66180419922, 58.660270690918, 112.55300140381),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 59.85239028930664,
        hacking = {
        },
        accesibles = {
            {
                index = 'casino',
                raid = false,
                inVeh = true,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    lombankWestSide = {
        label = "Entré",
        coords = vector3(-1581.5947265625, -558.05389404297, 34.952949523926),
        tpCoords =  vector3(-1581.5947265625, -558.05389404297, 34.952949523926),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 37.72325134277344,
        hacking = {
        },
        accesibles = {
            {
                index = 'lombankWestSideRoofTop',
                raid = false,
                inVeh = true,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },  

    lombankWestSideRoofTop = {
        label = "Toit",
        coords = vector3(-1561.2768554688, -568.66302490234, 114.44840240479),
        tpCoords =  vector3(-1561.2768554688, -568.66302490234, 114.44840240479),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 38.94981384277344,
        hacking = {
        },
        accesibles = {
            {
                index = 'lombankWestSide',
                raid = false,
                inVeh = true,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    tourImmobillier = {
        label = "Sortir",
        coords = vector3(-68.834083557129, -802.00592041016, 44.227294921875),
        tpCoords =  vector3(-68.834083557129, -802.00592041016, 44.227294921875),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 342.0723876953125,
        hacking = {
        },
        accesibles = {
            {
                index = 'tourImmobillierExit',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }, 

    tourImmobillierExit = {
        label = "Entré",
        coords = vector3(-77.703155517578, -829.21075439453, 243.3860168457),
        tpCoords =  vector3(-77.703155517578, -829.21075439453, 243.3860168457),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 3.0,
        isInstant = false,
        heading = 324.74896240234375,
        hacking = {
        },
        accesibles = {
            {
                index = 'tourImmobillier',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    qgBsgInterieur = {
        label = "Troisième",
        coords = vector3(-1562.9123535156, -385.39630126953, 52.005996704102),
        tpCoords =  vector3(-1562.9123535156, -385.39630126953, 52.005996704102),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 222.5953826904297,
        hacking = {
        },
        accesibles = {
            {
                index = 'qgBsgTop',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    qgBsgTop = {
        label = "Toit",
        coords = vector3(-1556.3040771484, -387.93612670898, 59.149864196777),
        tpCoords =  vector3(-1556.3040771484, -387.93612670898, 59.149864196777),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 233.159912109375,
        hacking = {
        },
        accesibles = {
            {
                index = 'qgBsgInterieur',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    tuner_shop_concess_down = {
        label = "Garage",
        coords = vector3(955.20697021484, -2990.3330078125, -39.646961212158),
        tpCoords =  vector3(955.20697021484, -2990.3330078125, -39.646961212158),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 182.6338043212891,
        hacking = {
        },
        accesibles = {
            {
                index = 'tuner_shop_concess_up',
                raid = false,
                inVeh = true,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    tuner_shop_concess_up = {
        label = "Garage",
        coords = vector3(144.28163146973, -3002.2673339844, 7.0310087203979),
        tpCoords =  vector3(144.28163146973, -3002.2673339844, 7.0310087203979),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 1.35739970207214,
        hacking = {
        },
        accesibles = {
            {
                index = 'tuner_shop_concess_down',
                raid = false,
                inVeh = true,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    record_right_second_floor = {
        label = "Deuxieme étage",
        coords = vector3(-817.78436279297, -709.47442626953, 32.342933654785),
        tpCoords =  vector3(-817.78436279297, -709.47442626953, 32.342933654785),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 90.07718658447266,
        hacking = {
        },
        accesibles = {
            {
                index = 'record_right_first_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },
            
            {
                index = 'record_right_garage_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    record_right_first_floor = {
        label = "Premier étage",
        coords = vector3(-817.63482666016, -709.53021240234, 28.062005996704),
        tpCoords =  vector3(-817.63482666016, -709.53021240234, 28.062005996704),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 90.07718658447266,
        hacking = {
        },
        accesibles = {
            {
                index = 'record_right_garage_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'record_right_second_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    record_right_garage_floor = {
        label = "Garage",
        coords = vector3(-817.47058105469, -709.47125244141, 23.781370162964),
        tpCoords =  vector3(-817.47058105469, -709.47125244141, 23.781370162964),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 90.07718658447266,
        hacking = {
        },
        accesibles = {
            {
                index = 'record_right_first_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'record_right_second_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    record_left_second_floor = {
        label = "Deuxieme étage",
        coords = vector3(-817.50457763672, -705.40710449219, 32.342914581299),
        tpCoords =  vector3(-817.50457763672, -705.40710449219, 32.342914581299),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 90.07718658447266,
        hacking = {
        },
        accesibles = {
            {
                index = 'record_left_first_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },
            
            {
                index = 'record_left_garage_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    record_left_first_floor = {
        label = "Premier étage",
        coords = vector3(-817.52856445313, -705.40734863281, 28.062099456787),
        tpCoords =  vector3(-817.52856445313, -705.40734863281, 28.062099456787),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 90.07718658447266,
        hacking = {
        },
        accesibles = {
            {
                index = 'record_left_garage_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'record_left_second_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    },

    record_left_garage_floor = {
        label = "Garage",
        coords = vector3(-817.65606689453, -705.40832519531, 23.78137588501),
        tpCoords =  vector3(-817.65606689453, -705.40832519531, 23.78137588501),
        isZone = true,
		nuiLabel = "Utiliser l'ascenseur",
        isKey = true,
        keyMap = {
            checkCoordsBeforeTrigger = true,
            onRelease = true,
            releaseEvent = "OnElevatorUse",
            key = "E"
        },
        maxDst = 2.0,
        isInstant = false,
        heading = 90.07718658447266,
        hacking = {
        },
        accesibles = {
            {
                index = 'record_left_first_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            },

            {
                index = 'record_left_second_floor',
                raid = false,
                inVeh = false,
                canHack = false,
                public = true,
                raidjobs = {
                },
                allowedJobs = {
                },
                itemlist = {
                }
            }
        }
    }
}



