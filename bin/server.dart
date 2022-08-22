import 'package:grpc/grpc.dart';
import 'package:grpc_2022/server.dart';


void main(List<String> arguments) async {
  final server = Server([MensagemService()]);
  await server.serve(port: 8080);
  print('Servidor rodando na porta ${server.port}...');
}
