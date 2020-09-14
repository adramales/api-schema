// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: contacts.proto

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "Contacts.pbrpc.h"
#import "Contacts.pbobjc.h"
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <Protobuf/GPBWrappers.pbobjc.h>
#else
#import "GPBWrappers.pbobjc.h"
#endif
#import "google/api/Annotations.pbobjc.h"
#import "Definitions.pbobjc.h"
#import "Miscellaneous.pbobjc.h"
#import "Peers.pbobjc.h"
#import "Users.pbobjc.h"
#import "scalapb/Scalapb.pbobjc.h"

@implementation Contacts

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"dialog"
                 serviceName:@"Contacts"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"dialog"
                 serviceName:@"Contacts"];
}

#pragma clang diagnostic pop

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName
                 callOptions:(GRPCCallOptions *)callOptions {
  return [self initWithHost:host callOptions:callOptions];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [[self alloc] initWithHost:host callOptions:callOptions];
}

#pragma mark - Method Implementations

#pragma mark ImportContacts(RequestImportContacts) returns (ResponseImportContacts)

/**
 * / Import contacts and wait while query is not finished
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)importContactsWithRequest:(RequestImportContacts *)request handler:(void(^)(ResponseImportContacts *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToImportContactsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Import contacts and wait while query is not finished
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToImportContactsWithRequest:(RequestImportContacts *)request handler:(void(^)(ResponseImportContacts *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ImportContacts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseImportContacts class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * / Import contacts and wait while query is not finished
 */
- (GRPCUnaryProtoCall *)importContactsWithMessage:(RequestImportContacts *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ImportContacts"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseImportContacts class]];
}

#pragma mark DeferredImportContacts(RequestDeferredImportContacts) returns (ResponseDeferredImportContacts)

/**
 * / Same as above, but without waiting response
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deferredImportContactsWithRequest:(RequestDeferredImportContacts *)request handler:(void(^)(ResponseDeferredImportContacts *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeferredImportContactsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Same as above, but without waiting response
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeferredImportContactsWithRequest:(RequestDeferredImportContacts *)request handler:(void(^)(ResponseDeferredImportContacts *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeferredImportContacts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseDeferredImportContacts class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * / Same as above, but without waiting response
 */
- (GRPCUnaryProtoCall *)deferredImportContactsWithMessage:(RequestDeferredImportContacts *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeferredImportContacts"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseDeferredImportContacts class]];
}

#pragma mark GetContacts(RequestGetContacts) returns (ResponseGetContacts)

- (void)getContactsWithRequest:(RequestGetContacts *)request handler:(void(^)(ResponseGetContacts *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetContactsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetContactsWithRequest:(RequestGetContacts *)request handler:(void(^)(ResponseGetContacts *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetContacts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseGetContacts class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getContactsWithMessage:(RequestGetContacts *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetContacts"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseGetContacts class]];
}

#pragma mark RemoveContact(RequestRemoveContact) returns (ResponseSeq)

- (void)removeContactWithRequest:(RequestRemoveContact *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRemoveContactWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToRemoveContactWithRequest:(RequestRemoveContact *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RemoveContact"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseSeq class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)removeContactWithMessage:(RequestRemoveContact *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"RemoveContact"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseSeq class]];
}

#pragma mark AddContact(RequestAddContact) returns (ResponseSeq)

- (void)addContactWithRequest:(RequestAddContact *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddContactWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddContactWithRequest:(RequestAddContact *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"AddContact"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseSeq class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)addContactWithMessage:(RequestAddContact *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"AddContact"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseSeq class]];
}

#pragma mark SearchContacts(RequestSearchContacts) returns (ResponseSearchContacts)

/**
 * / Search contacts by query string
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)searchContactsWithRequest:(RequestSearchContacts *)request handler:(void(^)(ResponseSearchContacts *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSearchContactsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Search contacts by query string
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToSearchContactsWithRequest:(RequestSearchContacts *)request handler:(void(^)(ResponseSearchContacts *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SearchContacts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseSearchContacts class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * / Search contacts by query string
 */
- (GRPCUnaryProtoCall *)searchContactsWithMessage:(RequestSearchContacts *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SearchContacts"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseSearchContacts class]];
}

@end
#endif
