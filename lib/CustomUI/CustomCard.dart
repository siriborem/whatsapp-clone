import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'package:whatsapp_clone/Pages/IndividualPage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel} ) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(
            builder: (contex) => IndividualPage(
              chatModel: chatModel,
            )));
      },
    child:Column(
    children:[
      ListTile(
      leading: CircleAvatar(
        radius: 30,
        child: SvgPicture.asset("assets/person1.svg",
      height: 36,
      width: 36,
        ),
        backgroundColor: Colors.grey,
      ),
      title: Text(
        chatModel.name,
        style: TextStyle(fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(width: 3),
          Text(
            chatModel.currentMessage,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
      trailing: Text(chatModel.time),
    ),
    ],
    ),
    );

  }
}
