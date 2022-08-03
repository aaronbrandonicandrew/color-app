import 'package:flutter/material.dart';
import 'home_page.dart';

void navigateToMyHomePage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (BuildContext context) {
      return MyHomePage();
    }),
  );
}

class ColorPicker extends StatefulWidget {
  const ColorPicker({Key? key}) : super(key: key);

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  @override

  int red = 1;
  int green = 1;
  int blue = 1;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Color Picker'),
        ),
        body: Column(
          children: [
            Slider(
                min: 0,
                max: 255,
                value: red.toDouble(),
                onChanged: (value) {
                  red = value.toInt();

                  setState(() {});
                }),
            Slider(
                min: 0,
                max: 255,
                value: green.toDouble(),
                onChanged: (value) {
                  green = value.toInt();

                  setState(() {});
                }),
            Slider(
                min: 0,
                max: 255,
                value: blue.toDouble(),
                onChanged: (value) {
                  blue = value.toInt();

                  setState(() {});
                }),
            Text(
              'Selected Colour',
              style:TextStyle(color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.all(50),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(red, green, blue, 1.0),
              ),
            ),
            ElevatedButton(
                onPressed: () =>
                {
                  Navigator.of(context).pop(),
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          AlertDialog(
                            content: Row(
                              children: [
                                Text("You have chosen "),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    color: Color.fromRGBO(red, green, blue, 1.0),),
                                )
                              ],
                            ),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () => Navigator.pop(context, "OK"),
                                  child: Text("OK"))
                            ],
                          ))
                },
                child: Text("Pick me!"))
          ],
        ),
      ),
    );
  }
}
