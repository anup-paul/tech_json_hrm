import 'package:flutter/material.dart';

class NewHomeScreen extends StatelessWidget {
  const NewHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff252633),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(14.0),
                    bottomLeft: Radius.circular(14.0)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:14.0),
                    child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(
                          "assets/images/01.png",
                          height: 40,
                          width: 40,
                        ),
                        title: const Text(
                          "Good Morning",
                          style: TextStyle(
                              color:  Color(0xff878F99),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: const Text(
                          "Huge Jackman",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Container(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2)),
                            child: const Icon(
                              Icons.notification_important_sharp,
                              color: Colors.white,
                            ))),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
