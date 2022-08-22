///
//  Generated code. Do not modify.
//  source: mensagem.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'mensagem.pb.dart' as $0;
export 'mensagem.pb.dart';

class MensagemClient extends $grpc.Client {
  static final _$enviar = $grpc.ClientMethod<$0.Msg, $0.Msg>(
      '/Mensagem/Enviar',
      ($0.Msg value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Msg.fromBuffer(value));
  static final _$receber = $grpc.ClientMethod<$0.Msg, $0.Msg>(
      '/Mensagem/Receber',
      ($0.Msg value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Msg.fromBuffer(value));

  MensagemClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Msg> enviar($0.Msg request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enviar, request, options: options);
  }

  $grpc.ResponseStream<$0.Msg> receber($0.Msg request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$receber, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class MensagemServiceBase extends $grpc.Service {
  $core.String get $name => 'Mensagem';

  MensagemServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Msg, $0.Msg>(
        'Enviar',
        enviar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Msg.fromBuffer(value),
        ($0.Msg value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Msg, $0.Msg>(
        'Receber',
        receber_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Msg.fromBuffer(value),
        ($0.Msg value) => value.writeToBuffer()));
  }

  $async.Future<$0.Msg> enviar_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Msg> request) async {
    return enviar(call, await request);
  }

  $async.Stream<$0.Msg> receber_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Msg> request) async* {
    yield* receber(call, await request);
  }

  $async.Future<$0.Msg> enviar($grpc.ServiceCall call, $0.Msg request);
  $async.Stream<$0.Msg> receber($grpc.ServiceCall call, $0.Msg request);
}
