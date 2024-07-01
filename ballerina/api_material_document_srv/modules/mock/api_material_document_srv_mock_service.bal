// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;
import ballerina/os;

boolean isBalBuild = os:getEnv("IS_BAL_BUILD") == "true";
string certPathPostFix = isBalBuild ? "../" : "/home/ballerina/ballerina/";

listener http:Listener ep0 = new (9090,
    secureSocket = {
        key: {
            certFile: certPathPostFix + "resources/public.crt",
            keyFile: certPathPostFix + "resources/private.key"
        }
    }
);

service /sap/opu/odata/sap/API_MATERIAL_DOCUMENT_SRV on ep0 {

    resource function head .() returns http:Response {
        http:Response res = new;
        res.statusCode = 200;
        res.setHeader("X-CSRF-TOKEN", "SAP-Material-Document");
        return res;
    }
    # Reads information on material document header level
    #
    # + \$top - Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    # + \$skip - Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    # + \$filter - Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    # + \$inlinecount - Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    # + \$orderby - Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    # + \$select - Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    # + \$expand - Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    # + return - returns can be any of following types 
    # http:Ok (Retrieved entities)
    # http:Response (Error)
    resource function get A_MaterialDocumentHeader(int? \$top, int? \$skip, string? \$filter, "allpages"|"none"? \$inlinecount, A_MaterialDocumentHeaderOrderByOptions? \$orderby, A_MaterialDocumentHeaderSelectOptions? \$select, A_MaterialDocumentHeaderExpandOptions? \$expand) returns CollectionOfA_MaterialDocumentHeaderWrapper|http:Response {
        return{
            "d": {
                "results": [
                {
                    "MaterialDocumentYear": "2024",
                    "MaterialDocument": "1000000000"
                    }
                ]
            }
        };
    }

    # Reads information on material document items level
    #
    # + \$top - Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    # + \$skip - Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    # + \$filter - Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    # + \$inlinecount - Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    # + \$orderby - Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    # + \$select - Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    # + \$expand - Expand related entities, see [Expand](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=63)
    # + return - returns can be any of following types 
    # http:Ok (Retrieved entities)
    # http:Response (Error)
    resource function get A_MaterialDocumentItem(int? \$top, int? \$skip, string? \$filter, "allpages"|"none"? \$inlinecount, A_MaterialDocumentItemOrderByOptions? \$orderby, A_MaterialDocumentItemSelectOptions? \$select, A_MaterialDocumentItemExpandOptions? \$expand) returns CollectionOfA_MaterialDocumentItemWrapper|http:Response {
       return {
            "d": {
                "results": [
                {
                    "Material": "Fan",
                    "SerialNumber": "12222",
                    "MaterialDocument": "1000000000",
                    "MaterialDocumentYear": "2024"
                }
                ]
            } 
        };
    }

    # Reads information of serial numbers on material document items level
    #
    # + \$top - Show only the first n items, see [Paging - Top](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=66)
    # + \$skip - Skip the first n items, see [Paging - Skip](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    # + \$filter - Filter items by property values, see [Filtering](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=64)
    # + \$inlinecount - Include count of items, see [Inlinecount](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=67)
    # + \$orderby - Order items by property values, see [Sorting](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=65)
    # + \$select - Select properties to be returned, see [Select](https://help.sap.com/doc/5890d27be418427993fafa6722cdc03b/Cloud/en-US/OdataV2.pdf#page=68)
    # + return - returns can be any of following types 
    # http:Ok (Retrieved entities)
    # http:Response (Error)
    resource function get A_SerialNumberMaterialDocument(int? \$top, int? \$skip, string? \$filter, "allpages"|"none"? \$inlinecount, A_SerialNumberMaterialDocumentOrderByOptions? \$orderby, A_SerialNumberMaterialDocumentSelectOptions? \$select) returns CollectionOfA_SerialNumberMaterialDocumentWrapper|http:Response {
       return {
            "d": {
                "results": [
                {
                    "Material": "Fan",
                    "SerialNumber": "12222",
                    "MaterialDocument": "1000000000",
                    "MaterialDocumentYear": "2024"
                }
                ]
            }
        };
    }

    # Creates a material document
    #
    # + payload - New entity 
    # + return - returns can be any of following types 
    # http:Created (Created entity)
    # http:Response (Error)
    resource function post A_MaterialDocumentHeader(@http:Payload CreateA_MaterialDocumentHeader payload) returns A_MaterialDocumentHeaderWrapper|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }

    # Cancels a material document
    #
    # + MaterialDocumentYear - Material Doc. Year  
    # (Value needs to be enclosed in single quotes)
    # + MaterialDocument - Material Document  
    # (Value needs to be enclosed in single quotes)
    # + PostingDate - Posting Date  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + return - returns can be any of following types 
    # http:Ok (Success)
    # http:Response (Error)
    resource function post Cancel(string MaterialDocumentYear, string MaterialDocument, string? PostingDate) returns OkA_MaterialDocumentHeaderWrapper|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }

    # Cancels a material document item
    #
    # + MaterialDocumentYear - Material Doc. Year  
    # (Value needs to be enclosed in single quotes)
    # + MaterialDocument - Material Document  
    # (Value needs to be enclosed in single quotes)
    # + MaterialDocumentItem - Material Doc.Item  
    # (Value needs to be enclosed in single quotes)
    # + PostingDate - Posting Date  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + return - returns can be any of following types 
    # http:Ok (Success)
    # http:Response (Error)
    resource function post CancelItem(string MaterialDocumentYear, string MaterialDocument, string MaterialDocumentItem, string? PostingDate) returns OkA_MaterialDocumentItemWrapper|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }

    resource function post \$batch(http:Request request) returns AcceptedAnydata|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }
}
