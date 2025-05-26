import 'package:flutter/material.dart';

class MusicServiceList extends StatelessWidget {

  final String title;
  final String description;
  final String imageUrl;
  final String logoUrl;
  const MusicServiceList({super.key, required this.title, required this.description, required this.imageUrl, required this.logoUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(logoUrl),
      ),
      title: Text(title),
      subtitle: Text(description),
      trailing: Image.network(imageUrl),
    );
  }
}