import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
   const Payment({super.key});
   

  @override
  Widget build(BuildContext context) {
    double staticProgressValue = 0.5;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(child: Text('Payments',
        style: TextStyle(
          color: Colors.white,
        ),
        )),
      ),
      body: SafeArea(
        child: ListView(  

              children: [
                Padding(
                  padding: const EdgeInsets.all(20 ),
                  child: Container(         
                    width: 400 ,
                    height: 240,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
            
                    child:  Padding(
                      padding: const EdgeInsets.all(10 ),
                      child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                             padding: EdgeInsets.all(8.0),
                             child: Text('Transaction Limit',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold),),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('The free limit up to which you will receive the online payments directly in your bank',
                            style: TextStyle(fontSize: 15),
                            ),
                          ),
                      
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(borderRadius: BorderRadius.circular(10 ),                       
                              child: Container(
                                height: 7,
                                
                                child: LinearProgressIndicator(
                                  value: staticProgressValue,
                                backgroundColor: Colors.grey, // Background color of the progress bar
                                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),),
                              ),
                            ),
                          ),
            
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('36,668 left out of ₹50,000'),
                          ),
                          ElevatedButton(
                           style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10 ))
                           ),
                            onPressed: (){}, child: const Text('Increase Limit',style: TextStyle(color: Colors.white,fontSize:17 ),))
                        ],
                      ),
                    ),
                  
                  ),
                ),
            
              const Padding(
                padding:  EdgeInsets.only(left: 20,right: 20 ),
                child:  Row(                        
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Default Method',style: TextStyle(fontSize: 20,),),
                      Row(                    
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text('Online payments',style: TextStyle(fontSize: 17,color: Colors.grey),)
                          ),
                          Icon(Icons.chevron_right,color: Colors.grey,)
                        ],
                      )
                  ],
                ),
              ),
            
               const Padding(
                padding:  EdgeInsets.only(left: 20,right: 20),
                child:  Row(                        
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Profile',style: TextStyle(fontSize: 20,),),
                      Row(                    
                        children: [
                          Text('Bank Account ',style: TextStyle(fontSize: 17,color: Colors.grey),),
                          Icon(Icons.chevron_right,color: Colors.grey,)
                        ],
                      )
                  ],
                ),
              ),
            
              const Padding(
                padding:  EdgeInsets.all(20 ),
                child: Divider(),
              ),
            
              const Padding(
                padding:  EdgeInsets.only(left: 20,right: 20),
                child:  Row(                        
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payments Overview',style: TextStyle(fontSize: 20,),),
                      Row(                    
                        children: [
                          Text('Life Time',style: TextStyle(fontSize: 17,color: Colors.grey),),
                          Icon(Icons.expand_more,color: Colors.grey,)
                        ],
                      )
                  ],
                ),
              ),
            
               Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170 ,
                      height: 100,
                      color: Colors.orange,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AMOUNT ON HOLD',style: TextStyle(color: Colors.white,fontSize:15 ),),
                          Text('₹0',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20 ),),
                        ],
                      ),
                                
                    ),
                     Container(
                      width: 170 ,
                      height: 100,
                      color: Colors.green,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AMOUNT RECEIVED',style: TextStyle(color: Colors.white,fontSize:15 ),),
                          Text('₹13,332',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20 ),),
                        ],                   
                      ),
                    ),
                  ],              
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.all(20 ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text('Transactions',style: TextStyle(fontSize: 20,),)),
              ),
            
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 240, 234, 234)),
                      onPressed: (){}, child: const Text('On hold',style: TextStyle(color: Colors.grey),)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: (){}, child: const Text('Payouts(15)',style: TextStyle(color: Colors.white),)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 240, 234, 234)),
                      onPressed: (){}, child: const Text('Refunds',style: TextStyle(color: Colors.grey),)),
                
                  ],
                ),
              ),
            
              ListView.builder(
                 shrinkWrap: true,
                 physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
      
                  return ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE6s8PhyYfwFIKYoHzQCo4F-_8KN0FFD81hw&usqp=CAU',                                              
                      width: 100 ,
                      height: 100 ,
                      fit: BoxFit.cover,
                      
                      ),
                    ),
                    title: const Text('Order #1680668'),
                    subtitle: const Text('July 12, 02:06 PM'),
                    trailing: Container(
                      width: 90,
                      height: 110 ,
                      child: const Column(  
                        crossAxisAlignment: CrossAxisAlignment.end,                     
                        children: [
                          Text('₹799',style: TextStyle(color: Colors.teal),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.circle,color: Colors.green,size: 15,),                              
                              Text('Successfull',style: TextStyle(fontSize: 12),)
                            ],
                      
                          )
                        ],
                      ),
                    ),
                  );
              
                },               
                itemCount: 4),            
            ],
          ),
      ),
    );
  }
}