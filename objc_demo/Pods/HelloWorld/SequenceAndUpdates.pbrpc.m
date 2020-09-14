// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: sequence_and_updates.proto

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "SequenceAndUpdates.pbrpc.h"
#import "SequenceAndUpdates.pbobjc.h"
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <Protobuf/GPBWrappers.pbobjc.h>
#else
#import "GPBWrappers.pbobjc.h"
#endif
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <Protobuf/GPBEmpty.pbobjc.h>
#else
#import "GPBEmpty.pbobjc.h"
#endif
#import "google/api/Annotations.pbobjc.h"
#import "Definitions.pbobjc.h"
#import "Miscellaneous.pbobjc.h"
#import "Authentication.pbobjc.h"
#import "Groups.pbobjc.h"
#import "Stickers.pbobjc.h"
#import "Presence.pbobjc.h"
#import "EventBus.pbobjc.h"
#import "WebRtc.pbobjc.h"
#import "ConfigSync.pbobjc.h"
#import "Counters.pbobjc.h"
#import "Contacts.pbobjc.h"
#import "Privacy.pbobjc.h"
#import "Peers.pbobjc.h"
#import "Messaging.pbobjc.h"
#import "Users.pbobjc.h"
#import "Spaces.pbobjc.h"
#import "Reactions.pbobjc.h"
#import "Permissions.pbobjc.h"
#import "scalapb/Scalapb.pbobjc.h"

@implementation SequenceAndUpdates

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"dialog"
                 serviceName:@"SequenceAndUpdates"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"dialog"
                 serviceName:@"SequenceAndUpdates"];
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

#pragma mark GetState(RequestGetState) returns (ResponseSeq)

/**
 * / Get last seq number
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getStateWithRequest:(RequestGetState *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetStateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Get last seq number
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetStateWithRequest:(RequestGetState *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetState"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseSeq class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * / Get last seq number
 */
- (GRPCUnaryProtoCall *)getStateWithMessage:(RequestGetState *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetState"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseSeq class]];
}

#pragma mark GetDifference(RequestGetDifference) returns (ResponseGetDifference)

/**
 * / Get all update that happens after given seq number
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getDifferenceWithRequest:(RequestGetDifference *)request handler:(void(^)(ResponseGetDifference *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetDifferenceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Get all update that happens after given seq number
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetDifferenceWithRequest:(RequestGetDifference *)request handler:(void(^)(ResponseGetDifference *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetDifference"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseGetDifference class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * / Get all update that happens after given seq number
 */
- (GRPCUnaryProtoCall *)getDifferenceWithMessage:(RequestGetDifference *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetDifference"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseGetDifference class]];
}

#pragma mark GetDialogsDifference(RequestGetDialogsDifference) returns (ResponseGetDialogsDifference)

/**
 * / Load all dialogs that changed after given date
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getDialogsDifferenceWithRequest:(RequestGetDialogsDifference *)request handler:(void(^)(ResponseGetDialogsDifference *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetDialogsDifferenceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Load all dialogs that changed after given date
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetDialogsDifferenceWithRequest:(RequestGetDialogsDifference *)request handler:(void(^)(ResponseGetDialogsDifference *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetDialogsDifference"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseGetDialogsDifference class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * / Load all dialogs that changed after given date
 */
- (GRPCUnaryProtoCall *)getDialogsDifferenceWithMessage:(RequestGetDialogsDifference *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetDialogsDifference"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseGetDialogsDifference class]];
}

#pragma mark GetReferencedEntitites(RequestGetReferencedEntitites) returns (ResponseGetReferencedEntitites)

/**
 * / Load some required entities
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getReferencedEntititesWithRequest:(RequestGetReferencedEntitites *)request handler:(void(^)(ResponseGetReferencedEntitites *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetReferencedEntititesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Load some required entities
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetReferencedEntititesWithRequest:(RequestGetReferencedEntitites *)request handler:(void(^)(ResponseGetReferencedEntitites *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetReferencedEntitites"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseGetReferencedEntitites class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * / Load some required entities
 */
- (GRPCUnaryProtoCall *)getReferencedEntititesWithMessage:(RequestGetReferencedEntitites *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetReferencedEntitites"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseGetReferencedEntitites class]];
}

#pragma mark GetPartialPeerInfo(RequestGetPartialPeerInfo) returns (ResponseGetPartialPeerInfo)

- (void)getPartialPeerInfoWithRequest:(RequestGetPartialPeerInfo *)request handler:(void(^)(ResponseGetPartialPeerInfo *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPartialPeerInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPartialPeerInfoWithRequest:(RequestGetPartialPeerInfo *)request handler:(void(^)(ResponseGetPartialPeerInfo *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPartialPeerInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseGetPartialPeerInfo class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getPartialPeerInfoWithMessage:(RequestGetPartialPeerInfo *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetPartialPeerInfo"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseGetPartialPeerInfo class]];
}

#pragma mark SubscribeToOnline(RequestSubscribeToOnline) returns (ResponseVoid)

- (void)subscribeToOnlineWithRequest:(RequestSubscribeToOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSubscribeToOnlineWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSubscribeToOnlineWithRequest:(RequestSubscribeToOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SubscribeToOnline"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseVoid class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)subscribeToOnlineWithMessage:(RequestSubscribeToOnline *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SubscribeToOnline"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseVoid class]];
}

#pragma mark SubscribeFromOnline(RequestSubscribeFromOnline) returns (ResponseVoid)

- (void)subscribeFromOnlineWithRequest:(RequestSubscribeFromOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSubscribeFromOnlineWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSubscribeFromOnlineWithRequest:(RequestSubscribeFromOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SubscribeFromOnline"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseVoid class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)subscribeFromOnlineWithMessage:(RequestSubscribeFromOnline *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SubscribeFromOnline"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseVoid class]];
}

#pragma mark SubscribeToGroupOnline(RequestSubscribeToGroupOnline) returns (ResponseVoid)

- (void)subscribeToGroupOnlineWithRequest:(RequestSubscribeToGroupOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSubscribeToGroupOnlineWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSubscribeToGroupOnlineWithRequest:(RequestSubscribeToGroupOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SubscribeToGroupOnline"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseVoid class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)subscribeToGroupOnlineWithMessage:(RequestSubscribeToGroupOnline *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SubscribeToGroupOnline"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseVoid class]];
}

#pragma mark SubscribeFromGroupOnline(RequestSubscribeFromGroupOnline) returns (ResponseVoid)

- (void)subscribeFromGroupOnlineWithRequest:(RequestSubscribeFromGroupOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSubscribeFromGroupOnlineWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSubscribeFromGroupOnlineWithRequest:(RequestSubscribeFromGroupOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SubscribeFromGroupOnline"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseVoid class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)subscribeFromGroupOnlineWithMessage:(RequestSubscribeFromGroupOnline *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SubscribeFromGroupOnline"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseVoid class]];
}

#pragma mark SeqUpdates(Empty) returns (stream SeqUpdateBox)

/**
 * / Get stream of the user's updates
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)seqUpdatesWithRequest:(GPBEmpty *)request eventHandler:(void(^)(BOOL done, SeqUpdateBox *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToSeqUpdatesWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / Get stream of the user's updates
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToSeqUpdatesWithRequest:(GPBEmpty *)request eventHandler:(void(^)(BOOL done, SeqUpdateBox *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"SeqUpdates"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[SeqUpdateBox class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
/**
 * / Get stream of the user's updates
 */
- (GRPCUnaryProtoCall *)seqUpdatesWithMessage:(GPBEmpty *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SeqUpdates"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[SeqUpdateBox class]];
}

#pragma mark WeakUpdates(stream WeakUpdateCommand) returns (stream WeakUpdateBox)

- (void)weakUpdatesWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, WeakUpdateBox *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToWeakUpdatesWithRequestsWriter:requestWriter eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToWeakUpdatesWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, WeakUpdateBox *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"WeakUpdates"
            requestsWriter:requestWriter
             responseClass:[WeakUpdateBox class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
- (GRPCStreamingProtoCall *)weakUpdatesWithResponseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"WeakUpdates"
           responseHandler:handler
               callOptions:callOptions
             responseClass:[WeakUpdateBox class]];
}

@end
#endif
