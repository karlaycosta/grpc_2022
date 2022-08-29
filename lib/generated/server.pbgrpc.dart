///
//  Generated code. Do not modify.
//  source: server.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'server.pb.dart' as $0;
export 'server.pb.dart';

class ServerClient extends $grpc.Client {
  static final _$connection = $grpc.ClientMethod<$0.Msg, $0.Msg>(
      '/Server/connection',
      ($0.Msg value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Msg.fromBuffer(value));

  ServerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Msg> connection($async.Stream<$0.Msg> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connection, request, options: options);
  }
}

abstract class ServerServiceBase extends $grpc.Service {
  $core.String get $name => 'Server';

  ServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Msg, $0.Msg>(
        'connection',
        connection,
        true,
        true,
        ($core.List<$core.int> value) => $0.Msg.fromBuffer(value),
        ($0.Msg value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Msg> connection(
      $grpc.ServiceCall call, $async.Stream<$0.Msg> request);
}

class PeerClient extends $grpc.Client {
  static final _$connection = $grpc.ClientMethod<$0.Msg, $0.Msg>(
      '/Peer/connection',
      ($0.Msg value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Msg.fromBuffer(value));
  static final _$ping = $grpc.ClientMethod<$0.Null, $0.Null>(
      '/Peer/ping',
      ($0.Null value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Null.fromBuffer(value));

  PeerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Msg> connection($async.Stream<$0.Msg> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$connection, request, options: options);
  }

  $grpc.ResponseFuture<$0.Null> ping($0.Null request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }
}

abstract class PeerServiceBase extends $grpc.Service {
  $core.String get $name => 'Peer';

  PeerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Msg, $0.Msg>(
        'connection',
        connection,
        true,
        true,
        ($core.List<$core.int> value) => $0.Msg.fromBuffer(value),
        ($0.Msg value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Null, $0.Null>(
        'ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Null.fromBuffer(value),
        ($0.Null value) => value.writeToBuffer()));
  }

  $async.Future<$0.Null> ping_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Null> request) async {
    return ping(call, await request);
  }

  $async.Stream<$0.Msg> connection(
      $grpc.ServiceCall call, $async.Stream<$0.Msg> request);
  $async.Future<$0.Null> ping($grpc.ServiceCall call, $0.Null request);
}
