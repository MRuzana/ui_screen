import 'package:flutter/material.dart';
import 'package:project4/models/product_model.dart';

class Products extends StatelessWidget {
   Products({super.key});
  List<Product>items=[
    Product(image_path: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeiqR2vFFLeRne58fhkwYRIlvaFDuZvKjziw&usqp=CAU', product_name: 'Couch Potato|Women', product_price: '₹799', product_no: '1 piece',stock: 'In Stock'),
    Product(image_path: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE6s8PhyYfwFIKYoHzQCo4F-_8KN0FFD81hw&usqp=CAU', product_name: 'Couch Potato|Men|Black', product_price: '₹799', product_no: '1 piece',stock: 'In Stock'),
    Product(image_path: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8erJ73GTVMH-qa9FcFJS6hJcHIVp5cZaMQw&usqp=CAU', product_name: 'Mug Explore', product_price: '₹399', product_no: '1 piece',stock: 'In Stock'),
    Product(image_path: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeiqR2vFFLeRne58fhkwYRIlvaFDuZvKjziw&usqp=CAU', product_name: 'Combo Blahstb1|Pack', product_price: '₹699', product_no: '1 piece',stock: 'In Stock'),
    Product(image_path: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiOvy4adozbeMSm1HivLUmyx9AII8-BAEW6A&usqp=CAU', product_name: 'Mug|Orchard', product_price: '₹499', product_no: '1 piece',stock: 'In Stock')


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 234, 234),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return CardItem(product: items[index]);

        }
      ),

    );
  }
}

class CardItem extends StatelessWidget {
  CardItem({super.key, required this.product});
  bool value=true;
  Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        
        color: Colors.white,
            
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(product.image_path,
                    //color: Colors.red,
                    width: 100 ,
                    height: 100,
                    fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                  
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 220 ,
                        height: 30 ,
                        child: SizedBox(
                          width: double.infinity,
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              Expanded(
                                child: Text(product.product_name,
                                style: const TextStyle(fontSize: 18,
                                color: Colors.black
                                ),
                                overflow: TextOverflow.ellipsis,
                                
                                ),
                              ),           
                             
                              const Icon(Icons.more_vert)
                            ],
                          ),
                        ),
                      ),
                      Text(product.product_no,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),),
                      Text(product.product_price,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                  
                      
                      Row(
                        children: [
                          Text(product.stock,
                            style: const  TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(
                            width: 120 ,
                          ),
                          const Icon(Icons.toggle_on,size: 40,color: Colors.blue,)
                        ],
                      )
                    ],
                  
                  ),
                  
                ],
              ),
              const Divider(),
              
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share),
                    SizedBox(width: 10),
                    Text('Share Product',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}