// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: registration.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#import "Registration.pbobjc.h"
#import "scalapb/Scalapb.pbobjc.h"
#import "google/api/Annotations.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - RegistrationRoot

@implementation RegistrationRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[ScalapbRoot extensionRegistry]];
    [registry addExtensions:[GAPIAnnotationsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - RegistrationRoot_FileDescriptor

static GPBFileDescriptor *RegistrationRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"dialog"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum AuthorizationMethod

GPBEnumDescriptor *AuthorizationMethod_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "Nothing\000LoginPassword\000Phone\000Email\000Certif"
        "icate\000";
    static const int32_t values[] = {
        AuthorizationMethod_Nothing,
        AuthorizationMethod_LoginPassword,
        AuthorizationMethod_Phone,
        AuthorizationMethod_Email,
        AuthorizationMethod_Certificate,
    };
    static const char *extraTextFormatInfo = "\005\000\'\000\001%\250\000\002%\000\003%\000\004+\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(AuthorizationMethod)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:AuthorizationMethod_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL AuthorizationMethod_IsValidValue(int32_t value__) {
  switch (value__) {
    case AuthorizationMethod_Nothing:
    case AuthorizationMethod_LoginPassword:
    case AuthorizationMethod_Phone:
    case AuthorizationMethod_Email:
    case AuthorizationMethod_Certificate:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - RequestRegisterDevice

@implementation RequestRegisterDevice

@dynamic clientPk;
@dynamic appId;
@dynamic appTitle;
@dynamic deviceTitle;

typedef struct RequestRegisterDevice__storage_ {
  uint32_t _has_storage_[1];
  int32_t appId;
  NSData *clientPk;
  NSString *appTitle;
  NSString *deviceTitle;
} RequestRegisterDevice__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "clientPk",
        .dataTypeSpecific.clazz = Nil,
        .number = RequestRegisterDevice_FieldNumber_ClientPk,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RequestRegisterDevice__storage_, clientPk),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "appId",
        .dataTypeSpecific.clazz = Nil,
        .number = RequestRegisterDevice_FieldNumber_AppId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RequestRegisterDevice__storage_, appId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "appTitle",
        .dataTypeSpecific.clazz = Nil,
        .number = RequestRegisterDevice_FieldNumber_AppTitle,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(RequestRegisterDevice__storage_, appTitle),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "deviceTitle",
        .dataTypeSpecific.clazz = Nil,
        .number = RequestRegisterDevice_FieldNumber_DeviceTitle,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(RequestRegisterDevice__storage_, deviceTitle),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RequestRegisterDevice class]
                                     rootClass:[RegistrationRoot class]
                                          file:RegistrationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RequestRegisterDevice__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ResponseDeviceRequest

@implementation ResponseDeviceRequest

@dynamic serverPk;
@dynamic authId;
@dynamic token;
@dynamic authMethodSeqArray, authMethodSeqArray_Count;

typedef struct ResponseDeviceRequest__storage_ {
  uint32_t _has_storage_[1];
  NSData *serverPk;
  NSString *token;
  GPBEnumArray *authMethodSeqArray;
  int64_t authId;
} ResponseDeviceRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "serverPk",
        .dataTypeSpecific.clazz = Nil,
        .number = ResponseDeviceRequest_FieldNumber_ServerPk,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ResponseDeviceRequest__storage_, serverPk),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "authId",
        .dataTypeSpecific.clazz = Nil,
        .number = ResponseDeviceRequest_FieldNumber_AuthId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ResponseDeviceRequest__storage_, authId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "token",
        .dataTypeSpecific.clazz = Nil,
        .number = ResponseDeviceRequest_FieldNumber_Token,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ResponseDeviceRequest__storage_, token),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "authMethodSeqArray",
        .dataTypeSpecific.enumDescFunc = AuthorizationMethod_EnumDescriptor,
        .number = ResponseDeviceRequest_FieldNumber_AuthMethodSeqArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ResponseDeviceRequest__storage_, authMethodSeqArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ResponseDeviceRequest class]
                                     rootClass:[RegistrationRoot class]
                                          file:RegistrationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ResponseDeviceRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RegisterDeprecatedDeviceRequest

@implementation RegisterDeprecatedDeviceRequest


typedef struct RegisterDeprecatedDeviceRequest__storage_ {
  uint32_t _has_storage_[1];
} RegisterDeprecatedDeviceRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RegisterDeprecatedDeviceRequest class]
                                     rootClass:[RegistrationRoot class]
                                          file:RegistrationRoot_FileDescriptor()
                                        fields:NULL
                                    fieldCount:0
                                   storageSize:sizeof(RegisterDeprecatedDeviceRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RequestExchangeAuthIdForToken

@implementation RequestExchangeAuthIdForToken

@dynamic authId;
@dynamic signature;

typedef struct RequestExchangeAuthIdForToken__storage_ {
  uint32_t _has_storage_[1];
  NSData *signature;
  int64_t authId;
} RequestExchangeAuthIdForToken__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "authId",
        .dataTypeSpecific.clazz = Nil,
        .number = RequestExchangeAuthIdForToken_FieldNumber_AuthId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RequestExchangeAuthIdForToken__storage_, authId),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "signature",
        .dataTypeSpecific.clazz = Nil,
        .number = RequestExchangeAuthIdForToken_FieldNumber_Signature,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RequestExchangeAuthIdForToken__storage_, signature),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RequestExchangeAuthIdForToken class]
                                     rootClass:[RegistrationRoot class]
                                          file:RegistrationRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RequestExchangeAuthIdForToken__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
