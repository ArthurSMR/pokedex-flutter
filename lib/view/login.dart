import 'package:flutter/material.dart';
import 'package:pokebla/styles/text_field_style.dart';
import 'register.dart';
import '../model/user.dart';
import 'bottom_bar.dart';
import '../controller/authentication.dart';

class LoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final RegisterView register = new RegisterView();
  final User user = new User();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Form(
              key: formKey,
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
                    "E-mail",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextFormField(
                    validator: (String inValue) {
                      if (inValue.length == 0 || !(inValue.contains('@'))) {
                        return "Preencha seu e-mail";
                      }
                      return null;
                    },
                    onSaved: (String inValue) {
                      user.email = inValue;
                    },
                    decoration: TextFieldStyle.textStyle("E-mail"),
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
                  TextFormField(
                    decoration: TextFieldStyle.textStyle("Senha"),
                    obscureText: true,
                    validator: (String inValue) {
                      if (inValue.length == 0) {
                        return "Preencha sua senha";
                      }
                      return null;
                    },
                    onSaved: (String inValue) {
                      user.password = inValue;
                    },
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
              onPressed: () async {
                if (formKey.currentState.validate()) {
                  formKey.currentState.save();
                  user.printValues();
                  bool result = await signIn(user.email, user.password);
                  if (result) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomBar(),
                      ),
                    );
                  } else {
                    print("Login was not completed successfully");
                  }
                }
              },
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
    );
  }
}
