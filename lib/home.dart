import 'package:flutter/material.dart';
import 'Product.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List categories = [{
    'name': "Piwa",
    'route': "/home/beers"
    }, {
    'name': "Wina i likiery",
    'route': "/home/liquors"
    }, {
    'name': "Alkohole mocne",
    'route': "/home/alcohols"
  }, {
    'name': "Animacja",
    'route': "/animation"
  }, {
    'name': "CRUD",
    'route': "/all"
  }];

  @override
  void initState() {
    super.initState();
    createProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeria alkoholi"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8,),
            Text("  Kategorie:", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),),
            SizedBox(height: 4,),
            Expanded(
              child: ListView(
                children: categories.map((obj) => CategoryCard(category: obj['name'], route: obj['route'])).toList(),
              ),
            )
          ]
      ),
    );
  }
}

class CategoryCard extends StatelessWidget{
  final String category;
  final String route;
  CategoryCard({required this.category, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(category, style: TextStyle(fontSize: 20.0),),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded, size: 30.0, color: Colors.grey.withOpacity(0.35),),
            ],
          ),
        ),
      ),
    );
  }
}
