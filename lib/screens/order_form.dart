import 'package:flutter/material.dart';

class OrderForm extends StatelessWidget {
  const OrderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(child: Text('Order #1688068',style: TextStyle(color: Colors.white),)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0 ),
          child:   Column(
            children: [
              const Padding(
                padding:  EdgeInsets.all(16.0),
                child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('May 31, 05:42 PM',
                     style: TextStyle(
                      fontSize: 20,
                     ),
                     ),
                     Row(
                     
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.circle,color: Colors.blue,),
                        ),
                        Text('Delivered',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
               const Padding(
                 padding:  EdgeInsets.all(16.0),
                 child: Divider(),
               ),
        
               const Padding(
                 padding:  EdgeInsets.all(16.0),
                 child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text('1 ITEM',
                     style: TextStyle(
                      fontSize: 20,
                     ),
                     ),
                     Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.receipt,color: Colors.teal,),
                        ),
                        Text('RECEIPT',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal
                        ),
                        )
                      ],
                    )
                  ],
                  ),
               ),
        
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKkLCaVt7NxQreNyi6S0f-NSwkmBnuVTg_hw&usqp=CAU',
                    width: 100,
                    height: 100  ,
                    ),
        
                    const Expanded(
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Explore|Men|Navy Blue',style: TextStyle(fontSize: 20,),),
                          Text('1 piece'),
                          Text('Size : XL'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                
                                children: [
                                  Icon(Icons.looks_one,color: Colors.teal,),
                                  Text('x ₹799',style: TextStyle(fontSize: 20),),
                                ],
                              ),
                              Text('₹799',style: TextStyle(fontSize: 20))
                            ],
                          ),                                     
                        ],
                      ),
                    )
                  ],
                ),
              ),
        
              const Padding(
                padding:  EdgeInsets.all(16.0),
                child: Divider(),
              ),
        
              const Padding(
                padding:  EdgeInsets.only(left: 16,right: 16),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Item Total',style: TextStyle(fontSize: 20),),
                    Text('₹799',style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 16,right: 16),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery',style: TextStyle(fontSize: 20),),
                    Text('FREE',style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
        
              const Padding(
                padding:  EdgeInsets.all(16),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Grand Total',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('₹799',style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
        
               const Padding(
                padding:  EdgeInsets.all(16.0),
                child: Divider(),
              ),


               const Padding(
                 padding:  EdgeInsets.all(16.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text('CUSTOMER DETAILS',
                       style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,fontWeight: FontWeight.bold
                       ),
                       ),
                       Row(
                       
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.share,color: Colors.teal,),
                          ),
                          Text('SHARE',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold
                          ),
                          )
                        ],
                      )
                    ],
                  ),
               ),

            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text('Deepa',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            ),

             Padding(
                 padding: const EdgeInsets.only(left: 16,right: 16),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       const Text('+91-7234786789',
                       style: TextStyle(
                        fontSize: 20,
                       
                       ),
                       ),
                       Row(
                       
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/call.png',width: 30,height: 30,color: Colors.teal,)
                          ),
                            Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/whatsapp.png',width: 30,height: 30,color: Colors.green,)
                          ),
                        ],
                      )
                    ],
                  ),
               ),
 
               Padding(
                 padding: const EdgeInsets.only(top: 16,bottom: 16),
                 child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: const Text('Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: const Text('D 1101 Chartered Beverly',style: TextStyle(fontSize: 20),)),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: const Text('Hills, Subramanyapura P.O',style: TextStyle(fontSize: 20),)),
                  ],
                               ),
               ),
               const Padding(
                 padding: EdgeInsets.only(left: 16,right: 50 ),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('City',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  //  SizedBox(width: 80 ,),
                    Text('Pincode',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                 ),
               ),

               const Padding(
                 padding: EdgeInsets.only(left: 16,right: 50 ),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Bangalore',style: TextStyle(fontSize: 20),),
                   // SizedBox(width: 80 ,),
                    Text('560061 ',style: TextStyle(fontSize: 20),),
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