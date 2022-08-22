import 'package:grpc/grpc.dart';

import 'generated/mensagem.pbgrpc.dart';

class MensagemService extends MensagemServiceBase {
  int _count = 0;
  @override
  Future<Msg> enviar(ServiceCall call, Msg request) async {
    print('Requisição[enviar]: ${request.mensagem}');
    return Msg(mensagem: 'Echo: ${request.mensagem}', numero: ++_count);
  }

  @override
  Stream<Msg> receber(ServiceCall call, Msg request) async* {
    print('Requisição[receber]: ${request.mensagem}');
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 5));
      yield Msg(mensagem: 'Número: $i');
    }
  }
}
