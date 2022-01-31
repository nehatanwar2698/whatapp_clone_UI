import 'package:flutter/material.dart';
import 'package:whatapp_clone/model/chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ScrollController _firstController =
      ScrollController(initialScrollOffset: 0);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      thickness: 2,
      controller: _firstController,
      child: ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Divider(height: 10),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).appBarTheme.color,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[index].avtarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dummyData[index].time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Container(
                    child: Text(
                      dummyData[index].message,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
