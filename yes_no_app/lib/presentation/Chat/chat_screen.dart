import 'package:flutter/material.dart';
///Scaffold widget para una bara, inicio de todo///
class ChatScreen extends StatelessWidget
{
  const ChatScreen ({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold 
    (
      appBar: AppBar
      (
        leading: const Padding
        (
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar
          (
            ///Se empezo con una imagen de internet///
            backgroundImage: NetworkImage('https://64.media.tumblr.com/c489a3602bbe8b66c5c7c1d25366bf60/7622776359f52de4-dd/s128x128u_c1/2e2fa633b665940c66624bb13027817a690ab0a3.jpg') ,
          ),
        ),
        title: const Text('Mi amor'),
      ),
      
    );
  }
}