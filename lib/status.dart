import 'package:flutter/material.dart';

class ListItem {
  final String heading;
  final String subtitle;
  final String path;

  ListItem(this.heading, this.subtitle, this.path);
  Widget buildTitle(BuildContext context) {
    return Text(heading, style: TextStyle(fontWeight: FontWeight.w500));
  }

  Widget buildSubtitle(BuildContext context) {
    return Text(subtitle);
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 3,
          color: Colors.green,
        ),
      ),
      child:
          // Icon(Icons.account_circle)
          Image.asset(
        path,
      ),
    );
  }

  Widget buildUserProfile(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child:
          // Icon(Icons.account_circle)
          Image.asset(
        path,
      ),
    );
  }
}

final items = List<ListItem>.generate(30, (index) {
  if (index == 0) {
    return ListItem(
        'My status', 'Tap to add status update', 'assets/profile.png');
  } else {
    return ListItem('Person $index', 'Just now', 'assets/profile.png');
  }
});

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Let the ListView know how many items it needs to build.
      itemCount: items.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = items[index];

        if (index == 0) {
          return Stack(children: [
            ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
              leading: item.buildUserProfile(context),
            ),
            Positioned(
                top: 40,
                left: 50,
                child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    )))
          ]);
        } else if (index == 1) {
          return Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              "Recent updates",
            ),
          );
        }

        return ListTile(
          title: item.buildTitle(context),
          subtitle: item.buildSubtitle(context),
          leading: item.buildProfile(context),
        );
      },
    );
  }
}
