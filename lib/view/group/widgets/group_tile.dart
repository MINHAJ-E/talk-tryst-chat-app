import 'package:flutter/material.dart';
import 'package:talk_tryst/view/group/pages/chat_page.dart';
import 'package:talk_tryst/view/group/widgets/widgets.dart';

class GroupTile extends StatelessWidget {
  final String userName;
  final String groupId;
  final String groupName;

  const GroupTile({
    required this.groupId,
    required this.groupName,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextScreen(
          context,
          ChatPage(
            groupId: groupId,
            groupName: groupName,
            userName: userName,
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              groupName.substring(0, 1).toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          title: Text(
            groupName,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: Text(
            "Join the conversation as $userName",
            style: TextStyle(fontSize: 13, color: Colors.white38),
          ),
        ),
      ),
    );
  }
}
