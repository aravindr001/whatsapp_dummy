import 'package:flutter/material.dart';
import 'dart:math' as math;

class ListItems {
  String title = "title";
  String subtitle = "subtitle";
  String path = 'assets/profile.png';

  ListItems();
  ListItems.setValues(this.title,this.subtitle);

  Widget buildTitle(BuildContext context) {
    return Text(title);
  }

  Widget buildSubtitle(BuildContext context) {
    return Text(subtitle);
  }

  Widget buildLeadingImage(BuildContext context) {
    return Image.asset(
      path,
    );
  }

  Widget buldTailing(BuildContext context) {
    return Icon(
      Icons.call,
      color: Colors.green,
    );
  }

  Widget buildLeadingIcon(BuildContext context) {
    return Container(
      // width: 55,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(26, 133, 106, 1),
      ),
      child: Transform.rotate(
        angle: -45 * math.pi / 180,
        child: Icon(
          Icons.link,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}

final items = List<ListItems>.generate(10, (index) {
  if (index == 0) {
    return ListItems.setValues("Create call link", "Share a link for your WhatsApp call");
  }

  return ListItems.setValues('person $index', 'subtitle');
});

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        if (index == 0) {
          return ListTile(
            contentPadding: EdgeInsets.only(top:5,left: 14),
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
            leading: item.buildLeadingIcon(context),
          );
        } 
        else if (index == 1) {
          return Padding(
            padding: const EdgeInsets.only(top: 10,left: 20,bottom: 8),
            child: Text(
              "Recent",
            ),
          );
        }
        
        
        else {
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
            leading: item.buildLeadingImage(context),
            trailing: item.buldTailing(context),
          );
        }
      },
    );
  }
}
