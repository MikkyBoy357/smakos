// Hi Julia Pak. I think you forgot to wrap the FutureBuilder in a Scaffold() line 26
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'dart:convert' show json, base64, ascii;
//
// final storage = FlutterSecureStorage();
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   Future<String> get appTokenOrEmpty async {
//     var token = await storage.read(key: "token");
//     if (token == null) return "";
//     return token;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Foodora helper',
//       theme: ThemeData(primaryColor: Color.fromARGB(255, 156, 54, 198)),
//       home: Scaffold(
//         body: Center(
//           child: FutureBuilder(
//               future: appTokenOrEmpty,
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) return CircularProgressIndicator();
//                 if (snapshot.data != "") {
//                   var str = snapshot.data;
//                   var token = str.split(".");
//
//                   if (token.length != 6) {
//                     return LoginPage();
//                   } else {
//                     var payload = json.decode(ascii.decode(base64.decode(
//                         base64.normalize(
//                             snapshot.data()[appTokenOrEmpty.toString()]))));
//                     if (DateTime.fromMillisecondsSinceEpoch(
//                             payload['exp'] * 1000)
//                         .isAfter(DateTime.now())) {
//                       return HomePage(str, payload);
//                     } else {
//                       return LoginPage();
//                     }
//                   }
//                 } else {
//                   return LoginPage();
//                 }
//               }),
//         ),
//       ),
//     );
//   }
// }
//
// class LoginPage extends StatelessWidget {
//   final TextEditingController _emailnameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   void displayDialog(context, title, text) => showDialog(
//         context: context,
//         builder: (context) =>
//             AlertDialog(title: Text(title), content: Text(text)),
//       );
//
//   Future<String> attemptLogIn(String email, String password) async {
//     var res = await http.post(
//         "https://api-courier.skipthedishes.com/v1/couriers/login",
//         headers: {
//           "Transfer-Encoding": "chunked",
//           "app-token": "decff1f4-fd24-4e6b-8edd-4f20df798e9b"
//         },
//         body: json.encode({"email": email, "password": password}));
//     if (res.statusCode == 200) return res.body;
//     print(res.body);
//     return null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Log In"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               controller: _emailnameController,
//               decoration: InputDecoration(labelText: 'email'),
//             ),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(labelText: 'Password'),
//             ),
//             FlatButton(
//               onPressed: () async {
//                 var email = _emailnameController.text;
//                 var password = _passwordController.text;
//                 var token = await attemptLogIn(email, password);
//                 if (token != null) {
//                   storage.write(key: token, value: 'token');
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => HomePage.fromBase64(token)));
//                 } else {
//                   displayDialog(context, "An Error Occurred",
//                       "No account was found matching that username and password");
//                 }
//               },
//               child: Text("Log In"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   final id = storage.read(key: 'id');
//   final name = storage.read(key: 'name');
//   HomePage(this.token, this.payload);
//
//   factory HomePage.fromBase64(String appToken) => HomePage(
//       appToken,
//       json.decode(ascii.decode(base64.decode(
//           base64.normalize(appToken.replaceAll("-", '')[appToken.length])))));
//
//   final String token;
//   final Map<String, dynamic> payload;
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text("Secret Data Screen"),
//         ),
//         body: Center(
//           child: FutureBuilder(
//             future: http.read(
//                 "https://api-courier.skipthedishes.com/v2/couriers/$id",
//                 headers: {
//                   "Transfer-Encoding": "chunked",
//                   "app-token": "decff1f4-fd24-4e6b-8edd-4f20df798e9b"
//                 }),
//             builder: (context, snapshot) => snapshot.hasData
//                 ? Column(
//                     children: <Widget>[
//                       Text("${payload['name']}, here's the data:"),
//                       Text(snapshot.data,
//                           style: Theme.of(context).textTheme.bodyText1)
//                     ],
//                   )
//                 : snapshot.hasError
//                     ? Text("An error occurred")
//                     : CircularProgressIndicator(),
//           ),
//         ),
//       );
// }

import 'package:flutter/material.dart';
import 'package:online_shopping/pages/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
    );
  }
}
