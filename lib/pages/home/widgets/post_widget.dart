import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/C4D03AQFQFKdJB8TEcw/profile-displayphoto-shrink_200_200/0/1653610599599?e=1685577600&v=beta&t=S_0XxPFP7eaML2fM18uB0DWZMjhFMhnSq5cQorr-i78',
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'FernandoGnadt',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(
            'https://www.postplanner.com/hubfs/what-to-post-on-instagram.png',
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: const Icon(Icons.messenger_outline),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: const Icon(Icons.send),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: const Icon(Icons.bookmark_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Curtido por você e outras 300 pessoas',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'HÁ 1 HORA',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )
              ],
            ),
          ),
          if (desktop) ...[
            const Divider(
              color: Colors.white,
              height: 0.1,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: 'Adicione um comentário...',
                        hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Publicar'),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
