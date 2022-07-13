import 'package:flutter/material.dart';
import 'package:nubankclone/screens/user_screen.dart';

import '../../components/editor.dart';
import '../../models/transfer.dart';

const _transferScreenTitle = 'Qual é a conta e o valor desejado?';

class TransferForm extends StatefulWidget {
  @override
  State<TransferForm> createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  final TextEditingController controllerAccountNumberField = TextEditingController();
  final TextEditingController controllerValueField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.grey,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => UserScreen()));
          },
        ),
        elevation: 0,
        toolbarHeight: 40,
        backgroundColor: Color(0xFFECECEC),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                _transferScreenTitle,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Editor(controller: controllerAccountNumberField, label: 'Número da conta', hint: '0000'),
            Editor(controller: controllerValueField, label: 'Valor', hint: '0.00', icon: Icons.monetization_on,),
            ElevatedButton(
              onPressed: () {
                final ct = _createdTransfer(controllerAccountNumberField, controllerValueField, context);
                Navigator.pop(context, ct);
                // Future future = Navigator.push(context,MaterialPageRoute(builder: (context) => TransfersList(), ///PUSH?
                //     settings: RouteSettings(
                //         arguments: ct
                //     )
                // ));
                // future.then((_createdTransfer){
                //   debugPrint('chegou no then future: $_createdTransfer');
                // });
              },
              child: Text('Transferir'),
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Transfer _createdTransfer(
    controllerAccountNumberField, controllerValueField, BuildContext context) {
  final int accountNumber = int.parse(controllerAccountNumberField.text);
  final double value = double.parse(controllerValueField.text);

  return Transfer(value, accountNumber);
}
