
import 'package:flutter/material.dart';
import 'package:oddeven_app/main.dart';

class FindEven extends StatefulWidget {
  @override
  _FindEvenState createState() => _FindEvenState();
}

class _FindEvenState extends State<FindEven> {
  TextEditingController fnum=TextEditingController();
 TextEditingController snum=TextEditingController();

  int _even=0;
  int _odd;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Find the Even"),
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

                     if(getInteger.isEven)
                      {
                        _even=getInteger;

                      }
                     else{
                       _even=getInteger2;
                     }
                    // print(_even);
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

            Text(_even.toString(), style: TextStyle(
              fontSize: 30
            ),),
                Text("is Even",
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

            ],
          ),
        ),
      ),
      ),

    );
  }
}
