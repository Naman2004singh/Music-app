import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/repository/music_model.dart';
import 'package:music_app/utils/app_colors.dart';
import 'package:music_app/utils/app_constants.dart';
import 'package:music_app/utils/app_strings.dart';
import 'package:music_app/utils/app_textstyle.dart';
import 'package:music_app/view/home/widgets/music_service_list.dart';
import 'package:music_app/view/home/widgets/static_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: ListView(
          children: [
            const StaticContainer(),
            const SizedBox(height: AppConstants.size15),
            const Text(
              AppStrings.text04,
              style: AppTextstyle.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.size15),
            Consumer(
              builder: (context, ref, child) {
                return StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('sevice card')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return const Center(
                          child: Text('Error fetching music services'));
                    }
                    final musicServices = snapshot.data?.docs ?? [];
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: musicServices.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot documentSnapshot =
                            musicServices[index];
                            final musicService = MusicModel(
                              title: documentSnapshot['title'] ?? '',
                              description: documentSnapshot['description'] ?? '',
                              imageUrl: documentSnapshot['imageUrl'] ?? '',
                              logoUrl: documentSnapshot['logoUrl'] ?? '',
                            );
                        return MusicServiceList(
                          musicModel: musicService,
                        );
                      },
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
