// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: device_info.proto

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "DeviceInfo.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class RequestNotifyAboutDeviceInfo;
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
  #import "scalapb/Scalapb.pbobjc.h"
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol DeviceInfo2 <NSObject>

#pragma mark NotifyAboutDeviceInfo(RequestNotifyAboutDeviceInfo) returns (ResponseVoid)

/**
 * / Set info about current device
 */
- (GRPCUnaryProtoCall *)notifyAboutDeviceInfoWithMessage:(RequestNotifyAboutDeviceInfo *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DeviceInfo <NSObject>

#pragma mark NotifyAboutDeviceInfo(RequestNotifyAboutDeviceInfo) returns (ResponseVoid)

/**
 * / Set info about current device
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)notifyAboutDeviceInfoWithRequest:(RequestNotifyAboutDeviceInfo *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;

/**
 * / Set info about current device
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToNotifyAboutDeviceInfoWithRequest:(RequestNotifyAboutDeviceInfo *)request handler:(void(^)(ResponseVoid *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DeviceInfo : GRPCProtoService<DeviceInfo2, DeviceInfo>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END
