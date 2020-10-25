import 'package:flutter/material.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';
import 'package:pokebla/styles/text_field_style.dart';
import 'register.dart';
import 'register.dart';
import 'register.dart';

class LoginView extends StatelessWidget {
  Register register = new Register();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 64 / 660),
                  ),
                  Image(
                    image: AssetImage('Assets/Logo.png'),
                    width: MediaQuery.of(context).size.height,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 72 / 660),
                  ),
                  Text(
                    "Usuário",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextField(
                    decoration: TextFieldStyle.textStyle("Usuário"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 16),
                  ),
                  Text(
                    "Senha",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextField(
                    decoration: TextFieldStyle.textStyle("Senha"),
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.1),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 104 / 660),
                  ),
                ],
              ),
            ),
            RaisedButton(
              color: Color(0xFF2C62A9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () {},
            ),
            FlatButton(
              onPressed: () => register.mainBottomSheet(context),
              child: Text(
                'Crie uma nova conta',
                style: TextStyle(
                  color: Color(0xFF2C62A9),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   onPressed: () => register.mainBottomSheet(context),
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
