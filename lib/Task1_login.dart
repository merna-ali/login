import 'package:flutter/material.dart';

class Task1_Login extends StatefulWidget {
  const Task1_Login({Key? key}) : super(key: key);

  @override
  State<Task1_Login> createState() => _Task1_LoginState();
}

class _Task1_LoginState extends State<Task1_Login> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )),
            ),
            painter: CurvePainter(),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: fullNameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'FullName',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.purple,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.purple,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: emailController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.purple,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.purple,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: confirmPasswordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(
                    Icons.key,
                    color: Colors.purple,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: const Text('Register'),
                onPressed: () {
                  print(fullNameController.text);
                  print(passwordController.text);
                },
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                    width: 2.0,
                    color: Colors.purple,
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.purple),
                ),
                onPressed: () {
                  print(fullNameController.text);
                  print(passwordController.text);
                },
              )),
        ],
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.purple;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.700,
        size.width * 0.5, size.height * 0.9167);

    path.quadraticBezierTo(size.width * 0.70, size.height * 0.9999,
        size.width * 1, size.height * 0.750);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
