import 'package:flutter/material.dart';
import 'package:repaso_examen_1/page2..dart';
import 'package:repaso_examen_1/page3.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  Variables
  var wordController = TextEditingController();
  String? emoteFromPage3 = '';
  String? wordFromPage2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea 1'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BIENVENIDOS',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Pacifico',
                    color: Color.fromARGB(255, 116, 116, 116),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: Image.asset('assets/comeToTheDartSide.png'),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 50,
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Seleccione la accion a realizar:',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'SourceSansPro-Bold',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 50,
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 33, 150, 243)),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: Text('Ingrese datos'),
                              content: TextField(
                                controller: wordController,
                                maxLength: 10,
                                decoration: InputDecoration(
                                  hintText: 'Ingrese palabra',
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Cancel');
                                  },
                                  child: Text(
                                    'Cancelar',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    Navigator.of(context).pop();
                                    wordFromPage2 = await Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) {
                                      return Page2(
                                        wordFromHomePage: wordController.text,
                                      );
                                    }));
                                    wordController.clear();

                                    setState(() {});
                                  },
                                  child: Text(
                                    'Aceptar',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ));
                  },
                  child: Text(
                    'Pagina 2',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro-Regular',
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 33, 150, 243)),
                  ),
                  onPressed: () async {
                    emoteFromPage3 = await Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Page3();
                    }));
                    setState(() {});
                  },
                  child: Text(
                    'Pagina 3',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro-Regular',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pg.2 ==> $wordFromPage2',
                    style: TextStyle(fontFamily: 'SourceSansPro-Regular'),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pg.3 ==> $emoteFromPage3',
                    style: TextStyle(fontFamily: 'SourceSansPro-Regular'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
