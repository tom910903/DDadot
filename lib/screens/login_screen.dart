import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:email_validator/email_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: Container(
            padding: const EdgeInsets.all(32),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120.h,
                ),
                Container(
                  width: 80.w,
                  height: 80.w,
                  color: Colors.amber,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value){
                    setState(() {
                      _email = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "user@email.com",
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    errorText: _email.isEmpty || EmailValidator.validate(_email) ? null : "Please enter a valid email",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  textAlign: TextAlign.center, onChanged: (value){
                  setState(() {
                    _password = value;
                  });
                },
                  decoration: InputDecoration(
                    hintText: "password",
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    errorText: _password.isEmpty || _password.length > 6 ? null : "Please enter a valid email",
                  ),
                ),
                TextButton(
                    onPressed: (){},
                    child: Text('Login')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
