import 'package:flutter/material.dart';

// ignore: camel_case_types
class add_salle extends StatelessWidget {
  var title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create your room"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    inputFile(label: "Title", controller: title),
                    inputFile(label: "Description"),
                    inputFile(label: "Price"),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      child: MaterialButton(
                        color: Colors.green,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => add_salle()));
                        },
                        child: Row(
                          children: [
                            Icon(Icons.filter),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "Add picture",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: 50,
                width: double.infinity,
                child: MaterialButton(
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      "Done",
                      style: TextStyle(),
                    ))),
          ],
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400]),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400]),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[400]),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
