import "package:flutter/material.dart";
import "./Services/ApiService.dart";
import "./Screens/dropdown.dart";
import './Screens/AlertDetails.dart';

void main()
{
  runApp(ApiUI());
}

class ApiUI extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Dropdowns",
      home: AlertDetails()
    );
  }
}
