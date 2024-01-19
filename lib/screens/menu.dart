import 'package:flutter/material.dart';
import 'package:project4/models/list_item_model.dart';

class Menu extends StatelessWidget {
  Menu({super.key});
   final List<ListItem> items = [
    ListItem(title: 'Share Dukaan App', leading_icon: const Icon(Icons.share),trailing_icon:const  Icon(Icons.navigate_next,)),
    ListItem(title: 'Change Language', leading_icon: const Icon(Icons.language),trailing_icon: const Icon(Icons.navigate_next)),
    ListItem(title: 'Watsapp Chat Support', leading_icon: const Icon(Icons.chat_bubble_outline_rounded),trailing_icon: const Icon(Icons.toggle_on_outlined)),
    ListItem(title: 'Privacy Policy', leading_icon: const Icon(Icons.badge)),
    ListItem(title: 'Rate Us', leading_icon: const Icon(Icons.star_border)),
    ListItem(title: 'Signout', leading_icon: const Icon(Icons.logout)),

    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
          child:  Text('Additional Information',
          style: TextStyle(color: Colors.white,
          fontSize: 25,),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index].title),
              leading: Icon(items[index].leading_icon!.icon),
              trailing: index==2?
              Icon(items[index].trailing_icon?.icon,color: Colors.blue,):
              Icon(items[index].trailing_icon?.icon),
            );
            
          },
           separatorBuilder: (context, index){
            return const SizedBox();
           },
            itemCount: items.length),
        
          
        
        ),
    );
  }
}

