import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            padding: EdgeInsets.only(top: 100),
            width: 150,
            child: Image(
              image: AssetImage('assets/icon/schedly-icon.png'),
              fit: BoxFit.contain,
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 50),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'username',
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'password',
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color(0xFF4A90A4)
                  ),
              ),
            ), 
          ),

          Container(
            child: CheckboxListTile(
              title: Text('Remember me'),
              value: _isChecked,
              activeColor: Color(0xFF4A90A4),
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Handle login logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4A90A4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('Login', 
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?'),
                SizedBox(width: 5),
                Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color(0xFF1F3A5F),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

        ],
        ),
      ),
      ),
    );
  }
}