// Code generated by gRPC proto compiler.  DO NOT EDIT!
// source: registration.proto

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "Registration.pbrpc.h"
#import "Registration.pbobjc.h"
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import "scalapb/Scalapb.pbobjc.h"
#import "google/api/Annotations.pbobjc.h"

@implementation Registration

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"dialog"
                 serviceName:@"Registration"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"dialog"
                 serviceName:@"Registration"];
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

#pragma mark ExchangeAuthIdForToken(RequestExchangeAuthIdForToken) returns (ResponseDeviceRequest)

- (void)exchangeAuthIdForTokenWithRequest:(RequestExchangeAuthIdForToken *)request handler:(void(^)(ResponseDeviceRequest *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToExchangeAuthIdForTokenWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToExchangeAuthIdForTokenWithRequest:(RequestExchangeAuthIdForToken *)request handler:(void(^)(ResponseDeviceRequest *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ExchangeAuthIdForToken"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseDeviceRequest class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)exchangeAuthIdForTokenWithMessage:(RequestExchangeAuthIdForToken *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ExchangeAuthIdForToken"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseDeviceRequest class]];
}

#pragma mark RegisterDevice(RequestRegisterDevice) returns (ResponseDeviceRequest)

/**
 * / register device to get auth token
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)registerDeviceWithRequest:(RequestRegisterDevice *)request handler:(void(^)(ResponseDeviceRequest *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterDeviceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * / register device to get auth token
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToRegisterDeviceWithRequest:(RequestRegisterDevice *)request handler:(void(^)(ResponseDeviceRequest *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterDevice"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseDeviceRequest class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * / register device to get auth token
 */
- (GRPCUnaryProtoCall *)registerDeviceWithMessage:(RequestRegisterDevice *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"RegisterDevice"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseDeviceRequest class]];
}

#pragma mark RegisterDeprecatedDevice(RegisterDeprecatedDeviceRequest) returns (ResponseDeviceRequest)

/**
 * deprecated
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)registerDeprecatedDeviceWithRequest:(RegisterDeprecatedDeviceRequest *)request handler:(void(^)(ResponseDeviceRequest *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterDeprecatedDeviceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * deprecated
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToRegisterDeprecatedDeviceWithRequest:(RegisterDeprecatedDeviceRequest *)request handler:(void(^)(ResponseDeviceRequest *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterDeprecatedDevice"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ResponseDeviceRequest class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * deprecated
 */
- (GRPCUnaryProtoCall *)registerDeprecatedDeviceWithMessage:(RegisterDeprecatedDeviceRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"RegisterDeprecatedDevice"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ResponseDeviceRequest class]];
}

@end
#endif