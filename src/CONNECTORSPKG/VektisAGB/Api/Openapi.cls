/// OpenAPI spec for VektisAGB
Class CONNECTORSPKG.VektisAGB.Api.Openapi
{

/// Delete API
ClassMethod DeleteAll()
{
    Do $SYSTEM.OBJ.DeletePackage("CONNECTORSPKG.VektisAGB.Api.Client")
}

/// - Downloaded the swagger-spec from https://test-agb-api.vektis.nl/v2/swagger
/// - Shortened the definitions by removing the "Vektis.AGB.WebAPI.Raadplegen.DataContracts." prefix
/// - Manually corrected all duplicate instances of operationId
/// - Converted using post to https://converter.swagger.io/#/Converter/convertByContent
/// - Removed all Authorization header parameters
/// - Pasted here.
XData spec [ MimeType = application/json ]
{
{
  "openapi": "3.0.1",
  "info": {
    "title": "Vektis.AGB.WebAPI.Raadplegen (test-agb-api.vektis.nl/) v2",
    "description": "De raadpleegdienst biedt de mogelijkheid voor diverse bevragingen op AGB. De informatie die beschikbaar is, kan gebruikt worden voor het aanvragen van AGB-codes met de aanvraagdienst.",
    "version": "v2"
  },
  "servers": [
    {
      "url": "https://test-agb-api.vektis.nl/"
    }
  ],
  "paths": {
    "/v2/ondernemingen/{agbcode}": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen van basisinformatie van een onderneming",
        "description": "Op basis van een gegeven AGB-code wordt de basisinformatie van de betreffende onderneming opgehaald en teruggegeven. <br />\r\nDeze basisinformatie vertelt wie de onderneming is, waarvoor deze gekwalificeerd is, waar deze gevestigd is en hoe deze bereikbaar is. <br />\r\nHet betreft adressen, communicatiegegevens, erkenningen en kwalificaties die op dit moment actief zijn. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_Basisinformatie",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Onderneming",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                },
                "example": {
                  "Aanvang": "2016-01-01T00:00:00",
                  "Einde": null,
                  "Adressen": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Huisnummer": 18,
                      "HuisnummerToevoeging": "",
                      "Land": {
                        "Code": "NL",
                        "Omschrijving": "NEDERLAND"
                      },
                      "Plaats": "ZEIST",
                      "Postcode": "3708JE  ",
                      "Provincie": {
                        "Code": "M",
                        "Omschrijving": "Utrecht"
                      },
                      "Straat": "Sparrenheuvel",
                      "Type": {
                        "Code": "2",
                        "Omschrijving": "Correspondentieadres"
                      }
                    }
                  ],
                  "AGBCode": "20000001",
                  "Communicatiegegevens": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Doel": {
                        "Code": "1",
                        "Omschrijving": "Algemeen"
                      },
                      "Gegeven": "email@onderneming1.nl",
                      "Type": {
                        "Code": "1",
                        "Omschrijving": "E-mail"
                      }
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Doel": {
                        "Code": "1",
                        "Omschrijving": "Algemeen"
                      },
                      "Gegeven": "030-1234567",
                      "Type": {
                        "Code": "2",
                        "Omschrijving": "Telefoonnummer"
                      }
                    }
                  ],
                  "Erkenningen": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "100101",
                      "Omschrijving": "Inschrijving handelsregister",
                      "RegistratieNummer": "57899649864"
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "100170",
                      "Omschrijving": "Toelating Ministerie van VWS/CIBG Verpleeginrichtingen",
                      "RegistratieNummer": "41268754756"
                    }
                  ],
                  "Handelsnaam": "Actieve onderneming 1",
                  "Kwalificaties": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "0100",
                      "Omschrijving": "Huisarts",
                      "NictizCode": "Z3",
                      "Patiententerm": "Huisartsenpraktijk"
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "4700",
                      "Omschrijving": "Gecombineerde verpleeginrichtingen",
                      "NictizCode": "X3",
                      "Patiententerm": "Verpleeghuis en verzorgingshuis"
                    }
                  ],
                  "Naam": "Actieve onderneming 1",
                  "StatutaireNaam": "",
                  "ZorgpartijType": {
                    "Code": "2",
                    "Omschrijving": "Onderneming"
                  },
                  "BeheerderVerlenerAGBCode": {
                    "Code": "5533",
                    "Omschrijving": "Zorgkantoor Friesland"
                  },
                  "Zorgsoort": {
                    "Code": "47",
                    "Omschrijving": "Gecombineerde Verpleeginrichtingen"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/ondernemingen/mutaties/{vanaf}": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen van ondernemingen met mutaties",
        "description": "Op basis van een gegeven peildatum worden de ondernemingen die zijn aangepast sinds de peildatum opgehaald en teruggegeven. <br />\r\nDeze gegevens zijn bedoeld om de gegevens bij de klant te synchroniseren met de gegevens in het AGB-register. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_ZorgpartijMutaties",
        "parameters": [
          {
            "name": "vanaf",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Mutaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                },
                "example": {
                  "Zorgpartijen": [
                    {
                      "AGBCode": "20000001",
                      "ZorgpartijType": {
                        "Code": "2",
                        "Omschrijving": "Onderneming"
                      }
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige peildatum",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/ondernemingen/{agbcode}/relaties": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen van huidige actieve relaties van een onderneming",
        "description": "Op basis van een gegeven AGB-code worden de relaties van de betreffende onderneming opgehaald en teruggegeven. <br />\r\nDe relaties met andere ondernemingen, vestigingen en zorgverleners die direct aan de onderneming gekoppeld zijn worden getoond. <br />\r\nHet betreft relaties die op dit moment actief zijn.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_OndernemingRelatiesV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "20000004",
                  "Naam": "Actieve onderneming 3",
                  "Relaties": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "AGBCode": "30000003",
                      "Naam": "Actieve vestiging 2",
                      "Rol": {
                        "Code": "17",
                        "Omschrijving": "Vestiging van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "AGBCode": "30000004",
                      "Naam": "Actieve vestiging 3",
                      "Rol": {
                        "Code": "17",
                        "Omschrijving": "Vestiging van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "AGBCode": "30000005",
                      "Naam": "Actieve vestiging 4",
                      "Rol": {
                        "Code": "17",
                        "Omschrijving": "Vestiging van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "2",
                    "Omschrijving": "Onderneming"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Zorgpartij niet actief, Geen relaties gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/ondernemingen/{agbcode}/{peildatum}": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen van basisinformatie van een onderneming op peildatum",
        "description": "Op basis van een gegeven AGB-code en peildatum wordt de basisinformatie van de betreffende onderneming opgehaald en teruggegeven. <br />\r\nDeze basisinformatie vertelt wie de onderneming is, waarvoor deze gekwalificeerd is, waar deze gevestigd is en hoe deze bereikbaar is. <br />\r\nHet betreft adressen, communicatiegegevens, erkenningen en kwalificaties waarvan de peildatum binnen de geldigheidsperiode valt. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_BasisMetPeildatum",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "peildatum",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Onderneming",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                },
                "example": {
                  "Aanvang": "2016-01-01T00:00:00",
                  "Einde": "2018-01-01T00:00:00",
                  "Adressen": [],
                  "AGBCode": "20000003",
                  "Communicatiegegevens": [],
                  "Erkenningen": [],
                  "Handelsnaam": "Niet actieve onderneming",
                  "Kwalificaties": [],
                  "Naam": "Niet actieve onderneming",
                  "StatutaireNaam": "",
                  "ZorgpartijType": {
                    "Code": "2",
                    "Omschrijving": "Onderneming"
                  },
                  "BeheerderVerlenerAGBCode": {
                    "Code": "3000",
                    "Omschrijving": "Vektis"
                  },
                  "Zorgsoort": {
                    "Code": "01",
                    "Omschrijving": "Huisartsen"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.Onderneming"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/ondernemingen/{agbcode}/relaties/totaal": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen van alle relaties van een onderneming",
        "description": "Op basis van een gegeven AGB-code worden de relaties van de betreffende onderneming opgehaald en teruggegeven. <br />\r\nDe relaties met andere ondernemingen, vestigingen en zorgverleners die direct aan de onderneming gekoppeld zijn worden getoond. <br />\r\nHet betreft alle relaties, dus actieve, reeds beëindigde en eventueel toekomstige relaties.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_OndernemingRelatiesTotaalV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "20000004",
                  "Naam": "Actieve onderneming 3",
                  "Relaties": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "AGBCode": "30000003",
                      "Naam": "Actieve vestiging 2",
                      "Rol": {
                        "Code": "17",
                        "Omschrijving": "Vestiging van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "AGBCode": "30000004",
                      "Naam": "Actieve vestiging 3",
                      "Rol": {
                        "Code": "17",
                        "Omschrijving": "Vestiging van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "AGBCode": "30000005",
                      "Naam": "Actieve vestiging 4",
                      "Rol": {
                        "Code": "17",
                        "Omschrijving": "Vestiging van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "2",
                    "Omschrijving": "Onderneming"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Zorgpartij niet actief, Geen relaties gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/ondernemingen/mutaties/{zorgsoort}/{vanaf}": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen van ondernemingen met mutaties binnen het opgegeven zorgsoort.",
        "description": "Op basis van een gegeven peildatum en zorgsoort worden de ondernemingen die zijn aangepast sinds de peildatum opgehaald en teruggegeven. <br />\r\nDeze gegevens zijn bedoeld om de gegevens bij de klant te synchroniseren met de gegevens in het AGB-register. <br />\r\nAlleen de ondernemingen met de betreffende zorgsoort worden teruggegeven.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_MutatiesMetZorgSoort",
        "parameters": [
          {
            "name": "zorgsoort",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "vanaf",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Mutaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                },
                "example": {
                  "Zorgpartijen": [
                    {
                      "AGBCode": "20000001",
                      "ZorgpartijType": {
                        "Code": "2",
                        "Omschrijving": "Onderneming"
                      }
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige peildatum of zorgsoort",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/ondernemingen/{agbcode}/relaties/organisatie": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen vestigingen bij een onderneming",
        "description": "Op basis van een gegeven AGB-code van een onderneming of een vestiging en peildatum worden de onderneming gegevens opgehaald en teruggegeven.  <br />\r\nDaarnaast worden ook de vestigingen van de onderneming teruggegeven. <br />\r\nHet betreft vestigingen die op dit moment actief zijn.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_OndernemingOrganisatieV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Onderneming",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                },
                "example": {
                  "AanvangAGBCode": "2016-01-01T00:00:00",
                  "EindeAGBCode": null,
                  "AGBCode": "20000004",
                  "CorrespondentieAdres": {
                    "Aanvang": "2016-01-01T00:00:00",
                    "Einde": null,
                    "Huisnummer": 18,
                    "HuisnummerToevoeging": "",
                    "Plaats": "ZEIST",
                    "Postcode": "3708JE  ",
                    "Straat": "Sparrenheuvel"
                  },
                  "Naam": "Actieve onderneming 3",
                  "Vestigingen": [
                    {
                      "AanvangAGBCode": "2016-01-01T00:00:00",
                      "EindeAGBCode": null,
                      "AanvangRelatie": "2016-01-01T00:00:00",
                      "EindeRelatie": null,
                      "AGBCode": "30000003",
                      "BezoekAdres": {
                        "Aanvang": "2016-01-01T00:00:00",
                        "Einde": null,
                        "Huisnummer": 18,
                        "HuisnummerToevoeging": "",
                        "Plaats": "ZEIST",
                        "Postcode": "3708JE  ",
                        "Straat": "Sparrenheuvel"
                      },
                      "Naam": "Actieve vestiging 2"
                    },
                    {
                      "AanvangAGBCode": "2016-01-01T00:00:00",
                      "EindeAGBCode": null,
                      "AanvangRelatie": "2016-01-01T00:00:00",
                      "EindeRelatie": null,
                      "AGBCode": "30000004",
                      "BezoekAdres": {
                        "Aanvang": "2016-01-01T00:00:00",
                        "Einde": null,
                        "Huisnummer": 18,
                        "HuisnummerToevoeging": "",
                        "Plaats": "ZEIST",
                        "Postcode": "3708JE  ",
                        "Straat": "Sparrenheuvel"
                      },
                      "Naam": "Actieve vestiging 3"
                    },
                    {
                      "AanvangAGBCode": "2016-01-01T00:00:00",
                      "EindeAGBCode": null,
                      "AanvangRelatie": "2016-01-01T00:00:00",
                      "EindeRelatie": null,
                      "AGBCode": "30000005",
                      "BezoekAdres": {
                        "Aanvang": "2016-01-01T00:00:00",
                        "Einde": null,
                        "Huisnummer": 18,
                        "HuisnummerToevoeging": "",
                        "Plaats": "ZEIST",
                        "Postcode": "3708JE  ",
                        "Straat": "Sparrenheuvel"
                      },
                      "Naam": "Actieve vestiging 4"
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Onderneming niet actief, Onderneming bevat geen actieve vestigingen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/ondernemingen/{agbcode}/relaties/{peildatum}": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen van actieve relaties van een onderneming op peildatum",
        "description": "Op basis van een gegeven AGB-code en peildatum worden de relaties van de betreffende onderneming opgehaald en teruggegeven. <br />\r\nDe relaties met andere ondernemingen, vestigingen en zorgverleners die direct aan de onderneming gekoppeld zijn worden getoond. <br />\r\nHet betreft relaties waarvan de peildatum binnen de geldigheidsperiode valt.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_RelatiesMetPeildatumV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "peildatum",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "20000001",
                  "Naam": "Actieve onderneming 1",
                  "Relaties": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "AGBCode": "30000001",
                      "Naam": "",
                      "Rol": {
                        "Code": "17",
                        "Omschrijving": "Vestiging van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "2",
                    "Omschrijving": "Onderneming"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Zorgpartij niet actief, Geen relaties gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/ondernemingen/{agbcode}/relaties/organisatie/{peildatum}": {
      "get": {
        "tags": [
          "Onderneming"
        ],
        "summary": "Raadplegen vestigingen bij een onderneming op peildatum",
        "description": "Op basis van een gegeven AGB-code van een onderneming of een vestiging en peildatum worden de onderneming gegevens opgehaald en teruggegeven.  <br />\r\nDaarnaast worden ook de vestigingen van de onderneming teruggegeven. <br />\r\nHet betreft vestigingen waarvan de peildatum binnen de geldigheidsperiode valt.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Onderneming_OrganisatieMetPeildatumV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "peildatum",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Onderneming",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                },
                "example": {
                  "AanvangAGBCode": "2016-01-01T00:00:00",
                  "EindeAGBCode": null,
                  "AGBCode": "20000001",
                  "CorrespondentieAdres": {
                    "Aanvang": "2016-01-01T00:00:00",
                    "Einde": null,
                    "Huisnummer": 18,
                    "HuisnummerToevoeging": "",
                    "Plaats": "ZEIST",
                    "Postcode": "3708JE  ",
                    "Straat": "Sparrenheuvel"
                  },
                  "Naam": "Actieve onderneming 1",
                  "Vestigingen": [
                    {
                      "AanvangAGBCode": "2016-01-01T00:00:00",
                      "EindeAGBCode": null,
                      "AanvangRelatie": "2016-01-01T00:00:00",
                      "EindeRelatie": null,
                      "AGBCode": "30000001",
                      "BezoekAdres": {
                        "Aanvang": "2016-01-01T00:00:00",
                        "Einde": null,
                        "Huisnummer": 18,
                        "HuisnummerToevoeging": "",
                        "Plaats": "ZEIST",
                        "Postcode": "3708JE  ",
                        "Straat": "Sparrenheuvel"
                      },
                      "Naam": "Actieve vestiging 1"
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Onderneming.OndernemingOrganisatie"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Onderneming niet actief, Onderneming bevat geen actieve vestigingen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/doelen": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB028: Raadplegen van alle doelen",
        "description": "Geeft een lijst van geldige doelen terug.<br />\r\nCode ELEMENT maxLength = 2 numeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Doelen",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Doelen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Doelen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Doel"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Doelen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Doel"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Doelen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Doel"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Doelen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Doel"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Doelen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Doel"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/landen": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "COD032-NEN: Raadplegen van alle landen",
        "description": "Geeft een lijst van geldige landen terug. Zie ook https://www.vektis.nl/standaardisatie/codelijsten/COD032-NEN. <br />\r\nCode ELEMENT length = 2 alfanumeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Landen",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Landen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Landen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Land"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Landen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Land"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Landen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Land"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Landen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Land"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Landen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Land"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/adrestypes": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB022: Raadplegen van alle adrestypes",
        "description": "Geeft een lijst van geldige adrestypes terug.<br />\r\nCode ELEMENT maxLength = 2 numeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_AdresTypes",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Adrestypes",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Adrestypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AdresType"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Adrestypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AdresType"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Adrestypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AdresType"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Adrestypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AdresType"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Adrestypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AdresType"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/beheerders": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB011: Raadplegen van alle Beheerders/verleners agbcode",
        "description": "Geeft een lijst van geldige beheerders/verleners agbcode terug.<br />\r\nCode ELEMENT maxLength = 4 numeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Beheerders",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Beheerders",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Beheerders",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Beheerder"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Beheerders",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Beheerder"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Beheerders",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Beheerder"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Beheerders",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Beheerder"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Beheerders",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Beheerder"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/geslachten": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "COD046: Raadplegen van alle geldige geslachten",
        "description": "Geeft een lijst van geldige geslachten terug.<br />\r\nCode ELEMENT maxLength = 1 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Geslachten",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Geslachten",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Geslachten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Geslacht"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Geslachten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Geslacht"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Geslachten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Geslacht"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Geslachten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Geslacht"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Geslachten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Geslacht"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/provincies": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB014: Raadplegen van alle provincies",
        "description": "Geeft een lijst van geldige provincies terug.<br />\r\nCode ELEMENT length = 1 alfanumeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Provincies",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Provincies",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Provincies",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Provincie"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Provincies",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Provincie"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Provincies",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Provincie"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Provincies",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Provincie"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Provincies",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Provincie"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/erkenningen": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB029: Raadplegen van alle geldige erkenningen",
        "description": "Geeft een lijst van geldige erkenningen terug.<br />\r\nCode ELEMENT length = 6 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Erkenningen",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Erkenningen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Erkenningen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Erkenning"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Erkenningen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Erkenning"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Erkenningen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Erkenning"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Erkenningen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Erkenning"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Erkenningen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Erkenning"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/redeneneinde": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB009: Raadplegen van geldige redenen voor beeindigen lidmaatschap(erkenning)",
        "description": "Geeft een lijst van geldige \"redenen einde\" terug voor het beeindigen van erkenningen.<br />\r\nCode ELEMENT maxLength = 2 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_RedenenEinde",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Redenen voor beeindigen erkenningen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Redeneneindes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RedenenEinde"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Redeneneindes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RedenenEinde"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Redeneneindes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RedenenEinde"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Redeneneindes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RedenenEinde"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Redeneneindes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RedenenEinde"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/relatietypes": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB020: Raadplegen van alle relatietypes",
        "description": "Geeft een lijst van geldige relatietypes terug.<br />\r\nCode ELEMENT maxLength = 2 numeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_RelatieTypes",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Relatietypes",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Relatietypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieType"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Relatietypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieType"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Relatietypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieType"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Relatietypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieType"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Relatietypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieType"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/voorvoegsels": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "NAM040: Raadplegen van alle geldige voorvoegsels",
        "description": "Geeft een lijst van geldige voorvoegsels terug..<br />\r\nCode ELEMENT maxLength = 12 alfanumeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Voorvoegsels",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Voorvoegsels",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Voorvoegsels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Voorvoegsel"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Voorvoegsels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Voorvoegsel"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Voorvoegsels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Voorvoegsel"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Voorvoegsels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Voorvoegsel"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Voorvoegsels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Voorvoegsel"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/kwalificaties": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB018: Raadplegen van alle geldige kwalificaties",
        "description": "Geeft een lijst van valide kwalificaties terug.<br />\r\nCode ELEMENT length = 4 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Kwalificaties",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Kwalificaties",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/relatierollen": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB012: Raadplegen van alle relatierollen",
        "description": "Geeft een lijst van geldige relatierollen terug.<br />\r\nCode ELEMENT maxLength = 2 numeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_RelatieRollen",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Relatierollen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieRol"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieRol"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieRol"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieRol"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.RelatieRol"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgpartijtypes": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB001: Raadplegen van alle zorgpartijtypes",
        "description": "Geeft een lijst van geldige zorgpartijtypes terug.<br />\r\nCode ELEMENT maxLength = 1 numeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_ZorgpartijTypes",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Zorgpartijtypes",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgpartijtypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgpartijtypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgpartijtypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgpartijtypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgpartijtypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/academischetitels": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB010: Raadplegen van alle geldige academische titels",
        "description": "Geeft een lijst van geldige academische titels terug.<br />\r\nCode ELEMENT maxLength = 12 alfanumeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_AcademischeTitels",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Academische titels",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Academischetitels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AcademischeTitel"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Academischetitels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AcademischeTitel"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Academischetitels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AcademischeTitel"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Academischetitels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AcademischeTitel"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Academischetitels",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.AcademischeTitel"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/communicatiegegeventypes": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB021: Raadplegen van alle communicatiegegeventypes",
        "description": "Geeft een lijst van geldige communicatiegegeventypes terug.<br />\r\nCode ELEMENT maxLength = 2 numeriek.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_CommunicatieGegevenTypes",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Communicatiegegeventypes",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "CommunicatiegegevenTypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.CommunicatiegegevenType"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "CommunicatiegegevenTypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.CommunicatiegegevenType"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "CommunicatiegegevenTypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.CommunicatiegegevenType"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "CommunicatiegegevenTypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.CommunicatiegegevenType"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "CommunicatiegegevenTypes",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.CommunicatiegegevenType"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgsoorten/zorgverlener": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB015: Raadplegen van alle geldige zorgsoorten voor een zorgverlener",
        "description": "Geeft een lijst van geldige zorgsoorten voor een zorgverlener terug.<br />\r\nCode ELEMENT length = 2 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_ZorgsoortenZorgverlener",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Zorgsoorten",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/kwalificaties/zorgverlener": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB018: Raadplegen van alle geldige kwalificaties voor zorgverleners",
        "description": "Geeft een lijst van geldige kwalificaties voor zorgverleners terug.<br />\r\nCode ELEMENT length = 4 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_KwalificatiesZorgverlener",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Kwalificaties",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgsoorten/ondernemingvestiging": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB016: Raadplegen van alle geldige zorgsoorten voor een onderneming en vestiging",
        "description": "Geeft een lijst van valide zorgsoorten voor een onderneming en vestiging terug.<br />\r\nCode ELEMENT length = 2 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_ZorgsoortenOndernemingVestiging",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Zorgsoorten",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Zorgsoorten",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/kwalificaties/ondernemingvestiging": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB018: Raadplegen van alle geldige kwalificaties voor ondernemingen en vestigingen",
        "description": "Geeft een lijst van geldige kwalificaties voor ondernemingen en vestigingen terug.<br />\r\nCode ELEMENT length = 4 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_KwalificatiesOndernemingVestiging",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Kwalificaties",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Kwalificaties",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Kwalificatie"
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/relaties/werkzaambij/zorgverlener/rollen": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB012: Raadplegen van geldige werkzaambijrollen voor een zorgverlener",
        "description": "Geeft een lijst van geldige werkzaam bij rollen terug. Dit is een subset van AGB012.<br />\r\nCode ELEMENT maxLength = 2 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_WerkzaamBijRollen",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Rollen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/relaties/arbeidsrelatie/zorgverlener/rollen": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "AGB012: Raadplegen van arbeidsrelatierollen voor een zorgverlener",
        "description": "Geeft een lijst van geldige arbeidsrelatie rollen terug. Dit is een subset van AGB012.<br />\r\n           Code ELEMENT maxLength = 2 numeriek in een string.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_ArbeidsRelatieRollen",
        "parameters": [
        ],
        "responses": {
          "200": {
            "description": "Rollen",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "array",
                  "xml": {
                    "name": "Rollen",
                    "namespace": "https://agb-api.vektis.nl/raadplegen",
                    "wrapped": true
                  },
                  "items": {
                    "$ref": "#/components/schemas/Referentiegegevens.Rol"
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/adres/correspondentie/{postcode}/{huisnummer}": {
      "get": {
        "tags": [
          "Referentiegegevens"
        ],
        "summary": "Verifieren van een adres tegen AGB",
        "description": "DEPRECATED : Methode komt in komende Cloud-Release te vervallen, en zal niet worden vervangen.<br />\r\nOp basis van een gegeven postcode/huisnummer combinatie koppelt deze service terug of de gegeven postcode/huisnummer combinatie bekend is bij AGB.<br /><br /><h4>Available for Roles</h4>Referentiegegevens",
        "operationId": "Referentiegegevens_Bekend",
        "parameters": [
          {
            "name": "postcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "huisnummer",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "OK",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer postcode, Ongeldige invoer huisnummer",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "Adres niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        },
        "deprecated": true
      }
    },
    "/v2/test/{number}": {
      "get": {
        "tags": [
          "Test"
        ],
        "summary": "Test aanroep",
        "description": "Aanroep bedoeld voor connectiviteitstest. Kan gebruikt worden om te pollen of de service beschikbaar is.",
        "operationId": "Test_Get",
        "parameters": [
          {
            "name": "number",
            "in": "path",
            "required": true,
            "schema": {
              "type": "integer",
              "format": "int32"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Testmodel",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/TestModel"
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/TestModel"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/TestModel"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/TestModel"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/TestModel"
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "503": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/vestigingen/{agbcode}": {
      "get": {
        "tags": [
          "Vestiging"
        ],
        "summary": "Raadplegen van basisinformatie van een vestiging",
        "description": "Op basis van een gegeven AGB-code wordt de basisinformatie van de betreffende vestiging opgehaald en teruggegeven. <br />\r\nDeze basisinformatie vertelt wie de vestiging is, waarvoor deze gekwalificeerd is, waar deze gevestigd is en hoe deze bereikbaar is. <br />\r\nHet betreft adressen, communicatiegegevens, erkenningen en kwalificaties die op dit moment actief zijn. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Vestiging_Basisinformatie",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Vestiging",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                },
                "example": {
                  "Aanvang": "2016-01-01T00:00:00",
                  "Einde": null,
                  "Adressen": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Huisnummer": 18,
                      "HuisnummerToevoeging": "",
                      "Land": {
                        "Code": "NL",
                        "Omschrijving": "NEDERLAND"
                      },
                      "Plaats": "ZEIST",
                      "Postcode": "3708JE  ",
                      "Provincie": {
                        "Code": "M",
                        "Omschrijving": "Utrecht"
                      },
                      "Straat": "Sparrenheuvel",
                      "Type": {
                        "Code": "1",
                        "Omschrijving": "Bezoekadres"
                      }
                    }
                  ],
                  "AGBCode": "30000001",
                  "Communicatiegegevens": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Doel": {
                        "Code": "1",
                        "Omschrijving": "Algemeen"
                      },
                      "Gegeven": "email@vestiging1.nl",
                      "Type": {
                        "Code": "1",
                        "Omschrijving": "E-mail"
                      }
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Doel": {
                        "Code": "1",
                        "Omschrijving": "Algemeen"
                      },
                      "Gegeven": "030-1234567",
                      "Type": {
                        "Code": "2",
                        "Omschrijving": "Telefoonnummer"
                      }
                    }
                  ],
                  "Erkenningen": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "100101",
                      "Omschrijving": "Inschrijving handelsregister",
                      "RegistratieNummer": "19543274514"
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "100170",
                      "Omschrijving": "Toelating Ministerie van VWS/CIBG Verpleeginrichtingen",
                      "RegistratieNummer": "64657685464"
                    }
                  ],
                  "Handelsnaam": "Actieve vestiging 1",
                  "Kwalificaties": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "0100",
                      "Omschrijving": "Huisarts",
                      "NictizCode": "Z3",
                      "Patiententerm": "Huisartsenpraktijk"
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "4700",
                      "Omschrijving": "Gecombineerde verpleeginrichtingen",
                      "NictizCode": "X3",
                      "Patiententerm": "Verpleeghuis en verzorgingshuis"
                    }
                  ],
                  "Naam": "Actieve vestiging 1",
                  "StatutaireNaam": "",
                  "ZorgpartijType": {
                    "Code": "3",
                    "Omschrijving": "Vestiging"
                  },
                  "BeheerderVerlenerAGBCode": {
                    "Code": "3000",
                    "Omschrijving": "Vektis"
                  },
                  "Zorgsoort": {
                    "Code": "47",
                    "Omschrijving": "Gecombineerde Verpleeginrichtingen"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/vestigingen/mutaties/{vanaf}": {
      "get": {
        "tags": [
          "Vestiging"
        ],
        "summary": "Raadplegen van vestigingen met mutaties",
        "description": "Op basis van een gegeven peildatum worden de vestigingen die zijn aangepast sinds de peildatum opgehaald en teruggegeven. <br />\r\nDeze gegevens zijn bedoeld om de gegevens bij de klant te synchroniseren met de gegevens in het AGB-register. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Vestiging_ZorgpartijMutaties",
        "parameters": [
          {
            "name": "vanaf",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Mutaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                },
                "example": {
                  "Zorgpartijen": [
                    {
                      "AGBCode": "30000001",
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige peildatum",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/vestigingen/{agbcode}/relaties": {
      "get": {
        "tags": [
          "Vestiging"
        ],
        "summary": "Raadplegen van huidige actieve relaties van een vestiging",
        "description": "Op basis van een gegeven AGB-code worden de relaties van de betreffende vestiging opgehaald en teruggegeven. <br />\r\nDe relaties met de onderneming en zorgverleners die direct aan de vestiging gekoppeld zijn worden getoond. <br />\r\nHet betreft relaties die op dit moment actief zijn.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Vestiging_VestigingRelatiesV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "30000003",
                  "Naam": "Actieve vestiging 2",
                  "Relaties": [
                    {
                      "Aanvang": "2017-01-10T10:16:31.623",
                      "Einde": null,
                      "AGBCode": "20000004",
                      "Naam": "Actieve onderneming 3",
                      "Rol": {
                        "Code": "16",
                        "Omschrijving": "Onderneming van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "2",
                        "Omschrijving": "Onderneming"
                      }
                    },
                    {
                      "Aanvang": "2017-01-10T13:08:56.963",
                      "Einde": null,
                      "AGBCode": "10000001",
                      "Naam": "B DE VRIES",
                      "Rol": {
                        "Code": "3",
                        "Omschrijving": "In loondienst bij"
                      },
                      "Type": {
                        "Code": "1",
                        "Omschrijving": "Werkzaam bij"
                      },
                      "Zorgaanbod": {
                        "Code": "9113",
                        "Omschrijving": "Verpleegkundigen niveau 5 PGB"
                      },
                      "ZorgpartijType": {
                        "Code": "1",
                        "Omschrijving": "Zorgverlener"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "3",
                    "Omschrijving": "Vestiging"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Vestiging niet actief, Relaties niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/vestigingen/{agbcode}/{peildatum}": {
      "get": {
        "tags": [
          "Vestiging"
        ],
        "summary": "Raadplegen van basisinformatie van een vestiging op peildatum",
        "description": "Op basis van een gegeven AGB-code en peildatum wordt de basisinformatie van de betreffende vestiging opgehaald en teruggegeven. <br />\r\nDeze basisinformatie vertelt wie de vestiging is, waarvoor deze gekwalificeerd is, waar deze gevestigd is en hoe deze bereikbaar is. <br />\r\nHet betreft adressen, communicatiegegevens, erkenningen en kwalificaties waarvan de peildatum binnen de geldigheidsperiode valt. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "VestigingMetPeildatum",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "peildatum",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Vestiging",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                },
                "example": {
                  "Aanvang": "2016-01-01T00:00:00",
                  "Einde": "2018-01-01T00:00:00",
                  "Adressen": [],
                  "AGBCode": "30000002",
                  "Communicatiegegevens": [],
                  "Erkenningen": [],
                  "Handelsnaam": "Niet actieve vestiging 1",
                  "Kwalificaties": [],
                  "Naam": "Niet actieve vestiging 1",
                  "StatutaireNaam": "",
                  "ZorgpartijType": {
                    "Code": "3",
                    "Omschrijving": "Vestiging"
                  },
                  "BeheerderVerlenerAGBCode": {
                    "Code": "3000",
                    "Omschrijving": "Vektis"
                  },
                  "Zorgsoort": {
                    "Code": "01",
                    "Omschrijving": "Huisartsen"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Vestiging.Vestiging"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/vestigingen/{agbcode}/relaties/totaal": {
      "get": {
        "tags": [
          "Vestiging"
        ],
        "summary": "Raadplegen van alle relaties van een vestiging",
        "description": "Op basis van een gegeven AGB-code worden de relaties van de betreffende vestiging opgehaald en teruggegeven. <br />\r\nDe relaties met de onderneming en zorgverleners die direct aan de vestiging gekoppeld zijn worden getoond. <br />\r\nHet betreft alle relaties, dus actieve, reeds beëindigde en eventueel toekomstige relaties.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Vestiging_VestigingRelatiesTotaalV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "30000003",
                  "Naam": "Actieve vestiging 2",
                  "Relaties": [
                    {
                      "Aanvang": "2017-01-10T10:16:31.623",
                      "Einde": null,
                      "AGBCode": "20000004",
                      "Naam": "Actieve onderneming 3",
                      "Rol": {
                        "Code": "16",
                        "Omschrijving": "Onderneming van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "2",
                        "Omschrijving": "Onderneming"
                      }
                    },
                    {
                      "Aanvang": "2017-01-10T13:08:56.963",
                      "Einde": null,
                      "AGBCode": "10000001",
                      "Naam": "B DE VRIES",
                      "Rol": {
                        "Code": "3",
                        "Omschrijving": "In loondienst bij"
                      },
                      "Type": {
                        "Code": "1",
                        "Omschrijving": "Werkzaam bij"
                      },
                      "Zorgaanbod": {
                        "Code": "9113",
                        "Omschrijving": "Verpleegkundigen niveau 5 PGB"
                      },
                      "ZorgpartijType": {
                        "Code": "1",
                        "Omschrijving": "Zorgverlener"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "3",
                    "Omschrijving": "Vestiging"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Zorgpartij niet actief, Geen relaties gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/vestigingen/mutaties/{zorgsoort}/{vanaf}": {
      "get": {
        "tags": [
          "Vestiging"
        ],
        "summary": "Raadplegen van vestigingen met mutaties binnen het opgegeven zorgsoort.",
        "description": "Op basis van een gegeven peildatum en zorgsoort worden de vestigingen die zijn aangepast sinds de peildatum opgehaald en teruggegeven. <br />\r\nDeze gegevens zijn bedoeld om de gegevens bij de klant te synchroniseren met de gegevens in het AGB-register. <br />\r\nAlleen de vestigingen met de betreffende zorgsoort worden teruggegeven.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Vestiging_MutatiesMetZorgsoort",
        "parameters": [
          {
            "name": "zorgsoort",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "vanaf",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Mutaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                },
                "example": {
                  "Zorgpartijen": [
                    {
                      "AGBCode": "30000001",
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige peildatum of zorgsoort",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/vestigingen/{agbcode}/relaties/{peildatum}": {
      "get": {
        "tags": [
          "Vestiging"
        ],
        "summary": "Raadplegen van actieve relaties van een vestiging op peildatum",
        "description": "Op basis van een gegeven AGB-code en peildatum worden de relaties van de betreffende vestiging opgehaald en teruggegeven. <br />\r\nDe relaties met de onderneming en zorgverleners die direct aan de vestiging gekoppeld zijn worden getoond. <br />\r\nHet betreft relaties waarvan de peildatum binnen de geldigheidsperiode valt.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Vestiging_RelatiesMetPeildatumV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "peildatum",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "30000004",
                  "Naam": "Actieve vestiging 3",
                  "Relaties": [
                    {
                      "Aanvang": "2017-01-10T10:16:31.627",
                      "Einde": null,
                      "AGBCode": "20000004",
                      "Naam": "Actieve onderneming 3",
                      "Rol": {
                        "Code": "16",
                        "Omschrijving": "Onderneming van"
                      },
                      "Type": {
                        "Code": "7",
                        "Omschrijving": "Organisatie"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "2",
                        "Omschrijving": "Onderneming"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "3",
                    "Omschrijving": "Vestiging"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Vestiging niet actief, Relaties niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgpartijen/mutaties/{vanaf}": {
      "get": {
        "tags": [
          "Zorgpartij"
        ],
        "summary": "Raadplegen van zorgpartijen met mutaties",
        "description": "Op basis van een gegeven peildatum worden de zorgpartijen die zijn aangepast sinds de peildatum opgehaald en teruggegeven. <br />\r\nDeze gegevens zijn bedoeld om de gegevens bij de klant te synchroniseren met de gegevens in het AGB-register. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgpartij_ZorgpartijMutaties",
        "parameters": [
          {
            "name": "vanaf",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Mutaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                },
                "example": {
                  "Zorgpartijen": [
                    {
                      "AGBCode": "10000001",
                      "ZorgpartijType": {
                        "Code": "1",
                        "Omschrijving": "Zorgverlener"
                      }
                    },
                    {
                      "AGBCode": "10000002",
                      "ZorgpartijType": {
                        "Code": "1",
                        "Omschrijving": "Zorgverlener"
                      }
                    },
                    {
                      "AGBCode": "20000001",
                      "ZorgpartijType": {
                        "Code": "2",
                        "Omschrijving": "Onderneming"
                      }
                    },
                    {
                      "AGBCode": "30000001",
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige peildatum",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgpartijen/mutaties/{zorgsoort}/{vanaf}": {
      "get": {
        "tags": [
          "Zorgpartij"
        ],
        "summary": "Raadplegen van zorgpartijen met mutaties binnen het opgegeven zorgsoort.",
        "description": "Op basis van een gegeven peildatum en zorgsoort worden de zorgpartijen die zijn aangepast sinds de peildatum opgehaald en teruggegeven. <br />\r\nDeze gegevens zijn bedoeld om de gegevens bij de klant te synchroniseren met de gegevens in het AGB-register. <br />\r\nAlleen de zorgpartijen met de betreffende zorgsoort worden teruggegeven.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgpartij_MutatiesMetZorgsoort",
        "parameters": [
          {
            "name": "zorgsoort",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "vanaf",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Mutaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                },
                "example": {
                  "Zorgpartijen": [
                    {
                      "AGBCode": "20000001",
                      "ZorgpartijType": {
                        "Code": "2",
                        "Omschrijving": "Onderneming"
                      }
                    },
                    {
                      "AGBCode": "30000001",
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige peildatum of zorgsoort",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgverleners/{agbcode}": {
      "get": {
        "tags": [
          "Zorgverlener"
        ],
        "summary": "Raadplegen van basisinformatie van een zorgverlener",
        "description": "Op basis van een gegeven AGB-code wordt de basisinformatie van de betreffende zorgverlener opgehaald en teruggegeven. <br />\r\nDeze basisinformatie vertelt wie de zorgverlener is en waarvoor deze gekwalificeerd is. <br />\r\nHet betreft erkenningen en kwalificaties die op dit moment actief zijn. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgverlener_Basisinformatie",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Zorgverlener",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                },
                "example": {
                  "AGBCode": "10000001",
                  "Aanvang": "2016-01-01T00:00:00",
                  "Einde": null,
                  "Voorletters": "B",
                  "Tussenvoegsel": "DE",
                  "Achternaam": "VRIES",
                  "GeboortenaamTussenvoegsel": "",
                  "Geboortenaam": "SMIT",
                  "AcademischeTitel": null,
                  "Geslacht": {
                    "Code": "0",
                    "Omschrijving": ""
                  },
                  "GeboorteDatum": "1986-01-10T00:00:00",
                  "Kwalificaties": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "9113",
                      "Omschrijving": "Verpleegkundigen niveau 5 PGB",
                      "NictizCode": "",
                      "Patiententerm": ""
                    }
                  ],
                  "Erkenningen": [
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "100458",
                      "Omschrijving": "RIBIZ verpleegkundige",
                      "RegistratieNummer": "51398145574"
                    },
                    {
                      "Aanvang": "2016-01-01T00:00:00",
                      "Einde": null,
                      "Code": "101139",
                      "Omschrijving": "HBO diploma Verpleegkundige",
                      "RegistratieNummer": "15796485358"
                    }
                  ],
                  "Zorgsoort": {
                    "Code": "91",
                    "Omschrijving": "Verpleegkundigen"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgverleners/mutaties/{vanaf}": {
      "get": {
        "tags": [
          "Zorgverlener"
        ],
        "summary": "Raadplegen van zorgverleners met mutaties",
        "description": "Op basis van een gegeven peildatum worden de zorgverleners die zijn aangepast sinds de peildatum opgehaald en teruggegeven. <br />\r\nDeze gegevens zijn bedoeld om de gegevens bij de klant te synchroniseren met de gegevens in het AGB-register. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgverlener_ZorgpartijMutaties",
        "parameters": [
          {
            "name": "vanaf",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Mutaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                },
                "example": {
                  "Zorgpartijen": [
                    {
                      "AGBCode": "10000001",
                      "ZorgpartijType": {
                        "Code": "1",
                        "Omschrijving": "Zorgverlener"
                      }
                    },
                    {
                      "AGBCode": "10000002",
                      "ZorgpartijType": {
                        "Code": "1",
                        "Omschrijving": "Zorgverlener"
                      }
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige peildatum",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgverleners/{agbcode}/relaties": {
      "get": {
        "tags": [
          "Zorgverlener"
        ],
        "summary": "Raadplegen van de huidige actieve relaties van een zorgverlener",
        "description": "Op basis van een gegeven AGB-code worden de relaties van de betreffende zorgverlener opgehaald en teruggegeven. <br />\r\nDe actieve relaties met de vestiging(en) en onderneming die direct aan de zorgverlener gekoppeld zijn worden getoond.  <br />\r\nHet betreft relaties die op dit moment actief zijn.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgverlener_ZorgverlenerRelatiesV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "10000001",
                  "Naam": "B DE VRIES",
                  "Relaties": [
                    {
                      "Aanvang": "2017-01-10T12:58:14.287",
                      "Einde": null,
                      "AGBCode": "30000003",
                      "Naam": "Actieve vestiging 2",
                      "Rol": {
                        "Code": "3",
                        "Omschrijving": "In loondienst bij"
                      },
                      "Type": {
                        "Code": "1",
                        "Omschrijving": "Werkzaam bij"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "1",
                    "Omschrijving": "Zorgverlener"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Zorgverlener niet actief, Geen relaties gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgverleners/{agbcode}/{peildatum}": {
      "get": {
        "tags": [
          "Zorgverlener"
        ],
        "summary": "Raadplegen van basisinformatie van een zorgverlener op peildatum",
        "description": "Op basis van een gegeven AGB-code en peildatum wordt de basisinformatie van de betreffende zorgverlener opgehaald en teruggegeven. <br />\r\nDeze basisinformatie vertelt wie de zorgverlener is en waarvoor deze gekwalificeerd is. <br />\r\nHet betreft erkenningen en kwalificaties waarvan de peildatum binnen de geldigheidsperiode valt. <br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgverlener_BasisMetPeildatum",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "peildatum",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Zorgverlener",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                },
                "example": {
                  "AGBCode": "10000003",
                  "Aanvang": "2016-01-01T00:00:00",
                  "Einde": "2018-01-01T00:00:00",
                  "Voorletters": "T",
                  "Tussenvoegsel": "DE",
                  "Achternaam": "JONG",
                  "GeboortenaamTussenvoegsel": "VAN DEN",
                  "Geboortenaam": "BERG",
                  "AcademischeTitel": null,
                  "Geslacht": {
                    "Code": "0",
                    "Omschrijving": ""
                  },
                  "GeboorteDatum": "1965-12-25T00:00:00",
                  "Kwalificaties": [],
                  "Erkenningen": [],
                  "Zorgsoort": {
                    "Code": "91",
                    "Omschrijving": "Verpleegkundigen"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Zorgverlener.Zorgverlener"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgverleners/{agbcode}/relaties/totaal": {
      "get": {
        "tags": [
          "Zorgverlener"
        ],
        "summary": "Raadplegen van alle relaties van een zorgverlener",
        "description": "Op basis van een gegeven AGB-code worden de relaties van de betreffende zorgverlener opgehaald en teruggegeven. <br />\r\nDe actieve relaties met de vestiging(en) en onderneming die direct aan de zorgverlener gekoppeld zijn worden getoond.  <br />\r\nHet betreft alle relaties, dus actieve, reeds beëindigde en eventueel toekomstige relaties.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgverlener_ZorgverlenerRelatiesTotaalV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "10000001",
                  "Naam": "B DE VRIES",
                  "Relaties": [
                    {
                      "Aanvang": "2017-01-10T12:58:14.287",
                      "Einde": null,
                      "AGBCode": "30000003",
                      "Naam": "Actieve vestiging 2",
                      "Rol": {
                        "Code": "3",
                        "Omschrijving": "In loondienst bij"
                      },
                      "Type": {
                        "Code": "1",
                        "Omschrijving": "Werkzaam bij"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "1",
                    "Omschrijving": "Zorgverlener"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Zorgverlener niet actief, Geen relaties gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgverleners/mutaties/{zorgsoort}/{vanaf}": {
      "get": {
        "tags": [
          "Zorgverlener"
        ],
        "summary": "Raadplegen van zorgverleners met mutaties binnen het opgegeven zorgsoort.",
        "description": "Op basis van een gegeven peildatum en zorgsoort worden de zorgverleners die zijn aangepast sinds de peildatum opgehaald en teruggegeven. <br />\r\nDeze gegevens zijn bedoeld om de gegevens bij de klant te synchroniseren met de gegevens in het AGB-register. <br />\r\nAlleen de zorgverleners met de betreffende zorgsoort worden teruggegeven.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgverlener_MutatiesMetZorgsoort",
        "parameters": [
          {
            "name": "zorgsoort",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "vanaf",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Mutaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                },
                "example": {
                  "Zorgpartijen": [
                    {
                      "AGBCode": "10000002",
                      "ZorgpartijType": {
                        "Code": "1",
                        "Omschrijving": "Zorgverlener"
                      }
                    }
                  ]
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige peildatum of zorgsoort",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    },
    "/v2/zorgverleners/{agbcode}/relaties/{peildatum}": {
      "get": {
        "tags": [
          "Zorgverlener"
        ],
        "summary": "Raadplegen relaties van een zorgverlener op peildatum",
        "description": "Op basis van een gegeven AGB-code en peildatum worden de relaties van de betreffende zorgverlener opgehaald en teruggegeven. <br />\r\nDe actieve relaties met de vestiging(en) en onderneming die direct aan de zorgverlener gekoppeld zijn worden getoond.  <br />\r\nHet betreft relaties waarvan de peildatum binnen de geldigheidsperiode valt.<br /><br /><h4>Available for Roles</h4>RaadplegenZorgpartij",
        "operationId": "Zorgverlener_RelatiesMetPeildatumV2",
        "parameters": [
          {
            "name": "agbcode",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          },
          {
            "name": "peildatum",
            "in": "path",
            "required": true,
            "schema": {
              "type": "string"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "Relaties",
            "content": {
              "application/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                },
                "example": {
                  "AGBCode": "10000001",
                  "Naam": "B DE VRIES",
                  "Relaties": [
                    {
                      "Aanvang": "2017-01-10T12:58:14.287",
                      "Einde": null,
                      "AGBCode": "30000003",
                      "Naam": "Actieve vestiging 2",
                      "Rol": {
                        "Code": "3",
                        "Omschrijving": "In loondienst bij"
                      },
                      "Type": {
                        "Code": "1",
                        "Omschrijving": "Werkzaam bij"
                      },
                      "Zorgaanbod": null,
                      "ZorgpartijType": {
                        "Code": "3",
                        "Omschrijving": "Vestiging"
                      }
                    }
                  ],
                  "ZorgpartijType": {
                    "Code": "1",
                    "Omschrijving": "Zorgverlener"
                  }
                }
              },
              "text/json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/problem+json": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "application/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              },
              "text/xml": {
                "schema": {
                  "$ref": "#/components/schemas/v2.Relatie.ZorgpartijRelaties"
                }
              }
            }
          },
          "400": {
            "description": "Ongeldige invoer AGB-code",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "401": {
            "description": "U bent niet gemachtigd voor deze methode",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "404": {
            "description": "AGB-code niet gevonden, Zorgverlener niet actief, Geen relaties gevonden",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          },
          "500": {
            "description": "Technische fout",
            "content": {
              "application/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/problem+json": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "application/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              },
              "text/xml": {
                "schema": {
                  "type": "string",
                  "xml": {
                    "name": ""
                  }
                }
              }
            }
          }
        }
      }
    }
  },
  "components": {
    "schemas": {
      "v2.Onderneming.Onderneming": {
        "required": [
          "AGBCode",
          "Aanvang",
          "BeheerderVerlenerAGBCode",
          "Handelsnaam",
          "Naam",
          "ZorgpartijType",
          "Zorgsoort"
        ],
        "type": "object",
        "properties": {
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Adressen": {
            "type": "array",
            "description": "Lijst van actieve adressen op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.ZorgpartijAdres"
            }
          },
          "AGBCode": {
            "maxLength": 8,
            "minLength": 8,
            "type": "string",
            "description": "CODE, length = 8 numeriek in een string, AGBCode",
            "xml": {
              "name": ""
            }
          },
          "Communicatiegegevens": {
            "type": "array",
            "description": "Lijst van actieve communicatiegegevens op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.Communicatiegegeven"
            }
          },
          "Erkenningen": {
            "type": "array",
            "description": "Lijst van actieve erkenningen op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.ZorgpartijErkenning"
            }
          },
          "Handelsnaam": {
            "maxLength": 150,
            "minLength": 1,
            "type": "string",
            "description": "HANDELSNAAM1, maxLength = 150, Eerste handelsnaam waaronder de onderneming bekend is bij het handelsregister",
            "xml": {
              "name": ""
            }
          },
          "Kwalificaties": {
            "type": "array",
            "description": "Lijst van actieve kwalificatiegegevens op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.ZorgpartijKwalificatie"
            }
          },
          "Naam": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "ROEPNAAM, maxLength = 60, Naam waaronder de onderneming bekend is of vermeld wil staan",
            "xml": {
              "name": ""
            }
          },
          "StatutaireNaam": {
            "maxLength": 150,
            "minLength": 0,
            "type": "string",
            "description": "STATUTAIRENAAM, maxLength = 150, Statutaire naam waaronder de onderneming bekend is bij het handelsregister",
            "xml": {
              "name": ""
            }
          },
          "ZorgpartijType": {
            "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
          },
          "BeheerderVerlenerAGBCode": {
            "$ref": "#/components/schemas/Referentiegegevens.Beheerder"
          },
          "Zorgsoort": {
            "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
          }
        },
        "description": "",
        "xml": {
          "name": "Onderneming"
        }
      },
      "v2.Zorgpartij.ZorgpartijAdres": {
        "required": [
          "Aanvang",
          "Huisnummer",
          "Land",
          "Plaats",
          "Postcode",
          "Straat",
          "Type"
        ],
        "type": "object",
        "properties": {
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer het adres geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer het adres geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Huisnummer": {
            "type": "integer",
            "description": "HUISNUMMER, Huisnummer van het adres",
            "format": "int32",
            "xml": {
              "name": ""
            }
          },
          "HuisnummerToevoeging": {
            "maxLength": 8,
            "minLength": 0,
            "type": "string",
            "description": "HUISNUMMERTOEVOEGING, maxLength = 8, Huisnummertoevoeging van het adres",
            "xml": {
              "name": ""
            }
          },
          "Land": {
            "$ref": "#/components/schemas/Referentiegegevens.Land"
          },
          "Plaats": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "PLAATS, maxLength = 60, Plaatsnaam van het adres",
            "xml": {
              "name": ""
            }
          },
          "Postcode": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "POSTCODE, maxLength = 8, Postcode van het adres voor zowel binnenlandse als buitenlandse adressen",
            "xml": {
              "name": ""
            }
          },
          "Provincie": {
            "$ref": "#/components/schemas/Referentiegegevens.Provincie"
          },
          "Straat": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "STRAATNAAM, maxLength = 60, Straatnaam van het adres",
            "xml": {
              "name": ""
            }
          },
          "Type": {
            "$ref": "#/components/schemas/Referentiegegevens.AdresType"
          }
        },
        "description": "",
        "xml": {
          "name": "Adres"
        }
      },
      "v2.Zorgpartij.Communicatiegegeven": {
        "required": [
          "Aanvang",
          "Doel",
          "Gegeven",
          "Type"
        ],
        "type": "object",
        "properties": {
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer het communicatiegegeven geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer het communicatiegegeven geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Doel": {
            "$ref": "#/components/schemas/Referentiegegevens.Doel"
          },
          "Gegeven": {
            "maxLength": 128,
            "minLength": 1,
            "type": "string",
            "description": "NUMMER_URL, maxLength = 128, Waarde communicatiegegeven, t.w. een telefoonnummer of een URL",
            "xml": {
              "name": ""
            }
          },
          "Type": {
            "$ref": "#/components/schemas/Referentiegegevens.CommunicatiegegevenType"
          }
        },
        "description": "",
        "xml": {
          "name": "Communicatiegegeven"
        }
      },
      "v2.Zorgpartij.ZorgpartijErkenning": {
        "required": [
          "Aanvang",
          "Code",
          "Omschrijving",
          "RegistratieNummer"
        ],
        "type": "object",
        "properties": {
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer de erkenning geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer de erkenning geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Code": {
            "maxLength": 6,
            "minLength": 6,
            "type": "string",
            "description": "ERKENNINGTYPE, length = 6 numeriek in een string, Code erkenning, waarde komt voor in codelijst AGB029 of in referentiegegevens 'erkenningen'",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van het erkenningtype",
            "xml": {
              "name": ""
            }
          },
          "RegistratieNummer": {
            "maxLength": 32,
            "minLength": 1,
            "type": "string",
            "description": "REFERENTIE, maxLength = 32, Nummer, code of lidmaatschapsnummer van de erkenning zoals dat bij de erkenner bekend is",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Erkenning"
        }
      },
      "v2.Zorgpartij.ZorgpartijKwalificatie": {
        "required": [
          "Aanvang",
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer de kwalificatie geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer de kwalificatie geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Code": {
            "maxLength": 4,
            "minLength": 4,
            "type": "string",
            "description": "KWALIFICATIETYPE, length = 4 numeriek in een string, Code kwalificatie, waarde komt voor in codelijst AGB018 of in referentiegegevens 'kwalificaties'",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van het kwalificatietype",
            "xml": {
              "name": ""
            }
          },
          "NictizCode": {
            "maxLength": 6,
            "minLength": 0,
            "type": "string",
            "description": "NICTIZ_ID, maxLength = 6, Nictiz code die zorgaanbieders gebruiken voor deze kwalificatie",
            "xml": {
              "name": ""
            }
          },
          "Patiententerm": {
            "maxLength": 255,
            "minLength": 0,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Patiententerm horend bij de Nictiz code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Kwalificatie"
        }
      },
      "Referentiegegevens.ZorgpartijType": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "ZorgpartijType"
        }
      },
      "Referentiegegevens.Beheerder": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Beheerder"
        }
      },
      "Referentiegegevens.Zorgsoort": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Zorgsoort"
        }
      },
      "Referentiegegevens.Land": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Land"
        }
      },
      "Referentiegegevens.Provincie": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Provincie"
        }
      },
      "Referentiegegevens.AdresType": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "AdresType"
        }
      },
      "Referentiegegevens.Doel": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Doel"
        }
      },
      "Referentiegegevens.CommunicatiegegevenType": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "CommunicatiegegevenType"
        }
      },
      "v1.Zorgpartij.ZorgpartijMutaties": {
        "type": "object",
        "properties": {
          "Zorgpartijen": {
            "type": "array",
            "description": "Lijst van gewijzigde zorgpartijen op peildatum en eventueel zorgsoort",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v1.Zorgpartij.ZorgpartijMutatie"
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Mutaties"
        }
      },
      "v1.Zorgpartij.ZorgpartijMutatie": {
        "required": [
          "AGBCode",
          "ZorgpartijType"
        ],
        "type": "object",
        "properties": {
          "AGBCode": {
            "maxLength": 8,
            "minLength": 8,
            "type": "string",
            "description": "CODE, length = 8 numeriek in een string, AGBCode",
            "xml": {
              "name": ""
            }
          },
          "ZorgpartijType": {
            "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
          }
        },
        "description": "",
        "xml": {
          "name": "Zorgpartij"
        }
      },
      "v2.Relatie.ZorgpartijRelaties": {
        "required": [
          "AGBCode",
          "Naam",
          "Relaties",
          "ZorgpartijType"
        ],
        "type": "object",
        "properties": {
          "AGBCode": {
            "maxLength": 8,
            "minLength": 8,
            "type": "string",
            "description": "CODE, length = 8 numeriek in een string, AGBCode",
            "xml": {
              "name": ""
            }
          },
          "Naam": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "ROEPNAAM, maxLength = 60, Naam waaronder de zorgpartij bekend is of vermeld wil staan",
            "xml": {
              "name": ""
            }
          },
          "Relaties": {
            "type": "array",
            "description": "Lijst van relaties (afhankelijk van parameter)",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Relatie.Relatie"
            }
          },
          "ZorgpartijType": {
            "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
          }
        },
        "description": "",
        "xml": {
          "name": "Zorgpartij"
        }
      },
      "v2.Relatie.Relatie": {
        "required": [
          "AGBCode",
          "Aanvang",
          "Naam",
          "Rol",
          "Type",
          "ZorgpartijType"
        ],
        "type": "object",
        "properties": {
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer een relatie geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum vanaf wanneer een relatie geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "AGBCode": {
            "maxLength": 8,
            "minLength": 8,
            "type": "string",
            "description": "CODE, length = 8 numeriek in een string, AGBCode",
            "xml": {
              "name": ""
            }
          },
          "Naam": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "RELATIENAAM, maxLength = 60, Naam die een relatie kan hebben",
            "xml": {
              "name": ""
            }
          },
          "Rol": {
            "$ref": "#/components/schemas/Referentiegegevens.RelatieRol"
          },
          "Type": {
            "$ref": "#/components/schemas/Referentiegegevens.RelatieType"
          },
          "Zorgaanbod": {
            "$ref": "#/components/schemas/Referentiegegevens.Zorgaanbod"
          },
          "ZorgpartijType": {
            "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
          }
        },
        "description": "",
        "xml": {
          "name": "Relatie"
        }
      },
      "Referentiegegevens.RelatieRol": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Rol"
        }
      },
      "Referentiegegevens.RelatieType": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Type"
        }
      },
      "Referentiegegevens.Zorgaanbod": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Zorgaanbod"
        }
      },
      "v2.Onderneming.OndernemingOrganisatie": {
        "required": [
          "AGBCode",
          "AanvangAGBCode",
          "Naam",
          "Vestigingen"
        ],
        "type": "object",
        "properties": {
          "AanvangAGBCode": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "EindeAGBCode": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "AGBCode": {
            "maxLength": 8,
            "minLength": 8,
            "type": "string",
            "description": "CODE, length = 8 numeriek in een string, AGBCode",
            "xml": {
              "name": ""
            }
          },
          "CorrespondentieAdres": {
            "$ref": "#/components/schemas/v2.Onderneming.Adres"
          },
          "Naam": {
            "maxLength": 150,
            "minLength": 1,
            "type": "string",
            "description": "HANDELSNAAM1, maxLength = 150, Eerste handelsnaam waaronder de onderneming bekend is bij het handelsregister",
            "xml": {
              "name": ""
            }
          },
          "Vestigingen": {
            "type": "array",
            "description": "Lijst van actieve vestigingen op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Onderneming.VestigingOrganisatie"
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Onderneming"
        }
      },
      "v2.Onderneming.Adres": {
        "required": [
          "Aanvang",
          "Huisnummer",
          "Plaats",
          "Postcode",
          "Straat"
        ],
        "type": "object",
        "properties": {
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer het adres geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Huisnummer": {
            "type": "integer",
            "description": "HUISNUMMER, Huisnummer van het adres",
            "format": "int32",
            "xml": {
              "name": ""
            }
          },
          "HuisnummerToevoeging": {
            "maxLength": 8,
            "minLength": 0,
            "type": "string",
            "description": "HUISNUMMERTOEVOEGING, maxLength = 8, Huisnummertoevoeging van het adres",
            "xml": {
              "name": ""
            }
          },
          "Plaats": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "PLAATS, maxLength = 60, Plaatsnaam van het adres",
            "xml": {
              "name": ""
            }
          },
          "Postcode": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "POSTCODE, maxLength = 8, Postcode van het adres voor zowel binnenlandse als buitenlandse adressen",
            "xml": {
              "name": ""
            }
          },
          "Straat": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "STRAATNAAM, maxLength = 60, Straatnaam van het adres",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Adres"
        }
      },
      "v2.Onderneming.VestigingOrganisatie": {
        "required": [
          "AGBCode",
          "AanvangAGBCode",
          "AanvangRelatie",
          "BezoekAdres",
          "Naam"
        ],
        "type": "object",
        "properties": {
          "AanvangAGBCode": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "EindeAGBCode": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "AanvangRelatie": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum tot en met wanneer een relatie geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "EindeRelatie": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum vanaf wanneer een relatie geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "AGBCode": {
            "maxLength": 8,
            "minLength": 8,
            "type": "string",
            "description": "CODE, length = 8 numeriek in een string, AGBCode",
            "xml": {
              "name": ""
            }
          },
          "BezoekAdres": {
            "$ref": "#/components/schemas/v2.Onderneming.Adres"
          },
          "Naam": {
            "maxLength": 150,
            "minLength": 1,
            "type": "string",
            "description": "HANDELSNAAM1, maxLength = 150, Eerste handelsnaam waaronder de vestiging bekend is bij het handelsregister",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Vestiging"
        }
      },
      "Referentiegegevens.Geslacht": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Geslacht"
        }
      },
      "Referentiegegevens.Erkenning": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Erkenning"
        }
      },
      "Referentiegegevens.RedenenEinde": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "RedenenEinde"
        }
      },
      "Referentiegegevens.Voorvoegsel": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Voorvoegsel"
        }
      },
      "Referentiegegevens.Kwalificatie": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Kwalificatie"
        }
      },
      "Referentiegegevens.AcademischeTitel": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Academischetitel"
        }
      },
      "Referentiegegevens.Rol": {
        "required": [
          "Code",
          "Omschrijving"
        ],
        "type": "object",
        "properties": {
          "Code": {
            "maxLength": 8,
            "minLength": 1,
            "type": "string",
            "description": "Code ELEMENT, lengte en (alfa)numeriek is afhankelijk van de codelijst",
            "xml": {
              "name": ""
            }
          },
          "Omschrijving": {
            "maxLength": 255,
            "minLength": 1,
            "type": "string",
            "description": "BETEKENIS, maxLength = 255, Omschrijving van de code",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "Rol"
        }
      },
      "TestModel": {
        "type": "object",
        "properties": {
          "Number": {
            "type": "integer",
            "description": "",
            "format": "int32",
            "xml": {
              "name": ""
            }
          },
          "MultipliedBySelf": {
            "type": "integer",
            "description": "",
            "format": "int32",
            "xml": {
              "name": ""
            }
          }
        },
        "description": "",
        "xml": {
          "name": "TestModel",
          "namespace": "https://agb-api.vektis.nl/raadplegen",
          "wrapped": false
        }
      },
      "v2.Vestiging.Vestiging": {
        "required": [
          "AGBCode",
          "Aanvang",
          "BeheerderVerlenerAGBCode",
          "Handelsnaam",
          "Naam",
          "ZorgpartijType",
          "Zorgsoort"
        ],
        "type": "object",
        "properties": {
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Adressen": {
            "type": "array",
            "description": "Lijst van actieve adressen op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.ZorgpartijAdres"
            }
          },
          "AGBCode": {
            "maxLength": 8,
            "minLength": 8,
            "type": "string",
            "description": "CODE, length = 8 numeriek in een string, AGBCode",
            "xml": {
              "name": ""
            }
          },
          "Communicatiegegevens": {
            "type": "array",
            "description": "Lijst van actieve communicatiegegevens op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.Communicatiegegeven"
            }
          },
          "Erkenningen": {
            "type": "array",
            "description": "Lijst van actieve erkenningen op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.ZorgpartijErkenning"
            }
          },
          "Handelsnaam": {
            "maxLength": 150,
            "minLength": 1,
            "type": "string",
            "description": "HANDELSNAAM1, maxLength = 150, Eerste handelsnaam waaronder de vestiging bekend is bij het handelsregister",
            "xml": {
              "name": ""
            }
          },
          "Kwalificaties": {
            "type": "array",
            "description": "Lijst van actieve kwalificatiegegevens op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.ZorgpartijKwalificatie"
            }
          },
          "Naam": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "ROEPNAAM, maxLength = 60, Naam waaronder de vestiging bekend is of vermeld wil staan",
            "xml": {
              "name": ""
            }
          },
          "StatutaireNaam": {
            "maxLength": 150,
            "minLength": 0,
            "type": "string",
            "description": "Statutaire naam vestiging is niet gevuld",
            "xml": {
              "name": ""
            }
          },
          "ZorgpartijType": {
            "$ref": "#/components/schemas/Referentiegegevens.ZorgpartijType"
          },
          "BeheerderVerlenerAGBCode": {
            "$ref": "#/components/schemas/Referentiegegevens.Beheerder"
          },
          "Zorgsoort": {
            "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
          }
        },
        "description": "",
        "xml": {
          "name": "Vestiging"
        }
      },
      "v2.Zorgverlener.Zorgverlener": {
        "required": [
          "AGBCode",
          "Aanvang",
          "Achternaam",
          "GeboorteDatum",
          "Geslacht",
          "Voorletters",
          "Zorgsoort"
        ],
        "type": "object",
        "properties": {
          "AGBCode": {
            "maxLength": 8,
            "minLength": 8,
            "type": "string",
            "description": "CODE, length = 8 numeriek in een string, AGBCode",
            "xml": {
              "name": ""
            }
          },
          "Aanvang": {
            "type": "string",
            "description": "DATUMAANVANG, dateTime, Datum vanaf wanneer een AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Einde": {
            "type": "string",
            "description": "DATUMEINDE, dateTime, Datum tot en met wanneer de AGBCode geldig is",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Voorletters": {
            "maxLength": 6,
            "minLength": 1,
            "type": "string",
            "description": "VOORLETTERS, maxLength = 6, Initialen van de zorgverlener",
            "xml": {
              "name": ""
            }
          },
          "Tussenvoegsel": {
            "maxLength": 12,
            "minLength": 0,
            "type": "string",
            "description": "TUSSENVOEGSEL, maxLength = 12, Tussenvoegsel waaronder de zorgverlener bekend is, waarde komt voor in codelijst NAM040 of referentiegegevens 'Tussenvoegsels'",
            "xml": {
              "name": ""
            }
          },
          "Achternaam": {
            "maxLength": 60,
            "minLength": 1,
            "type": "string",
            "description": "Achternaam, maxLength = 60, Achternaam waaronder de zorgverlener bekend is",
            "xml": {
              "name": ""
            }
          },
          "GeboortenaamTussenvoegsel": {
            "maxLength": 12,
            "minLength": 0,
            "type": "string",
            "description": "GEBOORTENAAMTUSSENVOEGSEL, maxLength = 12, Tussenvoegsel die zorgverlener van oorsprong, vanaf de geboorte, heeft, waarde komt voor in codelijst NAM040 of referentiegegevens 'tussenvoegsels'\")]",
            "xml": {
              "name": ""
            }
          },
          "Geboortenaam": {
            "maxLength": 60,
            "minLength": 0,
            "type": "string",
            "description": "GEBOORTENAAM, maxLength = 60, Achternaam die zorgverlener van oorsprong, vanaf de geboorte, heeft",
            "xml": {
              "name": ""
            }
          },
          "AcademischeTitel": {
            "$ref": "#/components/schemas/Referentiegegevens.AcademischeTitel"
          },
          "Geslacht": {
            "$ref": "#/components/schemas/Referentiegegevens.Geslacht"
          },
          "GeboorteDatum": {
            "type": "string",
            "description": "DATUMGEBOORTE, dateTime, Geboortedatum van de zorgverlener",
            "format": "date-time",
            "xml": {
              "name": ""
            }
          },
          "Kwalificaties": {
            "type": "array",
            "description": "Lijst van actieve kwalificatiegegevens op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.ZorgpartijKwalificatie"
            }
          },
          "Erkenningen": {
            "type": "array",
            "description": "Lijst van actieve erkenningen op peildatum",
            "xml": {
              "wrapped": true
            },
            "items": {
              "$ref": "#/components/schemas/v2.Zorgpartij.ZorgpartijErkenning"
            }
          },
          "Zorgsoort": {
            "$ref": "#/components/schemas/Referentiegegevens.Zorgsoort"
          }
        },
        "description": "",
        "xml": {
          "name": "Zorgverlener"
        }
      }
    }
  },
  "x-original-swagger-version": "2.0"
}
}

/// Install VektisAGB API
ClassMethod GenerateAll() As %Status
{
    #dim xData as %Dictionary.CompiledXData = ##class(%Dictionary.CompiledXData).%OpenId($CLASSNAME() _ "||spec")
    set spec = ##class(%DynamicObject).%FromJSON(xData.Data)

    return ..Generate("CONNECTORSPKG.VektisAGB.Api.Client", spec)
}

/// Generate API helper
ClassMethod Generate(packageName As %String, specification, modelOnly As %Boolean = 0) As %Status
{
    set %zverbose = 1
    // We want a Production and Operation; no Business Services, Business Processes or Utils
    set features("noBS") = 1
    set features("noBP") = 1
    set features("noUtils") = 1
    set features("noExtRef") = 1    ; avoid resolving external ref by validator.swagger.io
    set features("modelOnly") = modelOnly
    set features("model.property.norequired") = 1
    set features("reponse-is-text") = 1 // Set Response stream in Generic response as %Stream.GlobalCharacter

    #; set sc = ##class(dc.openapi.client.Spec).generateApp(packageName, url, .features, externals)
    set sc = ##class(dc.openapi.suite.Generate).ProductionClient(packageName, specification, .features)

    if $$$ISERR(sc)
    {
        write "generateApp " _ packageName _ " failed, error ", $SYSTEM.Status.GetErrorText(sc),!
        return sc
    }

    write "Successfully generated ",packageName,!

    return sc
}

}
