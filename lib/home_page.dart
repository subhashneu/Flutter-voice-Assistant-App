import 'package:flutter/material.dart';
import 'package:allen/pallete.dart';
import 'package:allen/feature_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Allen',
        ),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //virtual assistant picture
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 4),
                    decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  height: 123,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/virtualAssistant.png',
                        ),
                      )),
                )
              ],
            ),
            //chat buble
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 40,
              ).copyWith(
                top: 30,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Pallete.borderColor,
                  ),
                  borderRadius: BorderRadius.circular(20).copyWith(
                    topLeft: Radius.zero,
                  )),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Good Morning, what task can i do for you ?',
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.mainFontColor,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                top: 10,
                left: 22,
              ),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Here are a few Features',
                style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //features list ..
            Column(
              children: const [
                FeatureBox(
                    color: Pallete.firstSuggestionBoxColor,
                    headerText: 'ChatGPT',
                    descriptiveText:
                        'A smarter way to stay orgaized and informed with ChatGPT'),
                FeatureBox(
                    color: Pallete.secondSuggestionBoxColor,
                    headerText: 'DALL-E',
                    descriptiveText:
                        'Get inspired and stay creative with your personal asistant powered by DALL-E'),
                FeatureBox(
                    color: Pallete.thirdSuggestionBoxColor,
                    headerText: 'Smart Voice Assistant',
                    descriptiveText:
                        'Get the best of both worlda with a voice assisatant powered by Dall-E and CHATGPT')
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
