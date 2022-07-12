import 'package:flutter/material.dart';
import 'password_insertion.dart';

const _mainTitle = 'Queremos deixar seu roxinho\nainda mais protegido.'
                  ' Por isso,\nsempre vamos pedir uma senha\npara acessar'
                  ' o aplicativo.';
const _subTitle = 'Saiba mais sobre essa iniciativa \u{2197}';
const _buttonText = 'Usar senha do celular';
const _buttonInfo = 'Essa senha é a mesma forma de validação que '
                    'você usa\npara desbloquear seu celular.';
const _exhibitionSuggestion = 'Pular esta explicação da próxima vez '
                             'que eu abrir\no aplicativo do Nubank.';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/images/logoNu.png',
        ),
        elevation: 0.00,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 35, top: 135),
                  child: Text(_mainTitle,
                    style: TextStyle(
                      fontSize: 21.5,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 35, top: 20),
                  child: Text(_subTitle,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 35, right: 50, top: 135),
                  child: ElevatedButton(
                    child: Text(_buttonText),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF830AD1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      textStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordInsertion()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 45, top: 5, bottom: 10),
                  child: Text(_buttonInfo,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  height: 65,
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.fromLTRB(30.0, 16.0, 16.0, 16.0),
                  child: Text(_exhibitionSuggestion,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}