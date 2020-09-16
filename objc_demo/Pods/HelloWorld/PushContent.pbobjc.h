// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: push_content.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30004
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30004 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class LocalizableString;
@class PushPeer;
@class UUIDValue;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum PushPeerType

typedef GPB_ENUM(PushPeerType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  PushPeerType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  PushPeerType_PushPeerTypePrivate = 0,
  PushPeerType_PushPeerTypeGroup = 1,
  PushPeerType_PushPeerTypeSip = 2,
};

GPBEnumDescriptor *PushPeerType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL PushPeerType_IsValidValue(int32_t value);

#pragma mark - Enum PushEventType

typedef GPB_ENUM(PushEventType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  PushEventType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  PushEventType_Create = 0,
  PushEventType_Update = 1,
  PushEventType_Delete = 2,
};

GPBEnumDescriptor *PushEventType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL PushEventType_IsValidValue(int32_t value);

#pragma mark - PushContentRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
GPB_FINAL @interface PushContentRoot : GPBRootObject
@end

#pragma mark - LocalizableString

typedef GPB_ENUM(LocalizableString_FieldNumber) {
  LocalizableString_FieldNumber_LocKey = 1,
  LocalizableString_FieldNumber_LocArgsArray = 2,
};

GPB_FINAL @interface LocalizableString : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *locKey;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *locArgsArray;
/** The number of items in @c locArgsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger locArgsArray_Count;

@end

#pragma mark - PushPeer

typedef GPB_ENUM(PushPeer_FieldNumber) {
  PushPeer_FieldNumber_Type = 1,
  PushPeer_FieldNumber_Id_p = 2,
  PushPeer_FieldNumber_StrId = 3,
};

GPB_FINAL @interface PushPeer : GPBMessage

@property(nonatomic, readwrite) PushPeerType type;

@property(nonatomic, readwrite) int32_t id_p;

@property(nonatomic, readwrite, copy, null_resettable) NSString *strId;

@end

/**
 * Fetches the raw value of a @c PushPeer's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t PushPeer_Type_RawValue(PushPeer *message);
/**
 * Sets the raw value of an @c PushPeer's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetPushPeer_Type_RawValue(PushPeer *message, int32_t value);

#pragma mark - EncryptedPushContent

typedef GPB_ENUM(EncryptedPushContent_FieldNumber) {
  EncryptedPushContent_FieldNumber_LocAlertBody = 1,
  EncryptedPushContent_FieldNumber_SimpleAlertBody = 2,
  EncryptedPushContent_FieldNumber_LocAlertTitle = 3,
  EncryptedPushContent_FieldNumber_SimpleAlertTitle = 4,
  EncryptedPushContent_FieldNumber_Sound = 5,
  EncryptedPushContent_FieldNumber_UnreadMessageCounter = 6,
  EncryptedPushContent_FieldNumber_Peer = 7,
  EncryptedPushContent_FieldNumber_MessageId = 10,
  EncryptedPushContent_FieldNumber_IsRespondable = 11,
  EncryptedPushContent_FieldNumber_SenderUserId = 12,
  EncryptedPushContent_FieldNumber_Date = 13,
  EncryptedPushContent_FieldNumber_EventType = 14,
};

typedef GPB_ENUM(EncryptedPushContent_AlertBody_OneOfCase) {
  EncryptedPushContent_AlertBody_OneOfCase_GPBUnsetOneOfCase = 0,
  EncryptedPushContent_AlertBody_OneOfCase_LocAlertBody = 1,
  EncryptedPushContent_AlertBody_OneOfCase_SimpleAlertBody = 2,
};

typedef GPB_ENUM(EncryptedPushContent_AlertTitle_OneOfCase) {
  EncryptedPushContent_AlertTitle_OneOfCase_GPBUnsetOneOfCase = 0,
  EncryptedPushContent_AlertTitle_OneOfCase_LocAlertTitle = 3,
  EncryptedPushContent_AlertTitle_OneOfCase_SimpleAlertTitle = 4,
};

/**
 * The structure of encrypted push content
 **/
GPB_FINAL @interface EncryptedPushContent : GPBMessage

/** message */
@property(nonatomic, readonly) EncryptedPushContent_AlertBody_OneOfCase alertBodyOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) LocalizableString *locAlertBody;

@property(nonatomic, readwrite, copy, null_resettable) NSString *simpleAlertBody;

/** title */
@property(nonatomic, readonly) EncryptedPushContent_AlertTitle_OneOfCase alertTitleOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) LocalizableString *locAlertTitle;

@property(nonatomic, readwrite, copy, null_resettable) NSString *simpleAlertTitle;

@property(nonatomic, readwrite, copy, null_resettable) NSString *sound;

@property(nonatomic, readwrite) int32_t unreadMessageCounter;

@property(nonatomic, readwrite, strong, null_resettable) PushPeer *peer;
/** Test to see if @c peer has been set. */
@property(nonatomic, readwrite) BOOL hasPeer;

@property(nonatomic, readwrite, strong, null_resettable) UUIDValue *messageId;
/** Test to see if @c messageId has been set. */
@property(nonatomic, readwrite) BOOL hasMessageId;

/** if true, user can respond to this push */
@property(nonatomic, readwrite) BOOL isRespondable;

/** if sender is channel so value eq 0 */
@property(nonatomic, readwrite) int32_t senderUserId;

/** date of the event (usually message) */
@property(nonatomic, readwrite) int64_t date;

/** type of the event */
@property(nonatomic, readwrite) PushEventType eventType;

@end

/**
 * Fetches the raw value of a @c EncryptedPushContent's @c eventType property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t EncryptedPushContent_EventType_RawValue(EncryptedPushContent *message);
/**
 * Sets the raw value of an @c EncryptedPushContent's @c eventType property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetEncryptedPushContent_EventType_RawValue(EncryptedPushContent *message, int32_t value);

/**
 * Clears whatever value was set for the oneof 'alertBody'.
 **/
void EncryptedPushContent_ClearAlertBodyOneOfCase(EncryptedPushContent *message);
/**
 * Clears whatever value was set for the oneof 'alertTitle'.
 **/
void EncryptedPushContent_ClearAlertTitleOneOfCase(EncryptedPushContent *message);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)