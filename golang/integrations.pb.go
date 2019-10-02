// Code generated by protoc-gen-go. DO NOT EDIT.
// source: integrations.proto

package dialog

import (
	context "context"
	fmt "fmt"
	_ "github.com/gogo/protobuf/types"
	proto "github.com/golang/protobuf/proto"
	_ "google.golang.org/genproto/googleapis/api/annotations"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	math "math"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.ProtoPackageIsVersion3 // please upgrade the proto package

// Group token response
type ResponseIntegrationToken struct {
	Token                string   `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
	Url                  string   `protobuf:"bytes,2,opt,name=url,proto3" json:"url,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *ResponseIntegrationToken) Reset()         { *m = ResponseIntegrationToken{} }
func (m *ResponseIntegrationToken) String() string { return proto.CompactTextString(m) }
func (*ResponseIntegrationToken) ProtoMessage()    {}
func (*ResponseIntegrationToken) Descriptor() ([]byte, []int) {
	return fileDescriptor_6b02b01320e142e5, []int{0}
}

func (m *ResponseIntegrationToken) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_ResponseIntegrationToken.Unmarshal(m, b)
}
func (m *ResponseIntegrationToken) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_ResponseIntegrationToken.Marshal(b, m, deterministic)
}
func (m *ResponseIntegrationToken) XXX_Merge(src proto.Message) {
	xxx_messageInfo_ResponseIntegrationToken.Merge(m, src)
}
func (m *ResponseIntegrationToken) XXX_Size() int {
	return xxx_messageInfo_ResponseIntegrationToken.Size(m)
}
func (m *ResponseIntegrationToken) XXX_DiscardUnknown() {
	xxx_messageInfo_ResponseIntegrationToken.DiscardUnknown(m)
}

var xxx_messageInfo_ResponseIntegrationToken proto.InternalMessageInfo

func (m *ResponseIntegrationToken) GetToken() string {
	if m != nil {
		return m.Token
	}
	return ""
}

func (m *ResponseIntegrationToken) GetUrl() string {
	if m != nil {
		return m.Url
	}
	return ""
}

// Getting current group token
type RequestGetIntegrationToken struct {
	GroupPeer            *OutPeer `protobuf:"bytes,1,opt,name=group_peer,json=groupPeer,proto3" json:"group_peer,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *RequestGetIntegrationToken) Reset()         { *m = RequestGetIntegrationToken{} }
func (m *RequestGetIntegrationToken) String() string { return proto.CompactTextString(m) }
func (*RequestGetIntegrationToken) ProtoMessage()    {}
func (*RequestGetIntegrationToken) Descriptor() ([]byte, []int) {
	return fileDescriptor_6b02b01320e142e5, []int{1}
}

func (m *RequestGetIntegrationToken) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_RequestGetIntegrationToken.Unmarshal(m, b)
}
func (m *RequestGetIntegrationToken) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_RequestGetIntegrationToken.Marshal(b, m, deterministic)
}
func (m *RequestGetIntegrationToken) XXX_Merge(src proto.Message) {
	xxx_messageInfo_RequestGetIntegrationToken.Merge(m, src)
}
func (m *RequestGetIntegrationToken) XXX_Size() int {
	return xxx_messageInfo_RequestGetIntegrationToken.Size(m)
}
func (m *RequestGetIntegrationToken) XXX_DiscardUnknown() {
	xxx_messageInfo_RequestGetIntegrationToken.DiscardUnknown(m)
}

var xxx_messageInfo_RequestGetIntegrationToken proto.InternalMessageInfo

func (m *RequestGetIntegrationToken) GetGroupPeer() *OutPeer {
	if m != nil {
		return m.GroupPeer
	}
	return nil
}

// Revoke group token
type RequestRevokeIntegrationToken struct {
	GroupPeer            *OutPeer `protobuf:"bytes,1,opt,name=group_peer,json=groupPeer,proto3" json:"group_peer,omitempty"`
	XXX_NoUnkeyedLiteral struct{} `json:"-"`
	XXX_unrecognized     []byte   `json:"-"`
	XXX_sizecache        int32    `json:"-"`
}

func (m *RequestRevokeIntegrationToken) Reset()         { *m = RequestRevokeIntegrationToken{} }
func (m *RequestRevokeIntegrationToken) String() string { return proto.CompactTextString(m) }
func (*RequestRevokeIntegrationToken) ProtoMessage()    {}
func (*RequestRevokeIntegrationToken) Descriptor() ([]byte, []int) {
	return fileDescriptor_6b02b01320e142e5, []int{2}
}

func (m *RequestRevokeIntegrationToken) XXX_Unmarshal(b []byte) error {
	return xxx_messageInfo_RequestRevokeIntegrationToken.Unmarshal(m, b)
}
func (m *RequestRevokeIntegrationToken) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	return xxx_messageInfo_RequestRevokeIntegrationToken.Marshal(b, m, deterministic)
}
func (m *RequestRevokeIntegrationToken) XXX_Merge(src proto.Message) {
	xxx_messageInfo_RequestRevokeIntegrationToken.Merge(m, src)
}
func (m *RequestRevokeIntegrationToken) XXX_Size() int {
	return xxx_messageInfo_RequestRevokeIntegrationToken.Size(m)
}
func (m *RequestRevokeIntegrationToken) XXX_DiscardUnknown() {
	xxx_messageInfo_RequestRevokeIntegrationToken.DiscardUnknown(m)
}

var xxx_messageInfo_RequestRevokeIntegrationToken proto.InternalMessageInfo

func (m *RequestRevokeIntegrationToken) GetGroupPeer() *OutPeer {
	if m != nil {
		return m.GroupPeer
	}
	return nil
}

func init() {
	proto.RegisterType((*ResponseIntegrationToken)(nil), "dialog.ResponseIntegrationToken")
	proto.RegisterType((*RequestGetIntegrationToken)(nil), "dialog.RequestGetIntegrationToken")
	proto.RegisterType((*RequestRevokeIntegrationToken)(nil), "dialog.RequestRevokeIntegrationToken")
}

func init() { proto.RegisterFile("integrations.proto", fileDescriptor_6b02b01320e142e5) }

var fileDescriptor_6b02b01320e142e5 = []byte{
	// 386 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xbc, 0x92, 0xc1, 0xaa, 0xd3, 0x40,
	0x14, 0x86, 0x49, 0xc5, 0x6a, 0x4f, 0x2b, 0x62, 0xd4, 0x9a, 0x86, 0x56, 0xca, 0x80, 0xa0, 0x45,
	0x92, 0xb6, 0x0a, 0x42, 0x40, 0x0a, 0xdd, 0x14, 0x57, 0x4a, 0x70, 0x2f, 0x69, 0x72, 0x1c, 0x86,
	0xc6, 0x99, 0x71, 0x66, 0x12, 0x10, 0x74, 0xe3, 0xb2, 0x3b, 0x71, 0xe7, 0xcb, 0xf8, 0x10, 0xf7,
	0x0d, 0xca, 0x5d, 0xf5, 0x29, 0x2e, 0x49, 0x5b, 0x1a, 0x6e, 0x53, 0xb8, 0xab, 0xbb, 0xca, 0xc9,
	0x39, 0x7f, 0xce, 0xf7, 0xe7, 0x9f, 0x01, 0x9b, 0x71, 0x83, 0x54, 0x45, 0x86, 0x09, 0xae, 0x3d,
	0xa9, 0x84, 0x11, 0x76, 0x33, 0x61, 0x51, 0x2a, 0xa8, 0xdb, 0xa7, 0x42, 0xd0, 0x14, 0xfd, 0x48,
	0x32, 0x3f, 0xe2, 0x5c, 0x98, 0xaa, 0xca, 0x7d, 0x94, 0xe0, 0x57, 0xc6, 0x59, 0xb5, 0xd5, 0x96,
	0x88, 0xea, 0xf0, 0xf2, 0x54, 0xc7, 0x51, 0x1a, 0xc9, 0xa5, 0xbf, 0x7f, 0xee, 0xda, 0xe4, 0x17,
	0x38, 0x21, 0x6a, 0x29, 0xb8, 0xc6, 0x0f, 0x47, 0xf4, 0x67, 0xb1, 0x42, 0x6e, 0x13, 0xb8, 0x6b,
	0x8a, 0xc2, 0xb1, 0x86, 0xd6, 0xcb, 0xd6, 0xbc, 0xb3, 0xde, 0x8e, 0xef, 0x43, 0x33, 0x89, 0x38,
	0x45, 0x15, 0xee, 0x46, 0xf6, 0x73, 0xb8, 0x93, 0xa9, 0xd4, 0x69, 0xd4, 0x28, 0x8a, 0x41, 0x30,
	0xd8, 0xcc, 0x5c, 0x70, 0xd8, 0x37, 0x2f, 0x49, 0xa9, 0x47, 0x95, 0x8c, 0xbd, 0x85, 0x92, 0xf1,
	0x01, 0x49, 0x7e, 0x80, 0x1b, 0xe2, 0xf7, 0x0c, 0xb5, 0x59, 0xa0, 0x39, 0x31, 0xf0, 0x1e, 0x80,
	0x2a, 0x91, 0xc9, 0x2f, 0xc5, 0x8f, 0x94, 0x2e, 0xda, 0xd3, 0x87, 0xde, 0x2e, 0x0e, 0xef, 0x63,
	0x66, 0x3e, 0x21, 0xaa, 0xf9, 0x83, 0xf5, 0x76, 0xdc, 0x82, 0x7b, 0x39, 0xd3, 0x6c, 0x99, 0x62,
	0xd8, 0x2a, 0xbf, 0x28, 0x26, 0x41, 0x7f, 0x33, 0xeb, 0xc1, 0xb3, 0x53, 0x76, 0xc9, 0x23, 0x3f,
	0x61, 0xb0, 0x2f, 0x43, 0xcc, 0xc5, 0x0a, 0x6f, 0x95, 0x3e, 0xfd, 0xdf, 0x80, 0x4e, 0x85, 0xa8,
	0xed, 0x3f, 0x16, 0x3c, 0xae, 0xcb, 0x80, 0x1c, 0x88, 0xe7, 0x73, 0x72, 0x87, 0x47, 0x4d, 0xfd,
	0x51, 0x92, 0xb7, 0xbf, 0x2f, 0x2e, 0xff, 0x36, 0x3c, 0xf2, 0xca, 0xcf, 0x27, 0x7e, 0x61, 0xc6,
	0xaf, 0xc2, 0xfd, 0x9a, 0xa5, 0x81, 0x35, 0xb2, 0xff, 0x59, 0xd0, 0x3d, 0x13, 0xce, 0x8b, 0x6b,
	0xb6, 0xea, 0x65, 0x37, 0x70, 0xf6, 0xae, 0x74, 0x36, 0x21, 0xaf, 0xeb, 0x9d, 0xd5, 0xef, 0x0d,
	0xac, 0xd1, 0xbc, 0xb7, 0x99, 0x75, 0xe1, 0x49, 0x35, 0x5f, 0x8d, 0x2a, 0x67, 0x31, 0xea, 0x65,
	0xb3, 0xbc, 0xdb, 0x6f, 0xae, 0x02, 0x00, 0x00, 0xff, 0xff, 0x2d, 0x02, 0x45, 0x1b, 0x4e, 0x03,
	0x00, 0x00,
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConn

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion4

// IntegrationsClient is the client API for Integrations service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type IntegrationsClient interface {
	/// Get token for posting to group
	GetIntegrationToken(ctx context.Context, in *RequestGetIntegrationToken, opts ...grpc.CallOption) (*ResponseIntegrationToken, error)
	/// Revoke token
	RevokeIntegrationToken(ctx context.Context, in *RequestRevokeIntegrationToken, opts ...grpc.CallOption) (*ResponseIntegrationToken, error)
}

type integrationsClient struct {
	cc *grpc.ClientConn
}

func NewIntegrationsClient(cc *grpc.ClientConn) IntegrationsClient {
	return &integrationsClient{cc}
}

func (c *integrationsClient) GetIntegrationToken(ctx context.Context, in *RequestGetIntegrationToken, opts ...grpc.CallOption) (*ResponseIntegrationToken, error) {
	out := new(ResponseIntegrationToken)
	err := c.cc.Invoke(ctx, "/dialog.Integrations/GetIntegrationToken", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *integrationsClient) RevokeIntegrationToken(ctx context.Context, in *RequestRevokeIntegrationToken, opts ...grpc.CallOption) (*ResponseIntegrationToken, error) {
	out := new(ResponseIntegrationToken)
	err := c.cc.Invoke(ctx, "/dialog.Integrations/RevokeIntegrationToken", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// IntegrationsServer is the server API for Integrations service.
type IntegrationsServer interface {
	/// Get token for posting to group
	GetIntegrationToken(context.Context, *RequestGetIntegrationToken) (*ResponseIntegrationToken, error)
	/// Revoke token
	RevokeIntegrationToken(context.Context, *RequestRevokeIntegrationToken) (*ResponseIntegrationToken, error)
}

// UnimplementedIntegrationsServer can be embedded to have forward compatible implementations.
type UnimplementedIntegrationsServer struct {
}

func (*UnimplementedIntegrationsServer) GetIntegrationToken(ctx context.Context, req *RequestGetIntegrationToken) (*ResponseIntegrationToken, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetIntegrationToken not implemented")
}
func (*UnimplementedIntegrationsServer) RevokeIntegrationToken(ctx context.Context, req *RequestRevokeIntegrationToken) (*ResponseIntegrationToken, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RevokeIntegrationToken not implemented")
}

func RegisterIntegrationsServer(s *grpc.Server, srv IntegrationsServer) {
	s.RegisterService(&_Integrations_serviceDesc, srv)
}

func _Integrations_GetIntegrationToken_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RequestGetIntegrationToken)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(IntegrationsServer).GetIntegrationToken(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/dialog.Integrations/GetIntegrationToken",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(IntegrationsServer).GetIntegrationToken(ctx, req.(*RequestGetIntegrationToken))
	}
	return interceptor(ctx, in, info, handler)
}

func _Integrations_RevokeIntegrationToken_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RequestRevokeIntegrationToken)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(IntegrationsServer).RevokeIntegrationToken(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/dialog.Integrations/RevokeIntegrationToken",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(IntegrationsServer).RevokeIntegrationToken(ctx, req.(*RequestRevokeIntegrationToken))
	}
	return interceptor(ctx, in, info, handler)
}

var _Integrations_serviceDesc = grpc.ServiceDesc{
	ServiceName: "dialog.Integrations",
	HandlerType: (*IntegrationsServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "GetIntegrationToken",
			Handler:    _Integrations_GetIntegrationToken_Handler,
		},
		{
			MethodName: "RevokeIntegrationToken",
			Handler:    _Integrations_RevokeIntegrationToken_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "integrations.proto",
}