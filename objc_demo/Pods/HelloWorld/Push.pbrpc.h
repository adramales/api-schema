// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: push.proto

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "Push.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class RequestRegisterApplePush;
@class RequestRegisterApplePushKit;
@class RequestRegisterApplePushToken;
@class RequestRegisterGooglePush;
@class RequestUnregisterApplePush;
@class RequestUnregisterApplePushKit;
@class RequestUnregisterApplePushToken;
@class RequestUnregisterGooglePush;
@class ResponseVoid;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  #import "google/api/Annotations.pbobjc.h"
  #import "Definitions.pbobjc.h"
  #import "Miscellaneous.pbobjc.h"
  #import "scalapb/Scalapb.pbobjc.h"
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol Push2 <NSObject>

#pragma mark RegisterGooglePush(RequestRegisterGooglePush) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)registerGooglePushWithMessage:(RequestRegisterGooglePush *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UnregisterGooglePush(RequestUnregisterGooglePush) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)unregisterGooglePushWithMessage:(RequestUnregisterGooglePush *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark RegisterApplePush(RequestRegisterApplePush) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)registerApplePushWithMessage:(RequestRegisterApplePush *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UnregisterApplePush(RequestUnregisterApplePush) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)unregisterApplePushWithMessage:(RequestUnregisterApplePush *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark RegisterApplePushKit(RequestRegisterApplePushKit) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)registerApplePushKitWithMessage:(RequestRegisterApplePushKit *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UnregisterApplePushKit(RequestUnregisterApplePushKit) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)unregisterApplePushKitWithMessage:(RequestUnregisterApplePushKit *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark RegisterApplePushToken(RequestRegisterApplePushToken) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)registerApplePushTokenWithMessage:(RequestRegisterApplePushToken *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UnregisterApplePushToken(RequestUnregisterApplePushToken) returns (ResponseVoid)

- (GRPCUnaryProtoCall *)unregisterApplePushTokenWithMessage:(RequestUnregisterApplePushToken *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol Push <NSObject>

#pragma mark RegisterGooglePush(RequestRegisterGooglePush) returns (ResponseVoid)

- (void)registerGooglePushWithRequest:(RequestRegisterGooglePush *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRegisterGooglePushWithRequest:(RequestRegisterGooglePush *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UnregisterGooglePush(RequestUnregisterGooglePush) returns (ResponseVoid)

- (void)unregisterGooglePushWithRequest:(RequestUnregisterGooglePush *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUnregisterGooglePushWithRequest:(RequestUnregisterGooglePush *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterApplePush(RequestRegisterApplePush) returns (ResponseVoid)

- (void)registerApplePushWithRequest:(RequestRegisterApplePush *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRegisterApplePushWithRequest:(RequestRegisterApplePush *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UnregisterApplePush(RequestUnregisterApplePush) returns (ResponseVoid)

- (void)unregisterApplePushWithRequest:(RequestUnregisterApplePush *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUnregisterApplePushWithRequest:(RequestUnregisterApplePush *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterApplePushKit(RequestRegisterApplePushKit) returns (ResponseVoid)

- (void)registerApplePushKitWithRequest:(RequestRegisterApplePushKit *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRegisterApplePushKitWithRequest:(RequestRegisterApplePushKit *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UnregisterApplePushKit(RequestUnregisterApplePushKit) returns (ResponseVoid)

- (void)unregisterApplePushKitWithRequest:(RequestUnregisterApplePushKit *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUnregisterApplePushKitWithRequest:(RequestUnregisterApplePushKit *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterApplePushToken(RequestRegisterApplePushToken) returns (ResponseVoid)

- (void)registerApplePushTokenWithRequest:(RequestRegisterApplePushToken *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToRegisterApplePushTokenWithRequest:(RequestRegisterApplePushToken *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UnregisterApplePushToken(RequestUnregisterApplePushToken) returns (ResponseVoid)

- (void)unregisterApplePushTokenWithRequest:(RequestUnregisterApplePushToken *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUnregisterApplePushTokenWithRequest:(RequestUnregisterApplePushToken *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Push : GRPCProtoService<Push2, Push>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

