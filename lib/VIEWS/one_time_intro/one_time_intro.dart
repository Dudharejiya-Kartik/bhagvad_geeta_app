import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class introscreen extends StatelessWidget {
  const introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            //useScrollView: true,
            title: "BhagwanGeeta",
            body:
                "Whenever dharma declines and the purpose of life is forgotten, I manifest myself on earth. ",
            image: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "lib/app/model/asset/SPLASH_SCREEN.gif",
                  ),
                ),
              ),
            ),
          ),
          PageViewModel(
            title: "BhagwanGeeta",
            body:
                "Those deluded by the qualities of Nature are attached to the functions of the qualities. ",
            image: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "lib/app/model/asset/4b.jpeg",
                  ),
                ),
              ),
            ),
          ),
          PageViewModel(
            title: "BhagwanGeeta",
            body:
                "The man of perfect knowledge should not unsettle the foolish one who is of imperfect knowledge.",
            image: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "lib/app/model/asset/3bb.jpeg",
                  ),
                ),
              ),
            ),
          ),
          PageViewModel(
            title: "BhagwanGeeta",
            body:
                "Thus, knowing Him who is superior to the intellect and restraining the self by the Self, slay thou, O mighty-armed Arjuna, the enemy in the form of desire, hard to conquer.",
            image: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "lib/app/model/asset/2b.jpeg",
                  ),
                ),
              ),
            ),
          ),
        ],
        onDone: () async {
          Navigator.pushReplacementNamed(context, 'home');
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("Isvisited", true);
        },
        done: const Text("Done"),
        showNextButton: true,
        next: const Text("Next"),
      ),
    );
  }
}
