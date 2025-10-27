import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/core/utils/image_url_widget.dart';
import 'package:task_manager/data/datasources/notification_services.dart';
import 'package:task_manager/presentation/bloc/notification_bloc/notification_bloc.dart';
import 'package:task_manager/presentation/bloc/notification_bloc/notification_event.dart';
import 'package:task_manager/presentation/bloc/notification_bloc/notification_state.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          NotificationBloc(NotificationServices())..add(LoadNotifications()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0, 
          leadingWidth: 40,
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: GestureDetector(
              child: const CircleAvatar(
                radius: 2,
                backgroundColor: Color(0xFF2FDF84),
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
          ),
          title: const Text(
            "Notifications",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: const Color(0xFFD2D2D2), 
              height: 1.0,
            ),
          ),
        ),
        body: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            if (state is NotificationLoading) {
              return const Center(
                child: CircularProgressIndicator(color: Colors.greenAccent,strokeWidth: 2,),
              );
            } else if (state is NotificationFailure) {
              return Center(child: Text(state.message));
            } else if (state is NotificationLoaded) {
              final notification = state.notifications;
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: notification.length,
                itemBuilder: (context, index) {
                  final data = notification[index];
                  final random = NotificationImage.getRandomImage();
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      constraints: const BoxConstraints(minHeight: 80),
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 12,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFD2D2D2)),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 33,
                            height: 33,
                            child: Center(
                              child: Image.network(
                                random,
                                width: 27,
                                height: 27,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(
                                  Icons.notifications_none,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 280,
                                child: Text(
                                  data.title,
                                  maxLines: 2,
                                  style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      letterSpacing: 0,
                                      wordSpacing: 0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 285,
                                child: Text(
                                  data.body,
                                  maxLines: 2,
                                  style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Text(timeago.format(data.timestamp)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
