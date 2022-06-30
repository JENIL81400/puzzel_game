import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:puzzle/sizedata.dart';

void main() {
  runApp(  MaterialApp(
    home: puzzle(),
  ));
}
class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  _puzzleState createState() => _puzzleState();
}
class _puzzleState extends State<puzzle> {
  List l=["1","2","3","4","5","6","7","8",""];
  List templ=[];
  String winner ="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    templ.addAll(l);
    print("templ=$templ");
    l.shuffle();
  }
  win() {
    if (listEquals(l, templ)) {
      print("win");
      winner="YOU ARE WiNNER";
    }
  }

  @override
  Widget build(BuildContext context) {
    sizedata(context);
    return Scaffold(
      appBar: AppBar(),
        body: Container(
      width: sizedata.width,
      height: sizedata.height,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 500,
            child: Text("PUZZLE",
              style: TextStyle(
                fontSize: 50,
                 backgroundColor: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            alignment: Alignment.center,
            color: Colors.white70,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: (){
                setState(() {
                  if (l[1] == '') {
                    l[1] = l[0];
                    l[0] = '';
                  }
                  if (l[3] == '') {
                    l[3] = l[0];
                    l[0] = '';
                  }
                  win();
                });
              },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color: l[0] != "" ? Colors.orange : Colors.white,
                  //color: Colors.red,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[0]}",
                    style: TextStyle(fontSize: 50),),

                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if (l[0] == '') {
                      l[0] = l[1];
                      l[1] = '';
                    }
                    if (l[2] == '') {
                      l[2] = l[1];
                      l[1] = '';
                    }
                    if (l[4] == '') {
                      l[4] = l[1];
                      l[1] = '';
                    }
                    win();
                  });
                },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color: l[1] != "" ? Colors.purple : Colors.white,
                  //color: Colors.white,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[1]}",
                    style: TextStyle(fontSize: 50),),

                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if(l[1]=='')
                      {
                        l[1]=l[2];
                        l[2]='';
                      }
                    if(l[5]=='')
                      {
                        l[5]=l[2];
                        l[2]='';
                      }
                    win();
                  });
                },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color: l[2] != "" ? Colors.lightGreen : Colors.white,
                  //color: Colors.blue,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[2]}",
                    style: TextStyle(fontSize: 50),),
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell( onTap: () {
                setState(() {
                  if(l[0]=='')
                  {
                    l[0]=l[3];
                    l[3]='';
                  }
                  if(l[4]=='')
                  {
                    l[4]=l[3];
                    l[3]='';
                  }
                  if(l[6]=='')
                  {
                    l[6]=l[3];
                    l[3]='';
                  }
                  win();
                });
              },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color: l[3] != "" ? Colors.pink : Colors.white,
                  //color: Colors.lightGreenAccent,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[3]}",
                    style: TextStyle(fontSize: 50),),

                ),

              ),
              InkWell( onTap: () {
                setState(() {
                  if (l[1] == '') {
                    l[1] = l[4];
                    l[4] = '';
                  }
                  if (l[3] == '') {
                    l[3] = l[4];
                    l[4] = '';
                  }
                  if (l[5] == '') {
                    l[5] = l[4];
                    l[4] = '';
                  }
                  if (l[7] == '') {
                    l[7] = l[4];
                    l[4] = '';
                  }
                  win();
                });
              },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color: l[4] != "" ? Colors.blue : Colors.white,
                  //color: Colors.pink,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[4]}",
                    style: TextStyle(fontSize: 50),),

                ),
              ),
              InkWell( onTap: () {
                setState(() {
                  if (l[2] == '') {
                    l[2] = l[5];
                    l[5] = '';
                  }
                  if (l[4] == '') {
                    l[4] = l[5];
                    l[5] = '';
                  }
                  if (l[8] == '') {
                    l[8] = l[5];
                    l[5] = '';
                  }
                  win();
                });
              },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color: l[5] != "" ? Colors.red : Colors.white,
                  //color: Colors.green,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[5]}",
                    style: TextStyle(fontSize: 50),),
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (l[3] == '') {
                      l[3] = l[6];
                      l[6] = '';
                    }
                    if (l[7] == '') {
                      l[7] = l[6];
                      l[6] = '';
                    }
                    win();
                  });
                },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color:l[6] != "" ? Colors.brown: Colors.white,
                  //color: Colors.orange,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[6]}",
                    style: TextStyle(fontSize: 50),),
                ),
              ),
              InkWell( onTap: () {
                setState(() {
                  if (l[4] == '') {
                    l[4] = l[7];
                    l[7] = '';
                  }
                  if (l[6] == '') {
                    l[6] = l[7];
                    l[7] = '';
                  }  if (l[8] == '') {
                    l[8] = l[7];
                    l[7] = '';
                  }
                  win();
                });
              },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color: l[7] != "" ? Colors.deepPurpleAccent : Colors.white,
                  //color: Colors.amber,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[7]}",
                    style: TextStyle(fontSize: 50),),
                ),
              ),
              InkWell( onTap: () {
                setState(() {
                  if (l[5] == '') {
                    l[5] = l[8];
                    l[8] = '';
                  }
                  if (l[7] == '') {
                    l[7] = l[8];
                    l[8] = '';
                  }
                  win();
                });
              },
                child: Container(
                  width: sizedata.width!*0.3,
                  height: sizedata.width!*0.3,
                  color: l[8] != "" ? Colors.lightBlueAccent : Colors.white,
                  //color: Colors.purple,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${l[8]}",
                    style: TextStyle(fontSize: 50),),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Text(
                "WIN : $winner",
                style: TextStyle(
                  color: Colors.white,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  l.shuffle();
                },
                iconSize: 50,
                icon: Icon(Icons.replay,
                color: Colors.white,
              ),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}