import 'package:flutter/material.dart';
import 'Product.dart';
import 'package:image_picker/image_picker.dart';

class ModifyProduct extends StatefulWidget{
  const ModifyProduct({Key? key}) : super(key: key);

  @override
  _ModifyProductState createState() => _ModifyProductState();
}

class _ModifyProductState extends State<ModifyProduct> {

  @override
  Widget build(BuildContext context) {
    var map = ModalRoute.of(context)?.settings.arguments as Map;
    Product product = map['product'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Kreator produktu"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(alignment: Alignment.topLeft, child: Text("Kategoria")),
              Container(
                alignment: Alignment.topLeft,
                child: DropdownButton(
                  value: product.category.name,
                  items: Category.values.map((e) {
                    return DropdownMenuItem <String>(
                      value: e.name,
                      child: Text(e.name.toString())
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      product.category = Category.values.where((e) => e.name == newValue).first;
                    });
                  },
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nazwa',
                ),
                initialValue: product.name,
                onFieldSubmitted: (String? value) {
                  setState(() {
                    product.name = value.toString();
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Cena (zł)',
                ),
                initialValue: product.price,
                onFieldSubmitted: (String? value) {
                  setState(() {
                    product.price = value!;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Butelka (ml)',
                ),
                initialValue: product.size,
                onFieldSubmitted: (String? value) {
                  setState(() {
                    product.size = value!;
                  });
                },

              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Zawartość alkoholu (%)',
                ),
                initialValue: product.percent,
                onFieldSubmitted: (String? value) {
                  setState(() {
                    product.percent = value!;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Opis',
                ),
                initialValue: product.about,
                onFieldSubmitted: (String? value) {
                  setState(() {
                    product.about = value!;
                  });
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}