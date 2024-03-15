/// .weel-known API for OneDrive
Class CONNECTORSPKG.API.v1.spec Extends %REST.Spec [ ProcedureBlock ]
{

Parameter UseSession = 0;

/// If Strict=0 (false), then only the swagger properties which are needed for code generation are checked during compile.
/// If Strict=1 (true), then all swagger properties are checked during compile.
Parameter Strict = 1;

Projection Fixer As CONNECTORSPKG.API.Fixer;

/// Projection to fix generated classes
/// For support of CORS
Parameter HandleCorsRequest = 1;

XData OpenAPI [ MimeType = application/json ]
{
{
  "swagger": "2.0",
  "info": {
    "title": "OneDrive .well-known API",
    "version": "1.0"
  },
  "host": "iris.dev.iscdev.nl",
  "basePath": "/.well-known",
  "tags": [
    {
      "name": "VerifiedPublisher",
      "description": "Verified Publisher"
    }
  ],
  "paths": {
    "/swagger": {
      "get": {
        "tags": [ 
          "Miscellaneous"
        ],
        "x-ISC_CORS": true,
        "summary": "Get Swagger spec of this API",
        "operationId": "OpenAPI",
        "produces": [
          "application/json"
        ],
        "security": [
          {
            "basicAuth": []
          }
        ],
        "parameters": [],
        "responses": {
          "200": {
            "description": "Succes"
          },
          "404": {
            "description": "Not Found"
          },
          "500": {
            "description": "Internal Server Error"
          }
        }
      }
    },
    "/microsoft-identity-association.json": {
      "get": {
        "tags": [ 
          "VerifiedPublisher"
        ],
        "x-ISC_CORS": true,
        "summary": "Get Microsoft Identity Association",
        "operationId": "MSIdentityAssociation",
        "produces": [
          "application/json"
        ],
        "security": [
          {
            "basicAuth": []
          }
        ],
        "parameters": [],
        "responses": {
          "200": {
            "description": "Succes"
          },
          "404": {
            "description": "Not Found"
          },
          "500": {
            "description": "Internal Server Error"
          }
        }
      }
    }
  },
  "definitions": {
    "MonitoringResponse": {
      "allOf": [
        {
          "$ref": "#/definitions/ApiResponse"
        },
        {
          "type": "object",
          "properties": {
            "next": {
              "description": "UTC-tijdstip van het volgende op te vragen process",
              "type": "string",
              "format": "date-time",
              "example": "2023-03-20T15:14:45.7384083Z"
            },
            "processes": {
              "type": "array",
              "items": {
                "$ref": "#/definitions/Process"
              }
            }
          }
        }
      ]
    },
    "Process": {
      "type": "object",
      "properties": {
        "name": {
          "type": "string",
          "description": "Name of Process"
        },
        "sessionId": {
          "type": "string",
          "description": "IRIS Session ID, can be used to find the relevant messages"
        },
        "status": {
          "type": "string",
          "description": "Status of the process",
          "enum": [
            "Running",
            "OK",
            "Failed"
          ]
        },
        "startedAt": {
          "type": "string",
          "format": "date-time",
          "description": "When did the process start"
        },
        "finishedAt": {
          "type": "string",
          "format": "date-time",
          "description": "When did the process finish"
        },
        "elapsedTime": {
          "type": "string",
          "format": "time",
          "description": "How long did this process run (or is it running)"
        },
        "error": {
          "type": "string",
          "description": "Error message when status is Failed"
        }
      },
      "additionalProperties": false
    },
    "DossierCollectRequest": {
      "type": "object",
      "properties": {
        "dossierId": {
          "type": "string",
          "description": "The line number in the DossierExport spreadsheet"
        },
        "clientIdentificationNumber": {
          "type":"string",
          "description": "The identificationNumber for the client in Nedap ONS"
        },
        "periodFrom": {
          "type": "string",
          "format": "date",
          "description": "Start date of relevant period"
        },
        "periodTo": {
          "type": "string",
          "format": "date",
          "description": "End date of relevant period"
        },
        "aanvrager": {
          "type": "string",
          "description": "Requester of the export"
        },
        "redenAanvraag": {
          "type": "string",
          "description": "Reason for the request"
        }
      },
      "additionalProperties": false
    },
    "DossierShareRequest": {
      "type": "object",
      "properties": {
        "dossierId": {
          "type": "string",
          "description": "The line number in the DossierExport spreadsheet"
        },
        "emailAddress": {
          "type": "string",
          "description": "email address to share the Dossier to"
        }
      },
      "additionalProperties": false
    },
    "DossierMailRequest": {
      "type": "object",
      "properties": {
        "dossierId": {
          "type": "string",
          "description": "The line number in the DossierExport spreadsheet"
        },
        "aanvrager": {
          "type": "string",
          "description": "Requester of the export"
        },
        "emailAddress": {
          "type": "string",
          "description": "email address to email the Dossier to"
        },
        "phoneNumber": {
          "type": "string",
          "description": "Telephone number for 2FA"
        }
      },
      "additionalProperties": false
    },
    "DossierPrintRequest": {
      "type": "object",
      "properties": {
        "dossierId": {
          "type": "string",
          "description": "The line number in the DossierExport spreadsheet"
        },
        "aanvrager": {
          "type": "string",
          "description": "Requester of the export"
        },
        "userName": {
          "type":"string",
          "description": "userName of target user"
        }
      },
      "additionalProperties": false
    },
    "DossierDeleteRequest": {
      "type": "object",
      "properties": {
        "dossierId": {
          "type": "string",
          "description": "The line number in the DossierExport spreadsheet"
        },
        "folderId": {
          "type":"string",
          "description": "The Id of the Folder. When empty, fetch from Google spreadsheet"
        }
      },
      "additionalProperties": false
    },
    "AsyncApiResponse": {
      "allOf": [
        {
          "$ref": "#/definitions/ApiResponse"
        },
        {
          "type": "object",
          "properties": {
            "sessionId": {
              "type": "string",
              "description": "IRIS Session ID, can be used to find the relevant messages"
            }
          }
        }
      ]
    },
    "ApiResponse": {
      "type": "object",
      "properties": {
        "code": {
          "type": "integer",
          "format": "int32"
        },
        "message": {
          "type": "string"
        }
      }
    }
  }
}
}

}
