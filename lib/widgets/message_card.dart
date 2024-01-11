import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final Map<String, dynamic> message;
  const MessageCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message["isMe"] ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.55),
        child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          color: message["isMe"]
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.inversePrimary,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message["text"].toString(),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        message["time"].toString(),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color:
                                  MediaQuery.of(context).platformBrightness ==
                                          Brightness.dark
                                      ? Colors.white60
                                      : Colors.grey,
                            ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      message["isMe"]
                          ? Icon(
                              Icons.done_all,
                              size: 20,
                              color:
                                  MediaQuery.of(context).platformBrightness ==
                                          Brightness.dark
                                      ? Colors.white60
                                      : Colors.grey,
                            )
                          : const SizedBox(
                              width: 0,
                            ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
