import 'package:nubankclone/screens/transfer/form.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.account_circle_outlined, size: 26),
                color: Colors.white70,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
            ],
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 70, right: 180),
                    child: Row(
                      children: [
                        Container(
                          child: Text('Olá, Ana', style: TextStyle(fontSize: 18)),
                        ),
                      ],
                    ),
                  ),
                  AppBarActionIcons(Icons.remove_red_eye_outlined),
                  AppBarActionIcons(Icons.help_outline),
                  AppBarActionIcons(Icons.mail_outlined),
                ],
              ),
            ),

          ),
        ],
        // title:
        elevation: 0.00,
        toolbarHeight: 150,
        backgroundColor: Color(0xFF8704BF),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              'Conta\n\nR\$1.355,60',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(19),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(
                          'assets/images/icone-pix-outline-nubank.png',
                        ),
                      ),
                    ),
                    Text(
                      'Pix',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          child: Image.asset(
                            'assets/images/barCode.png',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Pagar',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                ActionIcons("Transferir", Icons.currency_exchange),
                ActionIcons("Depositar", Icons.money_off_outlined),
                ActionIcons("Cobrar", Icons.attach_money),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: 380,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Meus cartões',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Divider(color: Colors.grey),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.credit_card, size: 24),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cartão de Crédito',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fatura atual',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Text(
                    'R\$ 1.094',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Text(
                    'Limite disponível: R\$1400,00',
                    style: TextStyle(
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.grey),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.monetization_on_outlined,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Empréstimos',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Até R\$9.900 disponível para você',
                style: TextStyle(
                  fontFamily: 'Inter',
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.grey),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(Icons.heart_broken_outlined, size: 24),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Seguro de vida',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Um seguro completo e que cabe no seu bolso',
                style: TextStyle(fontFamily: 'Inter'),
              ),
            ),
            SizedBox(height: 20),
            Divider(color: Colors.grey),
            Text(
              'Descubra mais',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 180,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Convidar amigos',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                              'Tire seus amigos da fila do banco e livre eles da buroracia'),
                          ElevatedButton(
                            child: Text('Convidar'),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF830AD1),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              textStyle: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: 180,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Convidar PJ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text('Zero taxas de manutenção para o seu negócio'),
                      ElevatedButton(
                        child: Text('Saiba mais'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF830AD1),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          textStyle: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarActionIcons extends StatelessWidget {
  final IconData _icon;

  AppBarActionIcons(this._icon);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_icon),
      color: Colors.white70,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      },
    );
  }
}

class ActionIcons extends StatelessWidget {
  final String _caption;
  final IconData _icon;

  ActionIcons(this._caption, this._icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(100)),
            child: Container(
              child: IconButton(
                icon: Icon(_icon, size: 24),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TransferForm()));
                },
              ),
            ),
          ),
        ),
        Text(
          '$_caption',
          style: TextStyle(fontSize: 13),
        ),
      ],
    );
  }
}
