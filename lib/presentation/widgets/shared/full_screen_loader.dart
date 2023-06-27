import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessages() {
    final messages = <String>[
      'Obteniendo datos de la API',
      'Procesando datos',
      'Esto puede tardar un poco',
      'Cargando imágenes',
      'Cargando películas',
      'Cargando categorias',
      'Carga finalizada',
      'Comencemos',
    ];

    return Stream.periodic(const Duration(milliseconds: 500), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Espera un momento'),
        const SizedBox(height: 10),
        const CircularProgressIndicator(strokeWidth: 2),
        const SizedBox(height: 10),
        StreamBuilder(
          stream: getLoadingMessages(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Cargando...');

            return Text(snapshot.data!);
          },
        )
      ],
    ));
  }
}
