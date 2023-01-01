import 'package:dufs/feature/presentation/widget/text_view.dart';
import 'package:flutter/material.dart';

import '../../widget/screen.dart';
import 'owner_body.dart';
import 'data/owner.dart';

class OwnerPage extends StatefulWidget {
  static const String route = "owner_page";

  const OwnerPage({Key? key}) : super(key: key);

  @override
  State<OwnerPage> createState() => _OwnerPageState();
}

class _OwnerPageState extends State<OwnerPage> {
  late List<Owner> popList = [
    Owner.viceChancellor,
    Owner.administration,
    Owner.academic,
  ];
  late Owner type = popList[0];

  @override
  Widget build(BuildContext context) {
    return Screen(
      title: type.title,
      centerTitle: true,
      background: Colors.white,
      actions: [
        PopupMenuButton(
          onSelected: (value) => setState(() => type = value),
          itemBuilder: (context) => popList.map(
            (value) {
              return PopupMenuItem(
                value: value,
                child: TextView(text: value.title),
              );
            },
          ).toList(),
        ),
      ],
      body: OwnerBody(item: type),
    );
  }
}
