import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                textColor: Colors.black,
                // leading: CircleAvatar(backgroundColor: Colors.amber,radius: 25,),
                leading: Image.asset(
                          'assets/profile.png',
                        ),
                // child:Icon(Icons.person,size: 45)
                title: Text("Person $index",style: TextStyle(fontWeight: FontWeight.w500),),
                subtitle: Text("hey"),
                trailing: Text("12:00 AM"),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(thickness: 0,height: 0,);
              // return Divider();
            },
            itemCount: 30),
      ),
    );
  }
}
