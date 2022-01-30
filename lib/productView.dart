import 'package:flutter/material.dart';
import 'Product.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  late Product product;
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    product = data['prod'];

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
    ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(product.imageName, width: 180, height: 210, fit: BoxFit.fitHeight,),
                Container(
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cena', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),),
                      Text(product.price + 'zł/szt', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w200),),
                      Text('Alkohol', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),),
                      Text(product.percent + '%', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w200),),
                      Spacer(),
                      Text('Butelka ' + product.size + 'ml', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Divider(thickness: 0.5, color: Colors.black,),
            Text(product.about, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15), textAlign: TextAlign.center,),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )
                  )
                ),
                child: Text("Dodaj do koszyka", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
