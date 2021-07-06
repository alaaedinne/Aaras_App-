import 'package:flutter/material.dart';
import 'package:salle_des_fetes/pages/add_salle.dart';

class PreviousOrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.green[500],
                      radius: 50,
                      child: Icon(
                        Icons.circle,
                        size: 90,
                        color: Colors.white,
                      )),
                  SizedBox(
                    height: 28,
                  ),

                     Text(
                      "Dehgane Alaa E dinne",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Pacifico",
                      ),
                    ),

                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green[400],
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Source Sans Pro"),
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child:  Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.phone_outlined,
                          size: 40,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "07822555656885",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.mail_outline, size: 40),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "dehganuss00@gmail.com",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 40),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Bèchar , Algeria",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            SizedBox(
              height: 50,
              width: 200,
              child: Divider(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 200,
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => add_salle()));
                },
                child: Row(
                  children: [Icon(Icons.add), Text("Create your salle")],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
