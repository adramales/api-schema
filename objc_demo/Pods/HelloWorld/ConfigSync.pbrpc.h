// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: config_sync.proto

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "ConfigSync.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class RequestEditParameter;
@class RequestFeatureFlags;
@class RequestGetParameters;
@class ResponseFeatureFlags;
@class ResponseGetParameters;
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
  #import "scalapb/Scalapb.pbobjc.h"
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol ConfigSync2 <NSObject>

#pragma mark GetParameters(RequestGetParameters) returns (ResponseGetParameters)

- (GRPCUnaryProtoCall *)getParametersWithMessage:(RequestGetParameters *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark EditParameter(RequestEditParameter) returns (ResponseSeq)

- (GRPCUnaryProtoCall *)editParameterWithMessage:(RequestEditParameter *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark FeatureFlags(RequestFeatureFlags) returns (ResponseFeatureFlags)

- (GRPCUnaryProtoCall *)featureFlagsWithMessage:(RequestFeatureFlags *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol ConfigSync <NSObject>

#pragma mark GetParameters(RequestGetParameters) returns (ResponseGetParameters)

- (void)getParametersWithRequest:(RequestGetParameters *)request handler:(void(^)(ResponseGetParameters *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetParametersWithRequest:(RequestGetParameters *)request handler:(void(^)(ResponseGetParameters *_Nullable response, NSError *_Nullable error))handler;


#pragma mark EditParameter(RequestEditParameter) returns (ResponseSeq)

- (void)editParameterWithRequest:(RequestEditParameter *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToEditParameterWithRequest:(RequestEditParameter *)request handler:(void(^)(ResponseSeq *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FeatureFlags(RequestFeatureFlags) returns (ResponseFeatureFlags)

- (void)featureFlagsWithRequest:(RequestFeatureFlags *)request handler:(void(^)(ResponseFeatureFlags *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFeatureFlagsWithRequest:(RequestFeatureFlags *)request handler:(void(^)(ResponseFeatureFlags *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ConfigSync : GRPCProtoService<ConfigSync2, ConfigSync>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END
