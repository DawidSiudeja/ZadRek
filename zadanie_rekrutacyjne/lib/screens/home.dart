import 'package:flutter/material.dart';
import 'package:zadanie_rekrutacyjne/screens/secondScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _arrayList = TextEditingController();
  String _textResult = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Zadanie Rekrutacyjne",
            style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 280,
                  child: TextField(
                    controller: _arrayList,
                    style: TextStyle(fontSize: 20,),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Przykład 1,2,3,5,7",
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                setState((){
                    String _aL = _arrayList.text;
                    List<String> strArray = _aL.split(",");
                    List<int> resultArrayOdd = [];
                    List<int> resultArrayEven = [];
                    for( var i = 0 ; i < strArray.length; i++ ) {
                       var num = int.parse(strArray[i]);
                       if(num % 2 == 0) {
                         resultArrayEven.add(num);
                       } else {
                         resultArrayOdd.add(num);
                       }
                    }
                    if(resultArrayEven.length == 1) {
                      _textResult = resultArrayEven[0].toString();
                    }
                    if(resultArrayOdd.length == 1) {
                      _textResult = resultArrayOdd[0].toString();
                    }
                    if(resultArrayEven.length > 1 && resultArrayOdd.length > 1) {
                      _textResult = "Błędne wartości";
                    }
                    
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => secondScreen(
                            textResultSecondScreen: _textResult
                        ))
                    );
                });
              },
              child: Text("Wyszukaj", style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
          ],
        )
      )
    );
  }
}