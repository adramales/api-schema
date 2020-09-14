// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: web_rtc.proto

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "WebRtc.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class RequestChangeCallDisplayName;
@class RequestDeleteCall;
@class RequestDoCall;
@class RequestGetCallInfo;
@class RequestJoinCall;
@class RequestLoadCalls;
@class RequestRejectCall;
@class ResponseDoCall;
@class ResponseGetCallInfo;
@class ResponseLoadCalls;
@class ResponseVoid;

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
  #import "DeviceInfo.pbobjc.h"
  #import "scalapb/Scalapb.pbobjc.h"
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol WebRTC2 <NSObject>

#pragma mark GetCallInfo(RequestGetCallInfo) returns (ResponseGetCallInfo)

- (GRPCUnaryProtoCall *)getCallInfoWithMessage:(RequestGetCallInfo *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark LoadCalls(RequestLoadCalls) returns (ResponseLoadCalls)

- (GRPCUnaryProtoCall *)loadCallsWithMessage:(RequestLoadCalls *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DoCall(RequestDoCall) returns (ResponseDoCall)

- (GRPCUnaryProtoCall *)doCallWithMessage:(RequestDoCall *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark JoinCall(RequestJoinCall) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)joinCallWithMessage:(RequestJoinCall *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark RejectCall(RequestRejectCall) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)rejectCallWithMessage:(RequestRejectCall *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark ChangeCallDisplayName(RequestChangeCallDisplayName) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)changeCallDisplayNameWithMessage:(RequestChangeCallDisplayName *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteCall(RequestDeleteCall) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)deleteCallWithMessage:(RequestDeleteCall *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol WebRTC <NSObject>

#pragma mark GetCallInfo(RequestGetCallInfo) returns (ResponseGetCallInfo)

- (void)getCallInfoWithRequest:(RequestGetCallInfo *)request handler:(void(^)(ResponseGetCallInfo *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetCallInfoWithRequest:(RequestGetCallInfo *)request handler:(void(^)(ResponseGetCallInfo *_Nullable response, NSError *_Nullable error))handler;


#pragma mark LoadCalls(RequestLoadCalls) returns (ResponseLoadCalls)

- (void)loadCallsWithRequest:(RequestLoadCalls *)request handler:(void(^)(ResponseLoadCalls *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToLoadCallsWithRequest:(RequestLoadCalls *)request handler:(void(^)(ResponseLoadCalls *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DoCall(RequestDoCall) returns (ResponseDoCall)

- (void)doCallWithRequest:(RequestDoCall *)request handler:(void(^)(ResponseDoCall *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDoCallWithRequest:(RequestDoCall *)request handler:(void(^)(ResponseDoCall *_Nullable response, NSError *_Nullable error))handler;


#pragma mark JoinCall(RequestJoinCall) returns (ResponseVoid)

- (void)joinCallWithRequest:(RequestJoinCall *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToJoinCallWithRequest:(RequestJoinCall *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RejectCall(RequestRejectCall) returns (ResponseVoid)

- (void)rejectCallWithRequest:(RequestRejectCall *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRejectCallWithRequest:(RequestRejectCall *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ChangeCallDisplayName(RequestChangeCallDisplayName) returns (ResponseVoid)

- (void)changeCallDisplayNameWithRequest:(RequestChangeCallDisplayName *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToChangeCallDisplayNameWithRequest:(RequestChangeCallDisplayName *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteCall(RequestDeleteCall) returns (ResponseVoid)

- (void)deleteCallWithRequest:(RequestDeleteCall *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteCallWithRequest:(RequestDeleteCall *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface WebRTC : GRPCProtoService<WebRTC2, WebRTC>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

