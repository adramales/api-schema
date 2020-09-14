// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: contacts.proto

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "Contacts.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class RequestAddContact;
@class RequestDeferredImportContacts;
@class RequestGetContacts;
@class RequestImportContacts;
@class RequestRemoveContact;
@class RequestSearchContacts;
@class ResponseDeferredImportContacts;
@class ResponseGetContacts;
@class ResponseImportContacts;
@class ResponseSearchContacts;
@class ResponseSeq;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
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
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol Contacts2 <NSObject>

#pragma mark ImportContacts(RequestImportContacts) returns (ResponseImportContacts)

/**
 * / Import contacts and wait while query is not finished
 */
- (GRPCUnaryProtoCall *)importContactsWithMessage:(RequestImportContacts *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeferredImportContacts(RequestDeferredImportContacts) returns (ResponseDeferredImportContacts)

/**
 * / Same as above, but without waiting response
 */
- (GRPCUnaryProtoCall *)deferredImportContactsWithMessage:(RequestDeferredImportContacts *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetContacts(RequestGetContacts) returns (ResponseGetContacts)

- (GRPCUnaryProtoCall *)getContactsWithMessage:(RequestGetContacts *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark RemoveContact(RequestRemoveContact) returns (ResponseSeq)

- (GRPCUnaryProtoCall *)removeContactWithMessage:(RequestRemoveContact *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark AddContact(RequestAddContact) returns (ResponseSeq)

- (GRPCUnaryProtoCall *)addContactWithMessage:(RequestAddContact *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark SearchContacts(RequestSearchContacts) returns (ResponseSearchContacts)

/**
 * / Search contacts by query string
 */
- (GRPCUnaryProtoCall *)searchContactsWithMessage:(RequestSearchContacts *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol Contacts <NSObject>

#pragma mark ImportContacts(RequestImportContacts) returns (ResponseImportContacts)

/**
 * / Import contacts and wait while query is not finished
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)importContactsWithRequest:(RequestImportContacts *)request handler:(void(^)(ResponseImportContacts *_Nullable response, NSError *_Nullable error))handler;

/**
 * / Import contacts and wait while query is not finished
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToImportContactsWithRequest:(RequestImportContacts *)request handler:(void(^)(ResponseImportContacts *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeferredImportContacts(RequestDeferredImportContacts) returns (ResponseDeferredImportContacts)

/**
 * / Same as above, but without waiting response
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deferredImportContactsWithRequest:(RequestDeferredImportContacts *)request handler:(void(^)(ResponseDeferredImportContacts *_Nullable response, NSError *_Nullable error))handler;

/**
 * / Same as above, but without waiting response
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeferredImportContactsWithRequest:(RequestDeferredImportContacts *)request handler:(void(^)(ResponseDeferredImportContacts *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetContacts(RequestGetContacts) returns (ResponseGetContacts)

- (void)getContactsWithRequest:(RequestGetContacts *)request handler:(void(^)(ResponseGetContacts *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetContactsWithRequest:(RequestGetContacts *)request handler:(void(^)(ResponseGetContacts *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RemoveContact(RequestRemoveContact) returns (ResponseSeq)

- (void)removeContactWithRequest:(RequestRemoveContact *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRemoveContactWithRequest:(RequestRemoveContact *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler;


#pragma mark AddContact(RequestAddContact) returns (ResponseSeq)

- (void)addContactWithRequest:(RequestAddContact *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddContactWithRequest:(RequestAddContact *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SearchContacts(RequestSearchContacts) returns (ResponseSearchContacts)

/**
 * / Search contacts by query string
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)searchContactsWithRequest:(RequestSearchContacts *)request handler:(void(^)(ResponseSearchContacts *_Nullable response, NSError *_Nullable error))handler;

/**
 * / Search contacts by query string
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToSearchContactsWithRequest:(RequestSearchContacts *)request handler:(void(^)(ResponseSearchContacts *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Contacts : GRPCProtoService<Contacts2, Contacts>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

