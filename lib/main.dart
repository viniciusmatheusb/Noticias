import 'package:flutter/material.dart';
import 'package:noticias/Components/AppBarNoticias.dart';
import 'package:noticias/Components/NoticiaHero.dart';
import 'package:noticias/Controllers/LayoutController.dart';
import 'package:noticias/Controllers/NoticiasController.dart';
import 'package:noticias/Models/Noticia.dart';

void main() {
  runApp(const NoticiasApp());
}

class NoticiasApp extends StatelessWidget {
  const NoticiasApp({super.key});

  @override
  Widget build(BuildContext context) {
    final LayoutController layoutController = LayoutController();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              brightness: Brightness.dark == layoutController.temaLayout
                  ? Brightness.dark
                  : Brightness.light,
              primary: Colors.blue,
              secondary: Colors.black,
            ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  final NoticiasController noticiasController = NoticiasController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNoticias(title: "Notícias"),
      body: FutureBuilder<List<Noticia>>(
        future: noticiasController.buscaNoticiasApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (noticiasController.lista!.isNotEmpty) {
              return ListView.builder(
                itemCount: noticiasController.lista!.length,
                itemBuilder: (ctx, index) {
                  return NoticiaHero(
                    photo:
                        'https://agenciadenoticias.ibge.gov.br/images/agenciadenoticias/ibge/2024_01/Agenda-IBGE_HOME.jpg',
                    width: 50,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (context) {
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text('Noticia'),
                              ),
                              body: Container(
                                padding: const EdgeInsets.all(16),
                                alignment: Alignment.topLeft,
                                child: NoticiaHero(
                                  photo:
                                      'https://agenciadenoticias.ibge.gov.br/images/agenciadenoticias/ibge/2024_01/Agenda-IBGE_HOME.jpg',
                                  width: 100.0,
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                  //return Text(noticiasController.lista![index].titulo!);
                },
              );
            } else {
              return Container();
            }
          } else {
            return Container(child: Text("Aguarde"));
          }
        },
      ),
    );
  }
}
