import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice_app/all_products.dart';

class LoginUsingApi extends StatefulWidget {
  const LoginUsingApi({super.key});

  @override
  State<LoginUsingApi> createState() => _LoginUsingApiState();
}

class _LoginUsingApiState extends State<LoginUsingApi> {
  var username = TextEditingController();
  var password = TextEditingController();

  Future<void> login() async {
    if(username.text.isNotEmpty && password.text.isNotEmpty){
      var response = await http.post(Uri.parse("https://dummyjson.com/auth/login"),body: ({
        "username" : username.text.toString(),
        "password" : password.text.toString()
      }));
      if(response.statusCode == 200){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AllProducts(),));
      }
      else{
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Invalid credentials")));
      }
    }
    else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Enter UserName and Password")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login screen")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                      hintText: "Username",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 2)),
                      prefixIconColor: Colors.white,
                      prefixIcon: Icon(Icons.person))),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 2)),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                      suffixIconColor: Colors.white,
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: Colors.white)),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(right: 8),
              child: Text(
                "Forgot password?",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      login();
                    });
                  }, child: Text("Login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
