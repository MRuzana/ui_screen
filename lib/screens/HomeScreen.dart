import 'package:flutter/material.dart';
import 'package:project4/models/grid_item_model.dart';
import 'package:project4/screens/catalog.dart';
import 'package:project4/screens/dukaan_premium.dart';
import 'package:project4/screens/menu.dart';
import 'package:project4/screens/order_form.dart';
import 'package:project4/screens/payment.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
   List<GridItem>items=[
    GridItem(title: 'Marketing Designs',icon1: 'assets/images/marketing.png'),
    GridItem(title: 'Online Payments',icon1:'assets/images/rupee.png'),
    GridItem(title: 'Discount Coupon',icon1: 'assets/images/discount.png'),
    GridItem(title: 'My Customers',icon1: 'assets/images/customers.png'),
    GridItem(title: 'Store QR code',icon1: 'assets/images/qr.png'),
    GridItem(title: 'Extra Charges',icon1: 'assets/images/extra_charges.png'),
    GridItem(title: 'Order Form',icon1: 'assets/images/form.png')
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 237, 233, 233),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text('Manage Store',
          style: TextStyle(color: Colors.white,
          fontSize: 25),
          ),
        ),
        leading: IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Menu()));
        }, icon: const Icon(Icons.menu,color: Colors.white,)),
      ),
      body: SafeArea(
        child: GridView.builder(
          
          itemCount: items.length ,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            crossAxisCount: 2),
            padding: const EdgeInsets.all(15.0),
          itemBuilder: (context,index){

            return GestureDetector(
              onTap: () {
                switch_screen(context, index);
               
              },
              child: Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white ,
                ),
              child:  Column(
               
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: (items[index].title=='Order Form')?
              
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          
                          decoration: BoxDecoration(
                            color: _getContainerColor(index),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ImageIcon(AssetImage(items[index].icon1),
                            color: Colors.white,
                            )    
                          ),
                        ),
              
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                             color: Colors.green,
                          ),
                          width: 40,
                          height: 30,
                          child: const Center(child: Text('NEW',style: TextStyle(color: Colors.white),)),
                        )
                      ],
                    )
                    :
              
                     Container(
                      width: 50,
                      height: 50,
                      
                      decoration: BoxDecoration(
                        color: _getContainerColor(index),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ImageIcon(AssetImage(items[index].icon1),
                        color: Colors.white,
                        )    
                      ),
                    )
              
                  ),
                  
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(items[index].title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  ),
                )
                ],
              ),
                
              ),
            );
          }),
      )  
    );
  }
Color _getContainerColor(int index){
  switch(index % 7){
    case 0:return Colors.orange;
    case 1:return Colors.green;
    case 2:return const Color.fromARGB(255, 247, 191, 107);
    case 3:return Colors.teal;
    case 4:return const Color.fromARGB(164, 67, 67, 67);
    case 5:return Colors.purple;
    case 6:return const Color.fromARGB(255, 239, 72, 128 );
    default : return Colors.orange;
  }
}
void switch_screen(context,index){
   switch(index){
                  case 0:{                  
                    break;
                  }
                  case 1:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Payment()));
                    break;
                  }
                  case 2:{
                  }
                  case 3:{break;}
                  case 4:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Catalogue()));
                    break;
                  }
                  case 5:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dukaan_premium()));
                    break;
                    }
                  default:{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrderForm()));
                    break;
                  }
                }

}



}

























  