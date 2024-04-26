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
    },
    {
      "name": "HTTPConnectorTest",
      "description": "HTTP Connector Test"
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
    },
    "/httptest": {
      "get": {
        "tags": [ 
          "HTTPConnectorTest"
        ],
        "x-ISC_CORS": true,
        "summary": "Respond slow after the specified number of seconds or return the specified http status",
        "operationId": "HttpTest",
        "produces": [
          "application/json"
        ],
        "parameters": [ 
          {
            "in": "query",
            "name": "delay",
            "description": "Delay for the specified number of seconds",
            "type": "integer",
            "format": "int32"
          },
          {
            "in": "query",
            "name": "http-status",
            "description": "Return the specified HTTP Status code",
            "type": "integer",
            "format": "int32"
          }
        ]
      }
    },
    "/apilog": {
      "get": {
        "tags": [
          "HTTPConnectorTest"
        ],
        "summary": "Opvragen van API logging",
        "operationId": "GetApiLog",
        "produces": [
          "application/json"
        ],
        "parameters": [ 
          {
            "in": "query",
            "name": "endpoint",
            "description": "Filter on api endpoint",
            "type": "string"
          },
          {
            "in": "query",
            "name": "from",
            "description": "UTC-timestamp van eerste op te vragen logregel",
            "type": "string",
            "format": "date-time"
          },
          {
            "in": "query",
            "name": "to",
            "description": "UTC-timestamp van laatste op te vragen logregel",
            "type": "string",
            "format": "date-time"
          },
          {
            "in": "query",
            "name": "count",
            "description": "requested page-size",
            "type": "integer",
            "format": "int32"
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "schema": {
              "$ref": "#/definitions/ApiLogResponse"
            }
          },
          "400": {
            "description": "Foute waarde in query parameter",
            "schema": {
              "$ref": "#/definitions/ApiResponse"
            }
          },
          "500": {
            "description": "Probleem in API, probeer het later opnieuw",
            "schema": {
              "$ref": "#/definitions/ApiResponse"
            }
          }
        }
      }
    }
  },
  "definitions": {
    "ApiLogResponse": {
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
            "logregels": {
              "type": "array",
              "items": {
                "$ref": "#/definitions/ApiLogRegel"
              }
            }
          }
        }
      ]
    },
    "ApiLogRegel": {
      "type": "object",
      "properties": {
        "date-time": {
          "type": "string",
          "format": "date-time",
          "description": "When was the call processed"
        },
        "method": {
          "type": "string",
          "description": "Method that was used"
        },
        "endpoint": {
          "type": "string",
          "description": "Endpoint that was called"
        }
      },
      "additionalProperties": false
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
