import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  funcLogin() {}
  reg() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    // height: ,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets\images\bus.png'))),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('Speedy Bites'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                    label: Text('FACEBOOK '),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.mode_sharp),
                    label: Text('GOOGLE '),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.apple),
                label: Text('APPLE '),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 0.5,
                  )),
                  Text("or"),
                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 0.5,
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: funcLogin(),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                        color: Colors.black87,
                        // width: 25,
                      )),
                  child: Center(
                    child: Text(
                      "LOGIN BY EMAIL",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: funcLogin(),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                        color: Colors.white,
                        // width: 25,
                      )),
                  child: Center(
                    child: Text(
                      "NEW ACCOUNT",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: funcLogin(),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                        color: Colors.white,
                        // width: 25,
                      )),
                  child: Center(
                    child: Text(
                      "SIGN IN LATER",
                      style: TextStyle(
                          color: Colors.red[600], fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )) // child: ElevatedButton(onPressed: () {}, child: Text("Go BAck!"))),
        );
  }
}
