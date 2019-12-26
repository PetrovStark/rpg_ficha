import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Personagens(),
));

class Personagens extends StatefulWidget {
  @override
  _PersonagensState createState() => _PersonagensState();
}

class _PersonagensState extends State<Personagens> {

  var charinfo = [
    {
      "field_name": "NOME",
      "field_value" : "Rose Garden",
      "icon" : Icons.person,
    },
    {
      "field_name": "CLASSE",
      "field_value" : "Guerreira",
      "icon": Icons.group_work,
    },
    {
      "field_name": "HP/MP",
      "field_value" : "200/400",
      "icon" : Icons.healing,
    }
  ];

  int forca = 30;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("RPG"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/milliemolly.png"),
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[600],
            ),
            Column(
              children: charinfo.map((info) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(info["icon"], color: Colors.grey, size: 20),
                      ),
                      Text(
                        info["field_name"],
                        style: TextStyle(
                          color: Colors.grey,
                          letterSpacing: 2,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    info["field_value"],
                    style: TextStyle(
                      color: Colors.grey[200],
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              )).toList(),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.fitness_center, color: Colors.grey, size: 20),
                      ),
                      Text(
                        "$forca",
                        style: TextStyle(
                          color: Colors.grey[200],
                          letterSpacing: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.security, color: Colors.grey, size: 20),
                      ),
                      Text(
                        "80",
                        style: TextStyle(
                          color: Colors.grey[200],
                          letterSpacing: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.offline_bolt, color: Colors.grey, size: 20),
                      ),
                      Text(
                        "30",
                        style: TextStyle(
                          color: Colors.grey[200],
                          letterSpacing: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            forca++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}