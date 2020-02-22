{
  "meta": {
    "count": 50,
    "links": {
      "self": "https://test.api.amadeus.com/v2/shopping/flight-offers?originLocationCode=JFK&destinationLocationCode=LHR&departureDate=2020-10-01&returnDate=2020-10-10&adults=1&nonStop=false&max=50"
    }
  },
  "data": [
    {
      "type": "flight-offer",
      "id": "1",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT11H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "21",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "22",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "21",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "22",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "2",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT16H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "10",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "11",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "10",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "11",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "3",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT12H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "23",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "24",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "23",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "24",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "4",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT17H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "12",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "13",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "12",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "13",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "5",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT11H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "21",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "22",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "21",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "22",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "6",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT16H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "10",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "11",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "10",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "11",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "7",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT12H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "23",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "24",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "23",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "24",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "8",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT17H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "12",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "13",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "12",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "13",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "9",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT11H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "21",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "22",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "21",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "22",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "10",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT16H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "10",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "11",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "10",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "11",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "11",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT12H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "23",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "24",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "23",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "24",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "12",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT17H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "12",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "13",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "12",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "13",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "13",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:35:00"
              },
              "carrierCode": "AY",
              "number": "5514",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "3",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT11H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "21",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "22",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "3",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "21",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "22",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "14",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:35:00"
              },
              "carrierCode": "AY",
              "number": "5514",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "3",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT16H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "10",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "11",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "3",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "10",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "11",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "15",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:35:00"
              },
              "carrierCode": "AY",
              "number": "5514",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "3",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT12H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "23",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "24",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "3",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "23",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "24",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "16",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:35:00"
              },
              "carrierCode": "AY",
              "number": "5514",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "3",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT17H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "12",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "13",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "3",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "12",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "13",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "17",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T23:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T11:05:00"
              },
              "carrierCode": "AY",
              "number": "5482",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "4",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT11H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "21",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "22",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "4",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "21",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "22",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "18",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T23:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T11:05:00"
              },
              "carrierCode": "AY",
              "number": "5482",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "4",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT16H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "10",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "11",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "4",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "10",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "11",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "19",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T23:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T11:05:00"
              },
              "carrierCode": "AY",
              "number": "5482",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "4",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT12H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "23",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "24",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "4",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "23",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "24",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "20",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T23:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T11:05:00"
              },
              "carrierCode": "AY",
              "number": "5482",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "4",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT17H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "12",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "13",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "4",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "12",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "13",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "21",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H10M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T19:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T07:10:00"
              },
              "carrierCode": "AY",
              "number": "5474",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H10M",
              "id": "5",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT11H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "21",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "22",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "5",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "21",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "22",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "22",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H10M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T19:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T07:10:00"
              },
              "carrierCode": "AY",
              "number": "5474",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H10M",
              "id": "5",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT16H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "10",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "11",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "5",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "10",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "11",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "23",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H10M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T19:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T07:10:00"
              },
              "carrierCode": "AY",
              "number": "5474",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H10M",
              "id": "5",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT12H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "23",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "24",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "5",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "23",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "24",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "24",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H10M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T20:10:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T08:20:00"
              },
              "carrierCode": "AY",
              "number": "5516",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H10M",
              "id": "6",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT11H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "21",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "22",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "6",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "21",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "22",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "25",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H10M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T20:10:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T08:20:00"
              },
              "carrierCode": "AY",
              "number": "5516",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H10M",
              "id": "6",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT16H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "10",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "11",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "6",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "10",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "11",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "26",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H10M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T20:10:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T08:20:00"
              },
              "carrierCode": "AY",
              "number": "5516",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H10M",
              "id": "6",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT12H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "23",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "24",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "6",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "23",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "24",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "27",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H15M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T19:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T07:45:00"
              },
              "carrierCode": "AY",
              "number": "5476",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H15M",
              "id": "7",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT11H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "21",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "22",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "7",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "21",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "22",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "28",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H15M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T19:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T07:45:00"
              },
              "carrierCode": "AY",
              "number": "5476",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H15M",
              "id": "7",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT16H20M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T07:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T10:50:00"
              },
              "carrierCode": "IB",
              "number": "7460",
              "aircraft": {
                "code": "320"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H30M",
              "id": "10",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T16:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T18:40:00"
              },
              "carrierCode": "IB",
              "number": "6253",
              "aircraft": {
                "code": "346"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H50M",
              "id": "11",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "7",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "10",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "11",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "29",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 4,
      "itineraries": [
        {
          "duration": "PT7H15M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T19:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T07:45:00"
              },
              "carrierCode": "AY",
              "number": "5476",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H15M",
              "id": "7",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT12H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T06:20:00"
              },
              "arrival": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T09:40:00"
              },
              "carrierCode": "IB",
              "number": "7458",
              "aircraft": {
                "code": "321"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT2H20M",
              "id": "23",
              "numberOfStops": 0,
              "blacklistedInEU": false
            },
            {
              "departure": {
                "iataCode": "MAD",
                "terminal": "4S",
                "at": "2020-10-10T12:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:15:00"
              },
              "carrierCode": "IB",
              "number": "6251",
              "aircraft": {
                "code": "359"
              },
              "operating": {
                "carrierCode": "IB"
              },
              "duration": "PT7H55M",
              "id": "24",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "329.78",
        "base": "14.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "329.78"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "329.78",
            "base": "14.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "7",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "23",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "24",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "30",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H40M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T08:30:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T11:10:00"
              },
              "carrierCode": "AY",
              "number": "5517",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H40M",
              "id": "14",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "14",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "31",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H45M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T11:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:05:00"
              },
              "carrierCode": "AY",
              "number": "5473",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H45M",
              "id": "15",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "15",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "32",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H45M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T19:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T22:35:00"
              },
              "carrierCode": "AY",
              "number": "5483",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H45M",
              "id": "16",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "16",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "33",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T09:35:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T12:25:00"
              },
              "carrierCode": "AY",
              "number": "5475",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H50M",
              "id": "17",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "17",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "34",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T13:10:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T16:00:00"
              },
              "carrierCode": "AY",
              "number": "5477",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H50M",
              "id": "18",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "18",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "35",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T14:30:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T17:25:00"
              },
              "carrierCode": "AY",
              "number": "5515",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H55M",
              "id": "19",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "19",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "36",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T18:05:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T21:00:00"
              },
              "carrierCode": "AY",
              "number": "5479",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H55M",
              "id": "20",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "20",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "37",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT6H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T07:55:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-01T19:45:00"
              },
              "carrierCode": "AY",
              "number": "5478",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT6H50M",
              "id": "8",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT8H",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T16:15:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T19:15:00"
              },
              "carrierCode": "AY",
              "number": "5513",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT8H",
              "id": "9",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "8",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "9",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "38",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H40M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T08:30:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T11:10:00"
              },
              "carrierCode": "AY",
              "number": "5517",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H40M",
              "id": "14",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "14",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "39",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H45M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T11:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:05:00"
              },
              "carrierCode": "AY",
              "number": "5473",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H45M",
              "id": "15",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "15",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "40",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H45M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T19:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T22:35:00"
              },
              "carrierCode": "AY",
              "number": "5483",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H45M",
              "id": "16",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "16",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "41",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T09:35:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T12:25:00"
              },
              "carrierCode": "AY",
              "number": "5475",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H50M",
              "id": "17",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "17",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "42",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T13:10:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T16:00:00"
              },
              "carrierCode": "AY",
              "number": "5477",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H50M",
              "id": "18",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "18",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "43",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T14:30:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T17:25:00"
              },
              "carrierCode": "AY",
              "number": "5515",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H55M",
              "id": "19",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "19",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "44",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H55M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T18:05:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T21:00:00"
              },
              "carrierCode": "AY",
              "number": "5479",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H55M",
              "id": "20",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "20",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "45",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T18:30:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T06:30:00"
              },
              "carrierCode": "AY",
              "number": "5512",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H",
              "id": "1",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT8H",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T16:15:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T19:15:00"
              },
              "carrierCode": "AY",
              "number": "5513",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT8H",
              "id": "9",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "1",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "9",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "46",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H40M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T08:30:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T11:10:00"
              },
              "carrierCode": "AY",
              "number": "5517",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H40M",
              "id": "14",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "14",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "47",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H45M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T11:20:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T14:05:00"
              },
              "carrierCode": "AY",
              "number": "5473",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H45M",
              "id": "15",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "15",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "48",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H45M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T19:50:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T22:35:00"
              },
              "carrierCode": "AY",
              "number": "5483",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H45M",
              "id": "16",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "16",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "49",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T09:35:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T12:25:00"
              },
              "carrierCode": "AY",
              "number": "5475",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H50M",
              "id": "17",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "17",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    },
    {
      "type": "flight-offer",
      "id": "50",
      "source": "GDS",
      "instantTicketingRequired": false,
      "nonHomogeneous": false,
      "oneWay": false,
      "lastTicketingDate": "2020-02-24",
      "numberOfBookableSeats": 9,
      "itineraries": [
        {
          "duration": "PT7H5M",
          "segments": [
            {
              "departure": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-01T21:00:00"
              },
              "arrival": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-02T09:05:00"
              },
              "carrierCode": "AY",
              "number": "5472",
              "aircraft": {
                "code": "744"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H5M",
              "id": "2",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        },
        {
          "duration": "PT7H50M",
          "segments": [
            {
              "departure": {
                "iataCode": "LHR",
                "terminal": "5",
                "at": "2020-10-10T13:10:00"
              },
              "arrival": {
                "iataCode": "JFK",
                "terminal": "7",
                "at": "2020-10-10T16:00:00"
              },
              "carrierCode": "AY",
              "number": "5477",
              "aircraft": {
                "code": "777"
              },
              "operating": {
                "carrierCode": "BA"
              },
              "duration": "PT7H50M",
              "id": "18",
              "numberOfStops": 0,
              "blacklistedInEU": false
            }
          ]
        }
      ],
      "price": {
        "currency": "EUR",
        "total": "334.45",
        "base": "1.00",
        "fees": [
          {
            "amount": "0.00",
            "type": "SUPPLIER"
          },
          {
            "amount": "0.00",
            "type": "TICKETING"
          }
        ],
        "grandTotal": "334.45"
      },
      "pricingOptions": {
        "fareType": [
          "PUBLISHED"
        ],
        "includedCheckedBagsOnly": false
      },
      "validatingAirlineCodes": [
        "AY"
      ],
      "travelerPricings": [
        {
          "travelerId": "1",
          "fareOption": "STANDARD",
          "travelerType": "ADULT",
          "price": {
            "currency": "EUR",
            "total": "334.45",
            "base": "1.00"
          },
          "fareDetailsBySegment": [
            {
              "segmentId": "2",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            },
            {
              "segmentId": "18",
              "cabin": "ECONOMY",
              "fareBasis": "OLN8C7B5",
              "brandedFare": "NOBAG",
              "class": "O",
              "includedCheckedBags": {
                "quantity": 0
              }
            }
          ]
        }
      ]
    }
  ],
  "dictionaries": {
    "locations": {
      "MAD": {
        "cityCode": "MAD",
        "countryCode": "ES"
      },
      "LHR": {
        "cityCode": "LON",
        "countryCode": "GB"
      },
      "JFK": {
        "cityCode": "NYC",
        "countryCode": "US"
      }
    },
    "aircraft": {
      "320": "AIRBUS INDUSTRIE A320-100/200",
      "321": "AIRBUS INDUSTRIE A321",
      "346": "AIRBUS INDUSTRIE A340-600",
      "359": "AIRBUS INDUSTRIE A350-900",
      "744": "BOEING 747-400",
      "777": "BOEING 777-200/300"
    },
    "currencies": {
      "EUR": "EURO"
    },
    "carriers": {
      "AY": "FINNAIR",
      "IB": "IBERIA",
      "BA": "BRITISH AIRWAYS"
    }
  }
}
