Pod::Spec.new do |s|
  s.name     = "Dialog-gRPC-Objc"
  s.version  = "1.65.0"
  s.license  = "Apache License, Version 2.0"
  s.authors  = { 'gRPC contributors' => 'grpc-io@googlegroups.com' }
  s.homepage = "https://grpc.io/"
  s.summary = "Dialog gRPC access library"
  s.source = { :git => 'https://github.com/grpc/grpc.git' }

  s.ios.deployment_target = "7.1"
  s.osx.deployment_target = "10.9"

  # Base directory where the .proto files are.
  src = "proto"
  api_import = "include"
  google_api_ann = "#{api_import}/annotations.proto"
  descriptor = "#{api_import}/descriptor.proto"
  google_api_http = "#{api_import}/http.proto"
  scalapb = "#{api_import}/scalapb.proto"

  # Run protoc with the Objective-C and gRPC plugins to generate protocol messages and gRPC clients.
  # s.dependency "!ProtoCompiler-gRPCPlugin", "~> 1.0"

  # Pods directory corresponding to this app's Podfile, relative to the location of this podspec.
  pods_root = 'Pods'

  # Path where Cocoapods downloads protoc and the gRPC plugin.
  protoc_dir = "objc_dependency"
  protoc = "#{protoc_dir}/protoc"
  plugin = "#{protoc_dir}/grpc_objective_c_plugin"

  # Directory where the generated files will be placed.
  dir = "#{pods_root}/#{s.name}"

  s.prepare_command = <<-CMD
    mkdir -p #{dir}
    #{protoc} \
        --plugin=protoc-gen-grpc=#{plugin} \
        --objc_out=#{dir} \
        --grpc_out=Client=true,Server=false:#{dir} \
        -I #{api_import} \
        -I #{src} \
        -I #{protoc_dir} \
        #{src}/*.proto #{descriptor} #{scalapb} #{google_api_ann} #{google_api_http}
  CMD

  # Files generated by protoc
  s.subspec "Messages" do |ms|
    ms.source_files = "#{dir}/*.pbobjc.{h,m}", "#{dir}/**/*.pbobjc.{h,m}"
    ms.header_mappings_dir = dir
    ms.requires_arc = false
    # The generated files depend on the protobuf runtime.
    ms.dependency "Protobuf"
  end

  # Files generated by the gRPC plugin
  s.subspec "Services" do |ss|
    ss.source_files = "#{dir}/*.pbrpc.{h,m}", "#{dir}/**/*.pbrpc.{h,m}"
    ss.header_mappings_dir = dir
    ss.requires_arc = true
    # The generated files depend on the gRPC runtime, and on the files generated by protoc.
    ss.dependency "gRPC-ProtoRPC"
    ss.dependency "#{s.name}/Messages"
  end

  s.pod_target_xcconfig = {
    # This is needed by all pods that depend on Protobuf:
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1',
    # This is needed by all pods that depend on gRPC-RxLibrary:
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
  }
end