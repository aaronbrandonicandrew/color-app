import 'package:bruh/shades_page.dart';
import 'package:flutter/material.dart';
import 'list_item.dart';
import 'package:bruh/color_picker.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void navigateToShadePageStatic(
      BuildContext context,
      MaterialAccentColor color,
      ) {
    Navigator.pushNamed(
      context,
      '/shades',
      arguments: color,
    );
  }

  void navigateToColorPicker(BuildContext context) {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
        return ColorPicker();
      }),
      );
  }

  void navigateToShadePage(BuildContext context, MaterialAccentColor color) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return ShadesPage(color: color);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors')),
      backgroundColor: Colors.black,

      body:
      ListView.builder(
        itemCount: Colors.accents.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              navigateToShadePageStatic(
                context,
                Colors.accents.elementAt(index),
              );
            },
            child: ListItem(
              color: Colors.accents.elementAt(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToColorPicker(
            context,

          );
        },
        backgroundColor: Colors.pink,
        child: const Icon(Icons.accessible_forward),
      ),
    );
  }
}
