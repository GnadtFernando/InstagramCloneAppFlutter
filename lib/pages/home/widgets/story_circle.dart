import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.topLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black54,
            ),
            child: const CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/C4D03AQFQFKdJB8TEcw/profile-displayphoto-shrink_200_200/0/1653610599599?e=1685577600&v=beta&t=S_0XxPFP7eaML2fM18uB0DWZMjhFMhnSq5cQorr-i78'),
            ),
          ),
        ),
        const Text(
          'FernandoGnadt',
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
