import "package:flutter/material.dart";
import "./Services/ApiService.dart";

void main()
{
  runApp(ApiUI());
}

class ApiUI extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "API Calls",
      home: Material(
        child: Container(
          padding: EdgeInsets.all(20.0),

          child: ListView(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  var retString = ApiServices().getCall();
                },
                child: Text(
                    "Get Call",
                    textDirection: TextDirection.ltr
                ),
              ),
              RaisedButton(
                onPressed: (){
                  ApiServices().postCall();
                },
                child: Text(
                    "Post Call",
                    textDirection: TextDirection.ltr
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
