import 'package:flutter/material.dart';
import 'package:oddeven_app/find/even.dart';
import 'package:oddeven_app/find/odd.dart';
class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          SizedBox(height: 20,),
          SizedBox(height: 50,width: double.infinity,
            child: RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>FindEven()));
              },
              child: Text("Even",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              onPressed: (){

                Navigator.push(context,MaterialPageRoute(builder: (context)=>FindOdd()));
              },
              child: Text("Odd",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),),
            ),
          )
        ],
      ),
    );
  }
}
