import 'package:flutter/material.dart';
import 'package:nubankclone/screens/transfer/form.dart';
import '../../models/transfer.dart';
import '../user_screen.dart';

const _appBarTitle = 'Transferências';

class TransfersList extends StatefulWidget {
  List<Transfer> _transfers = [];

  @override
  State<StatefulWidget> createState() {
    return TransfersListState();
  }
}

class TransfersListState extends State<TransfersList> {
  @override
  Widget build(BuildContext context) {
    // final transfer = ModalRoute.of(context)!.settings.arguments as Transfer;
    // _update(transfer);

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
        title: Column(
          children: [
            Text(
              _appBarTitle,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: Color(0xFFECECEC),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, index) {
          final transfer = widget._transfers[index];
          return TransferItem(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferForm();
          })).then(
            (receivedTransfer) {
              debugPrint('capturou : $receivedTransfer \n atualizando a lista...');
              _update(receivedTransfer);
            },
          );
        },
      ),
    );
  }

  void _update(Transfer receivedTransfer) {
    debugPrint('entrou no update');
    setState(() {
      widget._transfers.add(receivedTransfer);
    });
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          iconColor: Color(0xFF830AD1),
          title: Text(
            'R\$ ' + _transfer.value.toString(),
            style: TextStyle(fontSize: 19),
          ),
          subtitle: Text(
            'Conta ' + _transfer.accountNumber.toString(),
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
