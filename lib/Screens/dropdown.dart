import "package:flutter/material.dart";

class StateSelect extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CitySelect();
  }
}

class _CitySelect extends State<StateSelect> {
  var stateCitySelection = new Map<String, List<String>>();
  var _states = ["Maharashtra", "Delhi", "Karnataka", "Gujrat"];
  var _currentState = "Maharashtra";
  var _currentCity = "";

  @override
  Widget build(BuildContext context) {
    stateCitySelection["Maharashtra"] = ["Mumbai", "Pune"];
    stateCitySelection["Delhi"] = ["Delhi", "Noida"];
    stateCitySelection["Karnataka"] = ["Banglore"];
    stateCitySelection["Gujrat"] = ["Surat"];

    return Scaffold(
      appBar: AppBar(
        title: Text("State City Selection"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: _states.map((String selectedState) {
                return DropdownMenuItem<String>(
                    value: selectedState, child: Text(selectedState));
              }).toList(),
              onChanged: (String newStateSelected) {
                setState(() {
                  this._currentState = newStateSelected;
                  this._currentCity = "";
                });
              },
              value: this._currentState,
            ),
            DropdownButton<String>(
              items:
                  stateCitySelection[_currentState].map((String selectedCity) {
                return DropdownMenuItem<String>(
                  value: selectedCity,
                  child: Text(selectedCity),
                );
              }).toList(),
              onChanged: (String newSelectedCity) {
                setState(() {
                  this._currentCity = newSelectedCity;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Your selected state is $_currentState")),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Your selected city is $_currentCity"),
            )
          ],
        ),
      ),
    );
  }
}
