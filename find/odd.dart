import 'package:flutter/material.dart';
import 'package:oddeven_app/find/students.dart';
import 'package:oddeven_app/main.dart';

class FindOdd extends StatefulWidget {
  @override
  _FindOddState createState() => _FindOddState();
}

class _FindOddState extends State<FindOdd> {

  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();

  int _odd=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Find the Odd"),
        ),
        body:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: fnum,
                  decoration: InputDecoration(
                      labelText: "integer",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: snum,
                  decoration: InputDecoration(
                      labelText: "integer2",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),

                SizedBox(height: 20,),
                SizedBox(height: 50,width: double.infinity,
                  child: RaisedButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: (){
                      var getInteger = int.parse(fnum.text);
                      var getInteger2=int.parse(snum.text);
                      print(getInteger);
                      setState(() {
                        _odd=(getInteger.isOdd)? getInteger:getInteger2;
                      });

                    },
                    child: Text("Find",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),),


                  ),
                ),
                SizedBox(height: 20,),

                Text(_odd.toString(), style: TextStyle(
                    fontSize: 30
                ),),
                Text("is Odd",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30
                  ),),
                SizedBox(height: 20,),
                SizedBox(height: 50,width: double.infinity,
                  child: RaisedButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                    },

                    child: Text("Menu",style: TextStyle(
                        color: Colors.white,fontSize: 20
                    ),),
                  ),
                ),
                SizedBox(height: 20,),
               
              ],
            ),
          ),
        ),
      ),

    );
  }
}
