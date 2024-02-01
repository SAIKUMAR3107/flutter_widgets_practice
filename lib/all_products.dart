

import 'package:flutter/material.dart';
import 'package:practice_app/bottom_navigation.dart';
import 'package:practice_app/google_bottom_navigation.dart';
import 'package:practice_app/productsModel.dart';
import 'package:http/http.dart' as http;

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  Products? products;
  var isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Products Page")),
        ),
        body: Visibility(
          visible: isLoading,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemBuilder: (context, index) {
              return InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleBottomNavigation(),));
              },
                child: Container(
                  child: Card(elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Image.network(products!.products[index].thumbnail,height: 170,fit: BoxFit.fill,),
                        )),
                        SizedBox(height: 5,),
                        Text("${products!.products[index].title}",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 5,),
                        Text("Rs : ${products!.products[index].price} /-",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: products == null ? 0 : products?.products.length,
          ),
          replacement: Center(child: CircularProgressIndicator()),
        ));
  }

  Future<Products?> getData() async {
    var client = http.Client();
    var uri = Uri.parse("https://dummyjson.com/products");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      setState(() {
        products = productsFromJson(json);
        isLoading = true;
        print(products?.products[0].brand);
      });

    }
  }
}
