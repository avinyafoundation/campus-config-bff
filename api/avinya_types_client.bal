import ballerina/http;
import ballerina/graphql;

public isolated client class GlobalDataClient {
    final graphql:Client graphqlClient;
    public isolated function init(string serviceUrl, http:ClientConfiguration clientConfig = {}) returns graphql:ClientError? {
        graphql:Client clientEp = check new (serviceUrl, clientConfig);
        self.graphqlClient = clientEp;
        return;
    }
    remote isolated function getAvinyaTypes() returns GetAvinyaTypesResponse|graphql:ClientError {
        string query = string `query getAvinyaTypes {avinya_types {id active name global_type foundation_type focus level description}}`;
        map<anydata> variables = {};
        json graphqlResponse = check self.graphqlClient->executeWithType(query, variables);
        return <GetAvinyaTypesResponse> check performDataBinding(graphqlResponse, GetAvinyaTypesResponse);
    }

    remote isolated function createAvinyaType(AvinyaType avinyaType) returns CreateAvinyaTypeResponse|graphql:ClientError {
        string query = string `mutation createAvinyaType($avinyaType:AvinyaType!) {add_avinya_type(avinya_type:$avinyaType) {id active name global_type foundation_type focus level description}}`;
        map<anydata> variables = {"avinyaType": avinyaType};
        json graphqlResponse = check self.graphqlClient->executeWithType(query, variables);
        return <CreateAvinyaTypeResponse> check performDataBinding(graphqlResponse, CreateAvinyaTypeResponse);
    }
    remote isolated function updateAvinyaType(AvinyaType avinyaType) returns UpdateAvinyaTypeResponse|graphql:ClientError {
        string query = string `mutation updateAvinyaType($avinyaType:AvinyaType!) {update_avinya_type(avinya_type:$avinyaType) {id active name global_type foundation_type focus level description}}`;
        map<anydata> variables = {"avinyaType": avinyaType};
        json graphqlResponse = check self.graphqlClient->executeWithType(query, variables);
        return <UpdateAvinyaTypeResponse> check performDataBinding(graphqlResponse, UpdateAvinyaTypeResponse);
    }
}
