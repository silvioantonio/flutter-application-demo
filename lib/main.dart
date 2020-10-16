import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
            //Colocar a coluna dentro de uma widget expandida, faz com que ela
            //use todo o espaço livre da linha.
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschien Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            )
          ],
        )),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Apenas um texto de exemplo para verificar as funcionalidades '
      'da aplicação utilizando Flutter!!!'
      'Na imagem pode ser visto a area de acampamento do lago Oeschien'
      'Muito lindo, nao e mesmo!?',
      softWrap: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColorDark;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CHAMAR'),
          _buildButtonColumn(color, Icons.near_me, 'ROTA'),
          _buildButtonColumn(color, Icons.share, 'COMPARTILHAR'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout Demo'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Image.asset(
                'images/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              textSection,
              buttonSection
            ],
          ),
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData iconData, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
