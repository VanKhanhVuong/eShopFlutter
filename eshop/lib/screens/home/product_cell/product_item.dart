import 'package:flutter/material.dart';
import 'package:eshop/models/product.dart';
import 'package:eshop/ultils/text_extention.dart';


class ProductItem extends StatelessWidget {
  final Product product;
  static const double _circRad = 20.0;
  static const double _leftRightPad = 10.0;
  static const double _sizeAddProd = 45.67;
  const ProductItem({this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("Open detail product");
        // Navigator.pushNamed(context, '/ProductDetailPage');
        // funcTest();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade500,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(_circRad),
          ),
        ),
        child: Column(
          children: <Widget>[

            // Image Product
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/anhdep.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_circRad),
                    topRight: Radius.circular(_circRad),
                  )
                ),
              ),
            ),

            // Info Product
            Expanded(
              child: Column(
                children: <Widget>[

                  // Name product
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                    
                        // Product name
                        Padding(
                          padding: const EdgeInsets.only(left: _leftRightPad),
                          child: TextExtention(
                            text: product.productName, 
                            fontSize: 18.0, 
                            fontWeight: FontWeight.bold, 
                            color: Colors.black, 
                            textAlign: TextAlign.left
                          ),
                        ),

                        // Product unit
                        Padding(
                          padding: const EdgeInsets.only(left: _leftRightPad),
                          child: TextExtention(
                            text: product.productName, 
                            fontSize: 16.0, 
                            fontWeight: FontWeight.normal, 
                            color: Colors.grey.shade400, 
                            textAlign: TextAlign.left
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Price Product + Button add Product to Cart
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // Price Product
                        const Padding(
                          padding: EdgeInsets.only(left: _leftRightPad),
                          child: TextExtention(
                            text: "4", 
                            fontSize: 18.0, 
                            fontWeight: FontWeight.bold, 
                            color: Colors.black, 
                            textAlign: TextAlign.center,
                          ),
                        ),
                        
                        // Button add Product to Cart
                        Padding(
                          padding: const EdgeInsets.only(right: _leftRightPad),
                          child: InkWell(
                            onTap: (){
                              print("Add product to Cart");
                            },
                            child: Container(
                              width: _sizeAddProd,
                              height: _sizeAddProd,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/add.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void funcTest() {
  print("tapp");
  return;
}