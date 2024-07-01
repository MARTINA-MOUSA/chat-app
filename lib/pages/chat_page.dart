import 'package:chatapp_project/constants.dart';
import 'package:chatapp_project/models/message.dart';
import 'package:chatapp_project/widgets/ChatBubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final _controller = ScrollController();
  CollectionReference messages = FirebaseFirestore.instance.collection(
      KmessagesCollections); //لو موجوده بيجب reference ليها لو مش موجوده بينشاها و بيديك ال reference ليها
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
        //بستخدمها لما يكون عايزين تغيير لحظي
        stream: messages.orderBy(KcreatedAt, descending: true).snapshots(),
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            List<Message> messagesList = [];
            for (int i = 0; i < Snapshot.data!.docs.length; i++) {
              messagesList.add(Message.fromJson(Snapshot.data!.docs[i]));
            }
            return Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: kprimaryColor,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Klogo,
                        height: 50,
                      ),
                      const Text(
                        'Chat',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  centerTitle: true,
                ),
                body: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ListView.builder(
                          reverse: true,
                            controller: _controller,
                            itemCount: messagesList.length,
                            itemBuilder: (context, index) {
                              return messagesList[index].id== email? chatBubble(
                                message: messagesList[index],
                              ): chatBubbleForFriend(message: messagesList[index]);
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        controller: controller,
                        onSubmitted: (data) {
                          messages.add({
                            KMessage: data,
                            KcreatedAt: DateTime.now(),
                            'id' :email //mapp
                          });
                          controller.clear();
                          _controller.animateTo(
                              0,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        decoration: InputDecoration(
                          hintText: 'send massege',
                          suffixIcon: Icon(
                            Icons.send,
                            color: kprimaryColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: kprimaryColor,
                              )),
                        ),
                      ),
                    )
                  ],
                ));
          } else {
            return Text('loading');
          }
        });
  }
}
