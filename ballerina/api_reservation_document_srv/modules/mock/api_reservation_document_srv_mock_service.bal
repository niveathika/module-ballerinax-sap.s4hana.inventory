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

service /sap/opu/odata/sap/API_RESERVATION_DOCUMENT_SRV on ep0 {

    resource function head .() returns http:Response {
        http:Response res = new;
        res.statusCode = 200;
        res.setHeader("X-CSRF-TOKEN", "SAP-Material-Document");
        return res;
    }

    # Reads information on reservation document header level
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
    resource function get A_ReservationDocumentHeader(int? \$top, int? \$skip, string? \$filter, "allpages"|"none"? \$inlinecount, A_ReservationDocumentHeaderOrderByOptions? \$orderby, A_ReservationDocumentHeaderSelectOptions? \$select, A_ReservationDocumentHeaderExpandOptions? \$expand) returns CollectionOfA_ReservationDocumentHeaderWrapper|http:Response {
        return {
            "d": {
                "results": [
                    {
                        "Reservation": "20000",
                        "OrderId": "13579"
                    }
                ]
            }
        };
    }

    # Reads information on reservation document items level
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
    resource function get A_ReservationDocumentItem(int? \$top, int? \$skip, string? \$filter, "allpages"|"none"? \$inlinecount, A_ReservationDocumentItemOrderByOptions? \$orderby, A_ReservationDocumentItemSelectOptions? \$select) returns CollectionOfA_ReservationDocumentItemWrapper|http:Response {
        return {
            "d": {
                "results": [
                    {
                        "Reservation": "20000",
                        "ReservationItem": "Fan"
                    }
                ]
            }
        };
    }

    # Creates a reservation document
    #
    # + payload - New entity 
    # + return - returns can be any of following types 
    # http:Created (Created entity)
    # http:Response (Error)
    resource function post A_ReservationDocumentHeader(@http:Payload CreateA_ReservationDocumentHeader payload) returns A_ReservationDocumentHeader_1|http:Response {
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
