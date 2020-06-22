import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

String image2 = 'https://i.ibb.co/HxcgKvh/icon.png';

void openNotification(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: const Text('Olá, Alef', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Center(
          child: new ListView(
            shrinkWrap: true,
            children:  <Widget>[
              Icon(FontAwesomeIcons.checkCircle, size: 100, color: Colors.green,),
              Text(''),
              Text('Por enquanto, é só.', textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),
              Text(''),
              Text('Volte mais tarde e consulte nossas dicas para personalizar sua conta como preferir.', textAlign: TextAlign.center,style: TextStyle(fontSize: 15) )
            ],
          ),
        )
      );
    },
  ));
}

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,),
          title: const Text(
            'Alef David', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: <Widget>[
            FlatButton(
              textColor: Colors.black,
              onPressed: () {},
              child: Text('Sair'),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            )
          ],
        ),
      );
    }));}
    

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        centerTitle: true,
        title: new IconButton(
          icon: const Icon(Icons.person_outline, color: Colors.black),
          onPressed: (){
            openPage(context);
          },
        ),
        leading: new IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: (){
              openNotification(context);
            },
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            tooltip: 'Next page',
            onPressed: () {
              openPage(context);
            },
          ),
        ],
      ),
      body:
      ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Column(
                children: <Widget>[
                   ListTile(
                    title: Text('Saldo no Paypal', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    trailing:  Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text('R\$ 0,00', style: TextStyle(fontSize: 40)),
                    subtitle: Text('Disponível'),
                  )
                ],
              ),
            ),
          ),),
                ListTile(
                  leading: Text('Suas Atividades', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  trailing: Icon(Icons.arrow_forward, size: 35,),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(image2),
                  ),
                  title: Text('WebLink Hospeda...'),
                  subtitle: Text('Pagamento recorrente'),
                  trailing: Text('- R\$ 23,99'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(image2),
                  ),
                  title: Text('WebLink Hospeda...'),
                  subtitle: Text('Pagamento recorrente'),
                  trailing: Text('- R\$ 23,99'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(image2),
                  ),
                  title: Text('WebLink Hospeda...'),
                  subtitle: Text('Pagamento recorrente'),
                  trailing: Text('- R\$ 23,99'),
                ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.handHoldingUsd, color: Colors.blue),
              title: Text('Enviar', style: TextStyle(fontSize: 15),)
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.piggyBank, color: Colors.blue),
            title: Text('Pedir', style: TextStyle(fontSize: 15)),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.donate, color: Colors.blue),
            title: Text('Doar', style: TextStyle(fontSize: 15)),
          ),
        ],
      ),
    );
  }
}