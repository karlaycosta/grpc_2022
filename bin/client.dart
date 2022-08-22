import 'package:grpc/grpc.dart';
import 'package:grpc_2022/generated/mensagem.pbgrpc.dart';

void main() async {
  final channel = ClientChannel(
    'localhost',
    port: 8080,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final client = MensagemClient(channel);
  final msg = await client.enviar(Msg(mensagem: 'Olá mundo!'));
  print('Msg: ${msg.mensagem} | Nº: ${msg.numero}');
  final stream = client.receber(Msg(mensagem: 'Receber'));
  await for (final msg in stream) {
    print(msg.mensagem);
  }
  await channel.shutdown();
}
