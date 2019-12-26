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
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.person, color: Colors.grey, size: 20),
                ),
                Text(
                  "NOME",
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
              "Mills Molly",
              style: TextStyle(
                color: Colors.grey[200],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.group_work, color: Colors.grey, size: 20),
                ),
                Text(
                  "CLASSE",
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
              "Feiticeira",
              style: TextStyle(
                color: Colors.grey[200],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.healing, color: Colors.grey, size: 20),
                ),
                Text(
                  "HP/MP",
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
              "100 / 400",
              style: TextStyle(
                color: Colors.grey[200],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
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