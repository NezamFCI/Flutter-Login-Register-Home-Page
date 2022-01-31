import 'package:flutter/material.dart';
import 'package:flutter_ui/class/flowerData.dart';
import 'package:flutter_ui/country_pages/bangladesh.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: customListViewDesign(
            const CircleAvatar(
              child: Icon(Icons.person),
            ),
          ),
        ));
  }

  customListViewDesign(var customIcon) {
    return ListView.builder(
        itemCount: FlowerData().items.length,
        itemBuilder: (context, position) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: ListTile(
                leading: customIcon,
                title: Text(
                  '${FlowerData().items[position]["name"]}',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  'Capital: ${FlowerData().items[position]["capital"]}',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                onTap: () {
                  Fluttertoast.showToast(
                      msg: '${FlowerData().items[position]['name']}',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      textColor: Colors.white,
                      backgroundColor: Colors.red[200],
                      fontSize: 16.0);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Bangladesh(index: position)),
                  );
                },
              ),
            ),
          );
        });
  }
}
