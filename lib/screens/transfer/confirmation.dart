import 'package:nubankclone/screens/transfer/list.dart';
import 'package:nubankclone/screens/user_screen.dart';
import 'package:flutter/material.dart';

const _mainTitle = "Transferindo";
const _transferValue = "R\$ 200,00";
const _transferButtonText = "Transferir";

class TransferConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.grey,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => UserScreen()));
          },
        ),
        elevation: 0,
        toolbarHeight: 40,
        backgroundColor: Color(0xFFECECEC),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              _mainTitle,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(_transferValue,
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF830AD1)),
            ),
          ),
          Container(
            child: TransferInfos('CPF', '173.983.048-80'),
            padding: const EdgeInsets.only(top: 30),
          ),
          Container(
            child: TransferInfos('Instituição', 'ITAÚ Unibanco'),
          ),
          Container(
            child: TransferInfos('Agência', '0013'),
          ),
          Container(
            child: TransferInfos('Conta', '20003-1234-987'),
          ),
          Container(
            child: TransferInfos('Tipo de transferência', 'Pix'),
          ),
          Container(
            child: TransferInfos('Quando', '04/07/2022'),
            padding: const EdgeInsets.only(bottom: 40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 45,
                child: ElevatedButton(
                  child: Text(_transferButtonText,
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF830AD1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => TransfersList()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransferInfos extends StatelessWidget {
  final String _infoTitle;
  final String _infoContent;

  TransferInfos(this._infoTitle, this._infoContent);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$_infoTitle',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '$_infoContent',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
