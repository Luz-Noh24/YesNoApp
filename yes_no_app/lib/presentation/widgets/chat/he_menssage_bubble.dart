import 'package:flutter/material.dart';
class HeMenssageBubble extends StatelessWidget 
{
  const HeMenssageBubble({super.key});

  @override
  Widget build(BuildContext context) 
  {
    final colors =  Theme.of(context).colorScheme;
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [
        Container
        (
          decoration:  BoxDecoration
          (
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding
          (
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Adi', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
       const  SizedBox(height: 10,),

        //todo: imagen
      ],

    );
  }
}



class _ImageBubble extends StatelessWidget
{
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect
    (
      borderRadius: BorderRadius.circular(20) ,
      child: Image.network
      (
        'https://yesno.wtf/assets/yes/2.gif',
        width: size.width * 0.7,    
        height: 150,  
        fit: BoxFit.cover,
      )
    );
  }
}