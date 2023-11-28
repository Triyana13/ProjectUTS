import "package:consultan/screens/register.screen.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset("images/4380.jpg"),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("password"),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: InkWell(
                  onTap: () {
                    if (passToggle == true) {
                      passToggle = false;
                    } else {
                      passToggle = true;
                    }
                    setState(() {});
                  },
                  child: passToggle
                   ? Icon(CupertinoIcons.eye_slash_fill)
                   : Icon(CupertinoIcons.eye_fill),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     // context,
                        //     // MaterialPageRoute(
                        //     //   builder: (context) => LoginScreen(),
                            // ));
                      },
                      
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Apakah belum punya akun ?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                    TextButton(onPressed:(){ 
                      
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                        ));
                    },
                    child: Text(
                      "Buat Akun",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Colors.blue
                      ),
                    )
                    )
                  ],
                )
        ]),
      ),
    );
  }
}
