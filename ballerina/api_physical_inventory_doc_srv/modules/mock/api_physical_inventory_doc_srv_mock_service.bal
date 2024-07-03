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

service /sap/opu/odata/sap/API_PHYSICAL_INVENTORY_DOC_SRV on ep0 {

    resource function head .() returns http:Response {
        http:Response res = new;
        res.statusCode = 200;
        res.setHeader("X-CSRF-TOKEN", "SAP-Material-Document");
        return res;
    }
    # Reads information on physical inventory document header level
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
    resource function get A_PhysInventoryDocHeader(int? \$top, int? \$skip, string? \$filter, "allpages"|"none"? \$inlinecount, A_PhysInventoryDocHeaderOrderByOptions? \$orderby, A_PhysInventoryDocHeaderSelectOptions? \$select, A_PhysInventoryDocHeaderExpandOptions? \$expand) returns CollectionOfA_PhysInventoryDocHeaderWrapper|http:Response {
        return{
            "d": {
                "results": [
                {
                    "FiscalYear": "2024",
                    "PhysicalInventoryDocument": "10000000"}
                ]
            }
        };
    }

    # Reads information on physical inventory items level
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
    resource function get A_PhysInventoryDocItem(int? \$top, int? \$skip, string? \$filter, "allpages"|"none"? \$inlinecount, A_PhysInventoryDocItemOrderByOptions? \$orderby, A_PhysInventoryDocItemSelectOptions? \$select, A_PhysInventoryDocItemExpandOptions? \$expand) returns CollectionOfA_PhysInventoryDocItemWrapper|http:Response {
        return{
            "d": {
                "results": [
                {
                    "FiscalYear": "2024",
                    "PhysicalInventoryDocument": "10000000"}
                ]
            }
        };
    }

    # Reads information of serial numbers on physical inventory document items level
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
    resource function get A_SerialNumberPhysInventoryDoc(int? \$top, int? \$skip, string? \$filter, "allpages"|"none"? \$inlinecount, A_SerialNumberPhysInventoryDocOrderByOptions? \$orderby, A_SerialNumberPhysInventoryDocSelectOptions? \$select) returns CollectionOfA_SerialNumberPhysInventoryDocWrapper|http:Response {
        return{
            "d": {
                "results": [ 
                {
                    "Equipment": "Table",
                    "FiscalYear": "2024",
                    "PhysicalInventoryDocument": "10000000"}
                ]
            }
        };
    }

    # Creates a physical inventory document
    #
    # + payload - New entity 
    # + return - returns can be any of following types 
    # http:Created (Created entity)
    # http:Response (Error)
    resource function post A_PhysInventoryDocHeader(@http:Payload CreateA_PhysInventoryDocHeader payload) returns A_PhysInventoryDocHeader_1|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }

    # Initiates a recount for the physical inventory document
    #
    # + PhysicalInventoryDocument - Phys. Inventory Doc.  
    # (Value needs to be enclosed in single quotes)
    # + FiscalYear - Fiscal Year  
    # (Value needs to be enclosed in single quotes)
    # + PhysInventoryPlannedCountDate - Planned Count Date  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + DocumentDate - Document Date  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + PhysicalInventoryNumber - Phys. inventory no.  
    # (Value needs to be enclosed in single quotes)
    # + PhysInventoryReferenceNumber - Phys. inventory ref.  
    # (Value needs to be enclosed in single quotes)
    # + PhysicalInventoryDocumentDesc - Description  
    # (Value needs to be enclosed in single quotes)
    # + PostingThresholdValue - Threshold Value  
    # (Value needs to be suffixed with `M`)
    # + PhysInvtryDocHasQtySnapshot - Freeze Book Invtry
    # + PostingIsBlockedForPhysInvtry - Phys. Inv. Block
    # + return - returns can be any of following types 
    # http:Ok (Success)
    # http:Response (Error)
    resource function post InitiateRecount(string PhysicalInventoryDocument, string FiscalYear, string? PhysInventoryPlannedCountDate, string? DocumentDate, string? PhysicalInventoryNumber, string? PhysInventoryReferenceNumber, string? PhysicalInventoryDocumentDesc, string? PostingThresholdValue, boolean? PhysInvtryDocHasQtySnapshot, boolean? PostingIsBlockedForPhysInvtry) returns OkA_PhysInventoryDocHeader_1|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }

    # Initiates a recount for the specific physical inventory document
    #
    # + PhysicalInventoryDocument - Phys. Inventory Doc.  
    # (Value needs to be enclosed in single quotes)
    # + FiscalYear - Fiscal Year  
    # (Value needs to be enclosed in single quotes)
    # + PhysicalInventoryDocumentItem - Item  
    # (Value needs to be enclosed in single quotes)
    # + PhysInventoryPlannedCountDate - Planned Count Date  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + DocumentDate - Document Date  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + PhysicalInventoryNumber - Phys. inventory no.  
    # (Value needs to be enclosed in single quotes)
    # + PhysInventoryReferenceNumber - Phys. inventory ref.  
    # (Value needs to be enclosed in single quotes)
    # + PhysicalInventoryDocumentDesc - Description  
    # (Value needs to be enclosed in single quotes)
    # + PhysInvtryDocHasQtySnapshot - Freeze Book Invtry
    # + PostingIsBlockedForPhysInvtry - Phys. Inv. Block
    # + return - returns can be any of following types 
    # http:Ok (Success)
    # http:Response (Error)
    resource function post InitiateRecountOnItem(string PhysicalInventoryDocument, string FiscalYear, string PhysicalInventoryDocumentItem, string? PhysInventoryPlannedCountDate, string? DocumentDate, string? PhysicalInventoryNumber, string? PhysInventoryReferenceNumber, string? PhysicalInventoryDocumentDesc, boolean? PhysInvtryDocHasQtySnapshot, boolean? PostingIsBlockedForPhysInvtry) returns OkA_PhysInventoryDocItem_1|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }

    # Creates the material document for the differences
    #
    # + PostingThresholdValue - Threshold Value  
    # (Value needs to be suffixed with `M`)
    # + PostingDate - Posting Date  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + PhysicalInventoryDocument - Phys. Inventory Doc.  
    # (Value needs to be enclosed in single quotes)
    # + FiscalYear - Fiscal Year  
    # (Value needs to be enclosed in single quotes)
    # + return - returns can be any of following types 
    # http:Ok (Success)
    # http:Response (Error)
    resource function post PostDifferences(string? PostingThresholdValue, string? PostingDate, string PhysicalInventoryDocument, string FiscalYear) returns OkA_PhysInventoryDocHeader_1|http:Response {
        http:Response res = new;
        res.statusCode = 500;
        return res;
    }

    # Creates the material document for the differences for a specific physical inventory document item
    #
    # + PhysicalInventoryDocumentItem - Item  
    # (Value needs to be enclosed in single quotes)
    # + Material - Material  
    # (Value needs to be enclosed in single quotes)
    # + PhysicalInventoryDocument - Phys. Inventory Doc.  
    # (Value needs to be enclosed in single quotes)
    # + FiscalYear - Fiscal Year  
    # (Value needs to be enclosed in single quotes)
    # + Batch - Batch  
    # (Value needs to be enclosed in single quotes)
    # + ReasonForPhysInvtryDifference - Reason f. Diff.  
    # (Value needs to be enclosed in single quotes)
    # + PostingDate - Posting Date  
    # (Value needs to be enclosed in single quotes and prefixed with `datetime`, e.g. `datetime'2017-12-31T00:00'`)
    # + return - returns can be any of following types 
    # http:Ok (Success)
    # http:Response (Error)
    resource function post PostDifferencesOnItem(string PhysicalInventoryDocumentItem, string Material, string PhysicalInventoryDocument, string FiscalYear, string? Batch, string? ReasonForPhysInvtryDifference, string? PostingDate) returns OkA_PhysInventoryDocItem_1|http:Response {
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