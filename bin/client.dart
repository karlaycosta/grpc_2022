import 'package:grpc/grpc.dart';
import 'package:grpc_2022/generated/server.pbgrpc.dart';

void main() async {
  final channel = ClientChannel(
    'localhost',
    port: 8080,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final client = PeerClient(channel);
  // try {
  //   await client.ping(Null());
  //   print('Servidor online');
  // } on GrpcError catch (e) {
  //   print('[ERROR] - ${e.codeName}');
  // }
  final stream = Stream<Msg>.periodic(
    const Duration(seconds: 2),
    (value) => Msg(body: '$value'),
  ).take(5);
  final res = client.connection(stream);
  try {
    await for (final msg in res) {
      print(msg.body);
    }
  } on GrpcError catch (e) {
    print('[ERROR] - ${e.codeName}');
  }
  await channel.shutdown();
}
