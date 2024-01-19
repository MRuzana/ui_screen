import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Dukaan_premium extends StatelessWidget {
  Dukaan_premium({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 234, 234),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
          child: Text('Dukaan Premium',
          style: TextStyle(
            color: Colors.white
          ),
          ),
        ),
      ),
     
      body: SingleChildScrollView(
        child: Stack(
            children: [
              Container(
                color: Colors.blue,
                height: 200,
              ),
              Column(
                children: [
                  const SizedBox(height: 200), // Spacer for blue container
                  Container(
                    
                    width: double.infinity,
                    color: const Color.fromARGB(255, 253, 245, 245),
                    padding: const EdgeInsets.only(top: 150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.all(12 ),
                          child: Text(
                            'Features',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        // Your list items and other content here
                         ListTile(
                          title: const Text('Custom domain name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          leading:Container(
                          width: 60,
                          height: 60 ,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.teal)),
                              child: const Icon(Icons.language,
                              color: Colors.teal,
                              size: 40  ,
                              ),),               
                          subtitle: const Text('Get your own custom domain and build your brand on internet'),
                        ),

                         ListTile(
                          title: const Text('Verified seller badge',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          leading:Container(
                          width: 60,
                          height: 60 ,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.teal)),
                              child: const Icon(Icons.verified,
                              color: Colors.teal,
                              size: 40  ,
                              ),),               
                          subtitle: const Text('Get green verified badge under your store name and build trust'),
                        ),

                          ListTile(
                          title: const Text('Dukaan for PC',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          leading:Container(
                          width: 60,
                          height: 60 ,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.teal)),
                              child: const Icon(Icons.laptop,
                              color: Colors.teal,
                              size: 40  ,
                              ),),               
                          subtitle: const Text('Access all the exclusive premium features on dukaan for PC'),
                        ),

                         ListTile(
                          title: const Text('Priority support',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          leading:Container(
                          width: 60,
                          height: 60 ,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.teal)),
                              child: const Icon(Icons.headset_mic,
                              color: Colors.teal,
                              size: 40  ,
                              ),),               
                          subtitle: const Text('Get your questions resolved with our priority customer supprt'),
                        ),




                        const Divider(height: 5),
                        const Padding(
                          padding:  EdgeInsets.all(12 ),
                          child:  Text(
                            'What is Dukaan Premium?',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),


                        Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: YoutubePlayer(controller: YoutubePlayerController(
                  initialVideoId: ('PAOAjOR6K_Q').toString(),
                  flags: const YoutubePlayerFlags(
                    autoPlay: false,
                    mute: false,),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.black,
                  ),
               )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 80 ,
                left: 40,
                right: 40,
                
                child: Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/logo.png', width: 150, height: 150),
                      const Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text(
                          'Get Dukaan premium for just ₹4999/year',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Text(
                          'All the advanced features for scaling your business',
                          style: TextStyle(color: Color.fromARGB(255, 70, 69, 69)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }   
}




