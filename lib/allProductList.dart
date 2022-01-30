import 'package:flutter/material.dart';
import 'Product.dart';

class AllProductList extends StatefulWidget{
  const AllProductList({Key? key}) : super(key: key);

  @override
  _AllProductListState createState() => _AllProductListState();
}

class _AllProductListState extends State<AllProductList> {
  List<Product> products = Product.products.toList();

  void refresh() {
    setState(() {
      products = Product.products.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wszystkie produkty"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: products.map((prod) => ProductCard(product: prod, ref: refresh)).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Product product = Product(Category.Beer, "images/products/noimage.png", "", "", "", "", "");
                  Product.products.add(product);
                  Navigator.pushNamed(context, "/all/modify", arguments: {'product': product}).then((_) => refresh());
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )
                    )
                ),
                child: Text("Dodaj produkt", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  final Function ref;
  ProductCard({required this.product, required this.ref});

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  child: Image.asset(product.imageName, width: 75, height: 100)
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                padding: EdgeInsets.only(top: 5.0,),
                child: Text(product.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.edit, color: Colors.green),
                iconSize: 30,
                onPressed: () {
                  Navigator.pushNamed(context, '/all/modify', arguments: {'product': product}).then((_) => ref());
                },
              ),
              IconButton(
                icon: Icon(Icons.delete_outline, color: Colors.red,),
                iconSize: 30,
                onPressed: () {
                  Product.products.removeWhere((e) => e.name == product.name);
                  ref();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}