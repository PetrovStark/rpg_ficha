import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Personagem(),
    ));

class Personagem extends StatefulWidget {
  @override
  _PersonagemState createState() => _PersonagemState();
}

class _PersonagemState extends State<Personagem> {
  var atributos = [
    {"field_name": "NOME", "field_value": "Keyko Amano", "icon": Icons.person},
    {
      "field_name": "CLASSE",
      "field_value": "Guerreira",
      "icon": Icons.group_work
    },
    {
      "field_name": "TÍTULO",
      "field_value": "Exterminadora de Goblins",
      "icon": Icons.brightness_7
    },
  ];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text("RPG"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          children: <Widget>[
            //PERFIL
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/milliemolly.png"),
                  radius: 50,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          "LV",
                          style: TextStyle(
                            color: Colors.grey[500],
                            letterSpacing: 2,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "$counter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey[500],
              height: 60,
            ),
            //ATRIBUTOS PERSONAGEM
            Column(
              children: atributos
                  .map((attr) => Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            //ATRIBUTO
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(
                                    attr["icon"],
                                    color: Colors.grey[500],
                                  ),
                                ),
                                Text(
                                  attr["field_name"],
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    letterSpacing: 2,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              attr["field_value"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            //FIM DO ATRIBUTO
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
