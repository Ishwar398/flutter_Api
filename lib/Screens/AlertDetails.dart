import "package:flutter/material.dart";


class AlertDetails extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _AlertDetails();
  }

}

class _AlertDetails extends State<AlertDetails>{

  @override
  Widget build(BuildContext context) {
    var demoAlert = fetchedAlertDetails().GetAlertDetails();

    return Scaffold(
      appBar: AppBar(
        title: Text(
            demoAlert.alertId,
          style: TextStyle(
            fontFamily: "Raleway"
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Image.network(demoAlert.imageUrl),
            Center(
              child: Text(
                demoAlert.alertReason,
                style: TextStyle(
                    fontFamily: "Raleway"
                ),
              ),
            ),
            Center(
              child: Text(
                demoAlert.alertReason,
                style: TextStyle(
                    fontFamily: "Raleway"
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}


class fetchedAlertDetails{
  String alertId;
  String imageUrl;
  String alertReason;
  String description;

  fetchedAlertDetails GetAlertDetails()
  {
    var testAlert = new fetchedAlertDetails();
    testAlert.alertId = "Alert#31";
    testAlert.imageUrl = "https://www.sciencemag.org/sites/default/files/styles/inline__699w__no_aspect/public/dogs_1280p_0.jpg?itok=_Ch9dkfK";
    testAlert.alertReason = "Demo Reason";
    testAlert.description = "This is a demo description. Being a demo description this makes no sense";

    return testAlert;
  }
}