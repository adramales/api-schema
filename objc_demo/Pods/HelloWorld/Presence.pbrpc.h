// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: presence.proto

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "Presence.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class RequestGetUserLastPresence;
@class RequestSetOnline;
@class RequestStartTyping;
@class RequestStopTyping;
@class ResponseUserLastPresence;
@class ResponseVoid;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
  #import <Protobuf/GPBTimestamp.pbobjc.h>
#else
  #import "GPBTimestamp.pbobjc.h"
#endif
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
  #import <Protobuf/GPBWrappers.pbobjc.h>
#else
  #import "GPBWrappers.pbobjc.h"
#endif
  #import "google/api/Annotations.pbobjc.h"
  #import "Definitions.pbobjc.h"
  #import "Miscellaneous.pbobjc.h"
  #import "Peers.pbobjc.h"
  #import "scalapb/Scalapb.pbobjc.h"
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol Presence2 <NSObject>

#pragma mark StartTyping(RequestStartTyping) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)startTypingWithMessage:(RequestStartTyping *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark StopTyping(RequestStopTyping) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)stopTypingWithMessage:(RequestStopTyping *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark SetOnline(RequestSetOnline) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)setOnlineWithMessage:(RequestSetOnline *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetUserLastPresence(RequestGetUserLastPresence) returns (ResponseUserLastPresence)

- (GRPCUnaryProtoCall *)getUserLastPresenceWithMessage:(RequestGetUserLastPresence *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol Presence <NSObject>

#pragma mark StartTyping(RequestStartTyping) returns (ResponseVoid)

- (void)startTypingWithRequest:(RequestStartTyping *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToStartTypingWithRequest:(RequestStartTyping *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark StopTyping(RequestStopTyping) returns (ResponseVoid)

- (void)stopTypingWithRequest:(RequestStopTyping *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToStopTypingWithRequest:(RequestStopTyping *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SetOnline(RequestSetOnline) returns (ResponseVoid)

- (void)setOnlineWithRequest:(RequestSetOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSetOnlineWithRequest:(RequestSetOnline *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetUserLastPresence(RequestGetUserLastPresence) returns (ResponseUserLastPresence)

- (void)getUserLastPresenceWithRequest:(RequestGetUserLastPresence *)request handler:(void(^)(ResponseUserLastPresence *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetUserLastPresenceWithRequest:(RequestGetUserLastPresence *)request handler:(void(^)(ResponseUserLastPresence *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Presence : GRPCProtoService<Presence2, Presence>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

