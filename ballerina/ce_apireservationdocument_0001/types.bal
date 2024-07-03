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

import ballerina/constraint;
import ballerina/http;

public type CreateSAP__Message record {
    string code?;
    string message?;
    string? target?;
    string[] additionalTargets?;
    boolean transition?;
    int numericSeverity?;
    string? longtextUrl?;
};

# Represents the Queries record for the operation: listReservationDocuments
public type ListReservationDocumentsQueries record {
    # Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)
    int \$top?;
    # Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)
    string \$filter?;
    # Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)
    ReservationDocumentOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)
    ReservationDocumentExpandOptions \$expand?;
    # Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)
    boolean \$count?;
    # Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)
    ReservationDocumentSelectOptions \$select?;
};

public type CreateA_ReservationDocumentItem_2 record {
    # Material Number
    @constraint:String {maxLength: 18}
    string Product?;
    # Requirements date for the component
    string? MatlCompRequirementDate?;
    @constraint:String {maxLength: 4}
    string Plant?;
    # Goods Movement for Reservation Allowed
    boolean GoodsMovementIsAllowed?;
    @constraint:String {maxLength: 4}
    string StorageLocation?;
    # Batch Number
    @constraint:String {maxLength: 10}
    string Batch?;
    @constraint:String {maxLength: 10}
    string ValuationType?;
    # Debit/Credit Indicator
    @constraint:String {maxLength: 1}
    string DebitCreditCode?;
    # G/L Account Number
    @constraint:String {maxLength: 10}
    string GLAccount?;
    # Acct entered manually
    boolean ResvnAccountIsEnteredManually?;
    # Unit of entry
    @constraint:String {maxLength: 3}
    string EntryUnit?;
    # Final Issue for Reservation
    boolean ReservationItemIsFinallyIssued?;
    # Item is deleted
    boolean ReservationItmIsMarkedForDeltn?;
    # Quantity in unit of entry
    decimal|string ResvnItmRequiredQtyInEntryUnit?;
    @constraint:String {maxLength: 12}
    string GoodsRecipientName?;
    @constraint:String {maxLength: 25}
    string UnloadingPointName?;
    # Item Text
    @constraint:String {maxLength: 50}
    string ReservationItemText?;
    CreateSAP__Message[] SAP__Messages?;
    CreateA_ReservationDocumentHeader_2 _ReservationDocument?;
};

public type CreateA_ReservationDocumentHeader_2 record {
    # Number of reservation/dependent requirements
    @constraint:String {maxLength: 10}
    string Reservation;
    # Movement Type (Inventory Management)
    @constraint:String {maxLength: 3}
    string GoodsMovementType?;
    @constraint:String {maxLength: 10}
    string CostCenter?;
    # Main Asset Number
    @constraint:String {maxLength: 12}
    string AssetNumber?;
    # Asset Subnumber
    @constraint:String {maxLength: 4}
    string AssetSubNumber?;
    # Receiving plant/issuing plant
    @constraint:String {maxLength: 4}
    string IssuingOrReceivingPlant?;
    # Receiving/issuing storage location
    @constraint:String {maxLength: 4}
    string IssuingOrReceivingStorageLoc?;
    # Sales Order Number
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Item Number in Sales Order
    @constraint:String {maxLength: 6}
    string SalesOrderItem?;
    # Delivery schedule for sales order
    @constraint:String {maxLength: 4}
    string SalesOrderScheduleLine?;
    # Base date for reservation
    string? ReservationDate;
    # Check date against factory calendar
    boolean IsCheckedAgainstFactoryCal?;
    # Work Breakdown Structure Element (WBS Element) Edited
    @constraint:String {maxLength: 24}
    string WBSElement?;
    # Order Number
    @constraint:String {maxLength: 12}
    string OrderID?;
    CreateSAP__Message[] SAP__Messages?;
    CreateA_ReservationDocumentItem_2[] _ReservationDocumentItem?;
};

# Represents the Queries record for the operation: getReservationDocument
public type GetReservationDocumentQueries record {
    # Expand related entities, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)
    ReservationDocumentExpandOptions \$expand?;
    # Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)
    ReservationDocumentSelectOptions \$select?;
};

public type A_ReservationDocumentItem_2 record {
    # Number of reservation/dependent requirements
    @constraint:String {maxLength: 10}
    string Reservation?;
    # Item Number of Reservation / Dependent Requirements
    @constraint:String {maxLength: 4}
    string ReservationItem?;
    @constraint:String {maxLength: 1}
    string RecordType?;
    # Material Number
    @constraint:String {maxLength: 18}
    string Product?;
    @constraint:String {maxLength: 2}
    string RequirementType?;
    # Requirements date for the component
    string? MatlCompRequirementDate?;
    @constraint:String {maxLength: 4}
    string Plant?;
    # Goods Movement for Reservation Allowed
    boolean GoodsMovementIsAllowed?;
    @constraint:String {maxLength: 4}
    string StorageLocation?;
    # Batch Number
    @constraint:String {maxLength: 10}
    string Batch?;
    @constraint:String {maxLength: 10}
    string ValuationType?;
    # Debit/Credit Indicator
    @constraint:String {maxLength: 1}
    string DebitCreditCode?;
    @constraint:String {maxLength: 3}
    string BaseUnit?;
    # G/L Account Number
    @constraint:String {maxLength: 10}
    string GLAccount?;
    # Acct entered manually
    boolean ResvnAccountIsEnteredManually?;
    # Movement Type (Inventory Management)
    @constraint:String {maxLength: 3}
    string GoodsMovementType?;
    # Unit of entry
    @constraint:String {maxLength: 3}
    string EntryUnit?;
    # Account Number of Supplier
    @constraint:String {maxLength: 10}
    string Supplier?;
    decimal|string ResvnItmRequiredQtyInBaseUnit?;
    # Final Issue for Reservation
    boolean ReservationItemIsFinallyIssued?;
    # Item is deleted
    boolean ReservationItmIsMarkedForDeltn?;
    # Quantity in unit of entry
    decimal|string ResvnItmRequiredQtyInEntryUnit?;
    decimal|string ResvnItmWithdrawnQtyInBaseUnit?;
    @constraint:String {maxLength: 12}
    string GoodsRecipientName?;
    @constraint:String {maxLength: 25}
    string UnloadingPointName?;
    # Item Text
    @constraint:String {maxLength: 50}
    string ReservationItemText?;
    # Confirmed quantity for availability check in SKU
    decimal|string ConfdQtyForATPInBaseUoM?;
    SAP__Message[] SAP__Messages?;
    A_ReservationDocumentHeader_2 _ReservationDocument?;
};

public type A_ReservationDocumentHeader_2 record {
    # Number of reservation/dependent requirements
    @constraint:String {maxLength: 10}
    string Reservation?;
    # Movement Type (Inventory Management)
    @constraint:String {maxLength: 3}
    string GoodsMovementType?;
    @constraint:String {maxLength: 10}
    string CostCenter?;
    # Main Asset Number
    @constraint:String {maxLength: 12}
    string AssetNumber?;
    # Asset Subnumber
    @constraint:String {maxLength: 4}
    string AssetSubNumber?;
    # Receiving plant/issuing plant
    @constraint:String {maxLength: 4}
    string IssuingOrReceivingPlant?;
    # Receiving/issuing storage location
    @constraint:String {maxLength: 4}
    string IssuingOrReceivingStorageLoc?;
    # Sales Order Number
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Item Number in Sales Order
    @constraint:String {maxLength: 6}
    string SalesOrderItem?;
    # Delivery schedule for sales order
    @constraint:String {maxLength: 4}
    string SalesOrderScheduleLine?;
    # Base date for reservation
    string? ReservationDate?;
    # Check date against factory calendar
    boolean IsCheckedAgainstFactoryCal?;
    # Work Breakdown Structure Element (WBS Element) Edited
    @constraint:String {maxLength: 24}
    string WBSElement?;
    @constraint:String {maxLength: 4}
    string ControllingArea?;
    # Order Number
    @constraint:String {maxLength: 12}
    string OrderID?;
    @constraint:String {maxLength: 12}
    string UserID?;
    # Creation Date
    string? CreationDateTime?;
    # Last Changed By User
    @constraint:String {maxLength: 12}
    string LastChangedByUser?;
    string? LastChangeDateTime?;
    # Clearing company code
    @constraint:String {maxLength: 4}
    string ResvnVerificationCompanyCode?;
    SAP__Message[] SAP__Messages?;
    A_ReservationDocumentItem_2[] _ReservationDocumentItem?;
};

# Represents the Queries record for the operation: listReservationDocumentItems
public type ListReservationDocumentItemsQueries record {
    # Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)
    int \$top?;
    # Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)
    string \$filter?;
    # Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)
    ReservationDocumentItemOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)
    ReservationDocumentItemExpandOptions \$expand?;
    # Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)
    boolean \$count?;
    # Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)
    ReservationDocumentItemSelectOptions \$select?;
};

# Represents the Queries record for the operation: getReservationDocumentOfReservationDocumentItem
public type GetReservationDocumentOfReservationDocumentItemQueries record {
    # Expand related entities, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)
    ReservationDocumentExpandOptions \$expand?;
    # Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)
    ReservationDocumentSelectOptions \$select?;
};

public type ReservationDocumentOrderByOptions ("Reservation"|"Reservation desc"|"GoodsMovementType"|"GoodsMovementType desc"|"CostCenter"|"CostCenter desc"|"AssetNumber"|"AssetNumber desc"|"AssetSubNumber"|"AssetSubNumber desc"|"IssuingOrReceivingPlant"|"IssuingOrReceivingPlant desc"|"IssuingOrReceivingStorageLoc"|"IssuingOrReceivingStorageLoc desc"|"SalesOrder"|"SalesOrder desc"|"SalesOrderItem"|"SalesOrderItem desc"|"SalesOrderScheduleLine"|"SalesOrderScheduleLine desc"|"ReservationDate"|"ReservationDate desc"|"IsCheckedAgainstFactoryCal"|"IsCheckedAgainstFactoryCal desc"|"WBSElement"|"WBSElement desc"|"ControllingArea"|"ControllingArea desc"|"OrderID"|"OrderID desc"|"UserID"|"UserID desc"|"CreationDateTime"|"CreationDateTime desc"|"LastChangedByUser"|"LastChangedByUser desc"|"LastChangeDateTime"|"LastChangeDateTime desc"|"ResvnVerificationCompanyCode"|"ResvnVerificationCompanyCode desc"|"SAP__Messages"|"SAP__Messages desc")[];

# OAuth2 Refresh Token Grant Configs
public type OAuth2RefreshTokenGrantConfig record {|
    *http:OAuth2RefreshTokenGrantConfig;
    # Refresh URL
    string refreshUrl = "https://{host}:{port}";
|};

public type ReservationDocumentItemOrderByOptions ("Reservation"|"Reservation desc"|"ReservationItem"|"ReservationItem desc"|"RecordType"|"RecordType desc"|"Product"|"Product desc"|"RequirementType"|"RequirementType desc"|"MatlCompRequirementDate"|"MatlCompRequirementDate desc"|"Plant"|"Plant desc"|"GoodsMovementIsAllowed"|"GoodsMovementIsAllowed desc"|"StorageLocation"|"StorageLocation desc"|"Batch"|"Batch desc"|"ValuationType"|"ValuationType desc"|"DebitCreditCode"|"DebitCreditCode desc"|"BaseUnit"|"BaseUnit desc"|"GLAccount"|"GLAccount desc"|"ResvnAccountIsEnteredManually"|"ResvnAccountIsEnteredManually desc"|"GoodsMovementType"|"GoodsMovementType desc"|"EntryUnit"|"EntryUnit desc"|"Supplier"|"Supplier desc"|"ResvnItmRequiredQtyInBaseUnit"|"ResvnItmRequiredQtyInBaseUnit desc"|"ReservationItemIsFinallyIssued"|"ReservationItemIsFinallyIssued desc"|"ReservationItmIsMarkedForDeltn"|"ReservationItmIsMarkedForDeltn desc"|"ResvnItmRequiredQtyInEntryUnit"|"ResvnItmRequiredQtyInEntryUnit desc"|"ResvnItmWithdrawnQtyInBaseUnit"|"ResvnItmWithdrawnQtyInBaseUnit desc"|"GoodsRecipientName"|"GoodsRecipientName desc"|"UnloadingPointName"|"UnloadingPointName desc"|"ReservationItemText"|"ReservationItemText desc"|"ConfdQtyForATPInBaseUoM"|"ConfdQtyForATPInBaseUoM desc"|"SAP__Messages"|"SAP__Messages desc")[];

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Configurations related to client authentication
    http:BearerTokenConfig|OAuth2RefreshTokenGrantConfig|http:CredentialsConfig auth;
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
|};

public type CollectionOfA_ReservationDocumentHeader_2 record {
    count \@odata\.count?;
    A_ReservationDocumentHeader_2[] value?;
};

public type UpdateA_ReservationDocumentHeader_2 record {
    @constraint:String {maxLength: 10}
    string CostCenter?;
    # Main Asset Number
    @constraint:String {maxLength: 12}
    string AssetNumber?;
    # Asset Subnumber
    @constraint:String {maxLength: 4}
    string AssetSubNumber?;
    # Receiving plant/issuing plant
    @constraint:String {maxLength: 4}
    string IssuingOrReceivingPlant?;
    # Receiving/issuing storage location
    @constraint:String {maxLength: 4}
    string IssuingOrReceivingStorageLoc?;
    # Sales Order Number
    @constraint:String {maxLength: 10}
    string SalesOrder?;
    # Item Number in Sales Order
    @constraint:String {maxLength: 6}
    string SalesOrderItem?;
    # Delivery schedule for sales order
    @constraint:String {maxLength: 4}
    string SalesOrderScheduleLine?;
    # Base date for reservation
    string? ReservationDate?;
    # Check date against factory calendar
    boolean IsCheckedAgainstFactoryCal?;
    # Work Breakdown Structure Element (WBS Element) Edited
    @constraint:String {maxLength: 24}
    string WBSElement?;
    # Order Number
    @constraint:String {maxLength: 12}
    string OrderID?;
    UpdateSAP__Message[] SAP__Messages?;
};

public type ReservationDocumentItemExpandOptions ("*"|"_ReservationDocument")[];

public type UpdateA_ReservationDocumentItem_2 record {
    # Requirements date for the component
    string? MatlCompRequirementDate?;
    # Goods Movement for Reservation Allowed
    boolean GoodsMovementIsAllowed?;
    @constraint:String {maxLength: 4}
    string StorageLocation?;
    # Batch Number
    @constraint:String {maxLength: 10}
    string Batch?;
    @constraint:String {maxLength: 10}
    string ValuationType?;
    # Debit/Credit Indicator
    @constraint:String {maxLength: 1}
    string DebitCreditCode?;
    # G/L Account Number
    @constraint:String {maxLength: 10}
    string GLAccount?;
    # Acct entered manually
    boolean ResvnAccountIsEnteredManually?;
    # Final Issue for Reservation
    boolean ReservationItemIsFinallyIssued?;
    # Item is deleted
    boolean ReservationItmIsMarkedForDeltn?;
    # Quantity in unit of entry
    decimal|string ResvnItmRequiredQtyInEntryUnit?;
    @constraint:String {maxLength: 12}
    string GoodsRecipientName?;
    @constraint:String {maxLength: 25}
    string UnloadingPointName?;
    # Item Text
    @constraint:String {maxLength: 50}
    string ReservationItemText?;
    UpdateSAP__Message[] SAP__Messages?;
};

# The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.
public type count decimal|string;

public type UpdateSAP__Message record {
    string code?;
    string message?;
    string? target?;
    string[] additionalTargets?;
    boolean transition?;
    int numericSeverity?;
    string? longtextUrl?;
};

public type CollectionOfA_ReservationDocumentItem_2 record {
    count \@odata\.count?;
    A_ReservationDocumentItem_2[] value?;
};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

public type ReservationDocumentSelectOptions ("Reservation"|"GoodsMovementType"|"CostCenter"|"AssetNumber"|"AssetSubNumber"|"IssuingOrReceivingPlant"|"IssuingOrReceivingStorageLoc"|"SalesOrder"|"SalesOrderItem"|"SalesOrderScheduleLine"|"ReservationDate"|"IsCheckedAgainstFactoryCal"|"WBSElement"|"ControllingArea"|"OrderID"|"UserID"|"CreationDateTime"|"LastChangedByUser"|"LastChangeDateTime"|"ResvnVerificationCompanyCode"|"SAP__Messages")[];

public type SAP__Message record {
    string code?;
    string message?;
    string? target?;
    string[] additionalTargets?;
    boolean transition?;
    int numericSeverity?;
    string? longtextUrl?;
};

public type ReservationDocumentItemSelectOptions ("Reservation"|"ReservationItem"|"RecordType"|"Product"|"RequirementType"|"MatlCompRequirementDate"|"Plant"|"GoodsMovementIsAllowed"|"StorageLocation"|"Batch"|"ValuationType"|"DebitCreditCode"|"BaseUnit"|"GLAccount"|"ResvnAccountIsEnteredManually"|"GoodsMovementType"|"EntryUnit"|"Supplier"|"ResvnItmRequiredQtyInBaseUnit"|"ReservationItemIsFinallyIssued"|"ReservationItmIsMarkedForDeltn"|"ResvnItmRequiredQtyInEntryUnit"|"ResvnItmWithdrawnQtyInBaseUnit"|"GoodsRecipientName"|"UnloadingPointName"|"ReservationItemText"|"ConfdQtyForATPInBaseUoM"|"SAP__Messages")[];

# Represents the Queries record for the operation: listReservationDocumentItemsOfReservationDocument
public type ListReservationDocumentItemsOfReservationDocumentQueries record {
    # Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)
    int \$skip?;
    # Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)
    int \$top?;
    # Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)
    string \$filter?;
    # Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)
    ReservationDocumentItemOrderByOptions \$orderby?;
    # Expand related entities, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)
    ReservationDocumentItemExpandOptions \$expand?;
    # Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)
    boolean \$count?;
    # Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)
    ReservationDocumentItemSelectOptions \$select?;
};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

public type ReservationDocumentExpandOptions ("*"|"_ReservationDocumentItem")[];

# Represents the Queries record for the operation: getReservationDocumentItem
public type GetReservationDocumentItemQueries record {
    # Expand related entities, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)
    ReservationDocumentItemExpandOptions \$expand?;
    # Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)
    ReservationDocumentItemSelectOptions \$select?;
};