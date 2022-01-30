import "package:flutter/material.dart";
import "Product.dart";

class Beers extends StatefulWidget {
  const Beers({Key? key}) : super(key: key);

  @override
  _BeersState createState() => _BeersState();
}

class _BeersState extends State<Beers> {
  List<Product> products = Product.products.where((e) => e.category == Category.Beer).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Piwa"),
      ),
      body: ListView(
        children: products.map((prod) => ProductCard(product: prod)).toList(),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.pushNamed(context, '/view/product', arguments: {'prod': product})},
      child: Card(
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
                  width: MediaQuery.of(context).size.width * 0.60,
                  padding: EdgeInsets.only(top: 5.0,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
                      SizedBox(height: 4,),
                      Text(product.price + 'zł/' + product.size + 'ml', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),)
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.arrow_forward_ios_rounded, size: 30.0, color: Colors.grey.withOpacity(0.35),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}