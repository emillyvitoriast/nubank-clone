import 'package:flutter/material.dart';
import 'home.dart';
import 'user_screen.dart';

const _mainTitle = 'Insira a senha de desbloqueio do\nseu celular:';
const _confirmationButtonText = 'Confirmar';

class PasswordInsertion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.grey,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        elevation: 0,
        toolbarHeight: 40,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: Column(
              children: [
                Text(_mainTitle,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 21.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      width: 350,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF830AD1),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      textStyle: TextStyle(fontSize: 14),
                    ),
                    child: Text(_confirmationButtonText,
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserScreen()));
                    },
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
