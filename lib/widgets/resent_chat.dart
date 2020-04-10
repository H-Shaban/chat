import 'package:chat/models/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResentChat extends StatefulWidget {
  @override
  _ResentChatState createState() => _ResentChatState();
}

class _ResentChatState extends State<ResentChat> {
  Message msg = Message();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: ListView.builder(
          itemCount: msg.messages.length,
          itemBuilder: (BuildContext context, int index) {
            final chat = msg.messages[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: chat.unread ? Colors.blueAccent : Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(35.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            chat.sender.name,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Text(
                              chat.text,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        chat.time,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      chat.unread
                          ? Container(
                              height: 20.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35.0)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'NEW',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          : SizedBox.shrink()
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
