import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLUREST',
      home: MyHomePage(),
    );
  }
}
// COLORS
var textYellow = Color(0xFFf6c24d);
var iconYellow = Color(0xFFf4bf47);

var green = Color(0xFF4caf6a);
var greenLight = Color(0xFFd8ebde);

var red = Color(0xFFf36169);
var redLight = Color(0xFFf2dcdf);

var blue = Color(0xFF398bcf);
var blueLight = Color(0xFFc1dbee);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: MyActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: MyAppbar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 2.0),
              MyAppBar(),
              SizedBox(height: 2.0),
              FoodListview(),
              SizedBox(height: 2.0),
              MenuItemsList(),
              MenuCardList()
            ],
          ),
        ));
  }
}

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.black45),
                  Text('Search', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(width: 100.0,),
              Column(
                children: <Widget>[
                  Icon(Icons.shop, color: Colors.black45),
                  Text('Wishlist', style: TextStyle(fontSize: 12.0),)
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.shopping_cart, color: Colors.black45,),
                  Text('Cart', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
        sides: 6,
        child: Container(
          color: iconYellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(height: 4.0,),
              Text('Menu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)
            ],
          ),
        ),
      ),
    );
  }
}



class MenuItemsList extends StatelessWidget {
  const MenuItemsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 350.0,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Text(
              'Lo más pedido',
              style: TextStyle(fontSize: 25.0, color: Colors.black54),
            ),
            SizedBox(height: 5.0),
            MenuItem(),
            MenuItem(),
            MenuItem(),
            MenuItem(),
            MenuItem(),
            MenuItem(),
          ],
        ),
        ),
    );
  }
}

class MenuCardList extends StatelessWidget {
  const MenuCardList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 15.0),
      child: Container(
        height: 125.0,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MenuCard(),
            SizedBox(width: 10.0),
            MenuCard(),
            SizedBox(width: 10.0),
            MenuCard(),
            SizedBox(width: 10.0),
            MenuCard(),
            SizedBox(width: 10.0),
            MenuCard(),
            SizedBox(width: 10.0), 
          ],
        ),
      ),
    );
    }
}


class MenuCard extends StatelessWidget{
  const MenuCard({
    Key key,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      width: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:
                    DecorationImage(image: AssetImage('assets/ceviche.jpg'))),
            height: 115.0,
            width: 100.0,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Ceviche con causa',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              Text(
                'de Cangrejo',
                style: TextStyle(fontFamily: 'Quicksand'),
              ),
              SizedBox(height: 5.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        image: DecorationImage(
                            image: AssetImage('assets/cerberodev.png'))),
                  ),
                  SizedBox(width: 5.0),
                  Text('Pierre Guillen',
                      style: TextStyle(fontFamily: 'Quicksand'))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}


class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset('assets/arroz.jpg'),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: iconYellow,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Row(
                      children: <Widget>[
                        Text('25 '), Icon(Icons.monetization_on, size: 15.0, )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Arroz con Pollo',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Container(
                    width: 200.0,
                    child: Text(
                      'Delicioso plato de arroz con pollo, con su respectiva papa a la huancaina ...',
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}






class FoodListview extends StatelessWidget {
  const FoodListview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.grid_on,
            color: Colors.grey,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('Location', style: TextStyle(color: Colors.black54),),
              Text(
                'Lima, Perú',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          height: 160.0,
          width: 300.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/lomo.jpg'), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                height: 160.0,
                width: 300.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      '-25%',
                      style: TextStyle(
                          color: textYellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      // COLOCAR TEXTO EN EL 'XXXXXX'
                      'Por compras mayores a 150 S/',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}