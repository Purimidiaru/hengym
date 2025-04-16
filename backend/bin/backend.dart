import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

void main() async {
  // Créer un routeur pour définir des endpoints
  final router = Router();

  // Route /hello qui renvoie un JSON
  router.get('/hello', (Request request) {
    final data = jsonEncode({'message': 'Hello, Flutter!'});
    return Response.ok(data, headers: {'Content-Type': 'application/json'});
  });

  // Pipeline avec log des requêtes
  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addHandler(router);

  // Démarrage du serveur sur le port 8080
  final server = await io.serve(handler, '0.0.0.0', 8080);
  print('Backend démarré sur http://${server.address.host}:${server.port}');
}
