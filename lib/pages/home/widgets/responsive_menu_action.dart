import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  const ResponsiveMenuAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        const SizedBox(
          width: 4,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send),
        ),
        const SizedBox(
          width: 4,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
        const SizedBox(
          width: 16,
        ),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://media.licdn.com/dms/image/C4D03AQFQFKdJB8TEcw/profile-displayphoto-shrink_200_200/0/1653610599599?e=1685577600&v=beta&t=S_0XxPFP7eaML2fM18uB0DWZMjhFMhnSq5cQorr-i78'),
        )
      ],
    );
  }
}
