import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/he_menssage_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_menssage_bubble.dart';
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
        centerTitle: false,
      ),
      body: _ChatView(),
      
    );
  }
}

class _ChatView extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return SafeArea
    (
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10),
        child: Column
        (
          children: 
          [
            ///builder una forma de contrucción de ejecución
            //////
            Expanded
            (
              child: ListView.builder
              ( itemCount: 100,itemBuilder: (context, index) 
               {
                 return(index % 2 == 0)
                 ? const HeMenssageBubble()
                 : const MyMessageBubble(); 
                },
              ),
            ),
           
            
        
        
            
        
            Text('Mundo'),
          ],
        ),
      ),
    );
  }
}