import 'package:grpc/grpc.dart';
import 'package:grpc_2022/generated/server.pbgrpc.dart';

class ServerService extends ServerServiceBase {
  @override
  Stream<Msg> connection(ServiceCall call, Stream<Msg> request) async* {
    try {
      await for (final msg in request) {
        print(msg.body);
        yield Msg(body: 'OK', header: 'Server');
      }
    } on GrpcError catch (e) {
      print('[ERROR] - $e');
    }
  }
}

class PeerService extends PeerServiceBase {
  @override
  Stream<Msg> connection(ServiceCall call, Stream<Msg> request) async* {
    try {
      await for (final msg in request) {
        print(msg.body);
        yield Msg(body: 'OK', header: 'Server');
      }
    } on GrpcError catch (e) {
      print('[ERROR] - ${e.codeName}');
    }
  }

  /// Função para saber se o sevidor está online.
  @override
  Future<Null> ping(ServiceCall call, Null request) async => request;
}
