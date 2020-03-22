import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Buttons()),
    );
  }
}
class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String _selectedGender=null;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
        FlatButton(
          color: Colors.red,
          child: Text('I am FlatButton'),
          onPressed: (){
            print('You tapped on FlatButton');
          },
        ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

        RaisedButton(
          child: Text('I am RaisedButton'),
          onPressed: (){
            print('You tapped on RaisedButton');
          },
        ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('You tapped on FloatingActionButton');
          },
        ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

    IconButton(
    icon: Icon(Icons.volume_up),
    tooltip: 'Increase volume by 10%',
    onPressed: () { print('Volume button clicked');},
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

    DropdownButton(
    value: _selectedGender,
    items: _dropDownItem(),
    onChanged: (value){
    _selectedGender =value;
    setState(() {

    });
    },
    hint: Text("  Select Gender                                   "),
    ),

        SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

        MaterialButton(
          minWidth: 200.0,
          height: 35,
          color: Color(0xFF801E48),
          child: new Text('I am Material Button',
              style: new TextStyle(fontSize: 16.0, color: Colors.white)),
          onPressed: () {},
        ),

    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

        OutlineButton(
            child: new Text(" I am OutlineButton "),
            onPressed: null,
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
        ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

        Radio(
          value: 1,
//          groupValue: selectedRadio,
          activeColor: Colors.green,
          onChanged: (val) {
            print("Radio $val");
//            setSelectedRadio(val);
          },
        ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

        RadioListTile(
          value: 2,
//          groupValue: selectedRadioTile,
          title: Text("Radio 2"),
          subtitle: Text("Radio 2 Subtitle"),
          onChanged: (val) {
            print("Radio Tile pressed $val");
//            setSelectedRadioTile(val);
          },
          activeColor: Colors.red,
          secondary: OutlineButton(
            child: Text("Say Hi"),
            onPressed: () {
              print("Say Hello");
            },
          ),
          selected: false,
        ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

        PopupMenuButton<int>(
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Text("First"),),
            PopupMenuItem(
              value: 2,
              child: Text("Second"),),
          ],
        ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

    InkWell(
    onTap: () {
    print('Clicked on URL by InkWell Widget');
    },
    child: Text("I am InkWell",
    style: TextStyle(
    color: Colors.blue,
    fontSize: 13,
    decoration: TextDecoration.underline)),
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

    GestureDetector(
    onTap: () {
    print('Clicked on URL by GestureDetector Widget');
    },
    child: Text("I am GestureDetector",
    style: TextStyle(
    color: Colors.blue,
    fontSize: 13,
    decoration: TextDecoration.underline)
    ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

      ],
    );
  }
}

List<DropdownMenuItem<String>> _dropDownItem(){
  List<String> ddl=["Male","Female","Others"];
  return ddl.map(
          (value)=>DropdownMenuItem(
        value: value,
        child: Text("            $value"),
      )
  ).toList();
}