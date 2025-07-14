import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  final Widget title;
  final Widget child;
  const MySliverAppbar({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

      expandedHeight: 350,
      collapsedHeight: 100,
      floating: false,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.primary,
      title: Text("Sunset Dinner"),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
      ],

      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: child,
        ),
        centerTitle: true,
        title: title,
        titlePadding: const EdgeInsets.only(left: 0 , right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
