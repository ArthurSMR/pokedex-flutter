import 'package:flutter/material.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';
import '../model/user.dart';
import '../styles/text_field_style.dart';
import '../controller/authentication.dart';

class RegisterView {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final User data = new User();
  final TextEditingController pass = TextEditingController();
  final TextEditingController confirmPass = TextEditingController();

  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10),
          topRight: const Radius.circular(10),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              height: (MediaQuery.of(context).size.height / 10) * 9,
              padding: EdgeInsets.only(top: 16, left: 16, right: 8),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cadastro",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 32),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.close,
                                size: 24,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                      ),
                      Text(
                        "Usuário",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                      ),
                      Container(
                        child: TextFormField(
                          validator: (String inValue) {
                            if (inValue.length == 0) {
                              return "Por favor preencha o campo \"Usuário\".";
                            }
                            return null;
                          },
                          onSaved: (String inValue) {
                            data.username = inValue;
                          },
                          decoration:
                              TextFieldStyle.textStyle("Digite seu usuário"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                      ),
                      Text(
                        "Senha",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                      ),
                      Container(
                        child: TextFormField(
                          controller: pass,
                          obscureText: true,
                          validator: (String inValue) {
                            if (inValue.length == 0) {
                              return "Por favor preencha o campo \"Senha\".";
                            }
                            return null;
                          },
                          onSaved: (String inValue) {
                            data.password = inValue;
                          },
                          decoration:
                              TextFieldStyle.textStyle("Digite sua senha"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                      ),
                      Text(
                        "Confirmar sua senha",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                      ),
                      Container(
                        child: TextFormField(
                          controller: confirmPass,
                          obscureText: true,
                          validator: (String inValue) {
                            if (inValue.length == 0) {
                              return "Por favor preencha o campo \"Confirmar sua senha\".";
                            }
                            if (inValue.compareTo(pass.text) != 0) {
                              return "As senhas digitadas estão diferentes";
                            }
                            return null;
                          },
                          decoration: TextFieldStyle.textStyle(
                              "Digite sua senha novamente"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                      ),
                      Text(
                        "Digite seu e-mail",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                      ),
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          validator: (String inValue) {
                            if (inValue.length == 0 ||
                                inValue.contains("@") == false) {
                              return "Por favor preencha o campo \"E-mail\" com um e-mail válido.";
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            data.email = newValue;
                          },
                          decoration:
                              TextFieldStyle.textStyle("Digite seu e-mail"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                      ),
                      CheckboxListTileFormField(
                        activeColor: Colors.blue,
                        title: Text('Aceito os termos de condições de uso.'),
                        onSaved: (bool value) {
                          data.terms = value;
                        },
                        validator: (bool value) {
                          if (!value) {
                            return "Assine os termos de condições de uso!";
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
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
                              "Cadastrar",
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
                            data.printValues();
                            bool result = await signUp(
                                data.email, data.password, data.username);
                            if (result) {
                              Navigator.pop(context);
                            } else {
                              print("Register account was not completed");
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
