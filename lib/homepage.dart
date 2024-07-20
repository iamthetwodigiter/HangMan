import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hangman/data.dart';
import 'package:hangman/providers/providers.dart';
import 'package:hive_flutter/adapters.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  String answer = '';
  String hint = '';
  int count = 0;

  List<String> blankSpaces = [];
  List<String> guesses = [];

  Future<dynamic> dialog(
      String text, String content, Function onTap, String onTapText,
      {double height = 100}) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsAlignment: MainAxisAlignment.center,
        backgroundColor: Colors.teal[100],
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          height: height,
          child: Column(
            children: [
              const Divider(color: Colors.teal),
              Text(
                content,
                style: const TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const Divider(color: Colors.teal),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              onTap();
            },
            child: Text(
              onTapText,
              style: const TextStyle(
                  color: Colors.teal, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _initializeGame();
  }

  Future<void> _initializeGame() async {
    try {
      var data = hangmanWords;
      int index = Random().nextInt(data.length);
      setState(() {
        answer = data.keys.elementAt(index).toUpperCase();
        if (answer.length <= 7) {
          hint = data.values.elementAt(index);
          count = answer.length;
          blankSpaces = List.filled(count, "_");
        } else {
          _initializeGame();
        }
      });
    } catch (e) {
      rethrow;
    }
  }

  void handleDefeat() {
    ref.read(stageProvider.notifier).reset();
    ref.read(levelProvider.notifier).reset();
    setState(() {
      guesses = [];
      _initializeGame();
    });
  }

  void revealAnswer() {
    for (int i = 0; i < count; i++) {
      if (blankSpaces[i] == "_") {
        setState(() {
          blankSpaces[i] = answer[i];
        });
      }
    }
  }

  void handleWin() {
    ref.read(hintsProvider.notifier).increment();

    dialog('YAYYY 🎉🎉', 'Congratulations you saved the man 😀', () {
      Navigator.pop(context);
      setState(() {
        ref.read(stageProvider.notifier).reset();
        ref.read(levelProvider.notifier).increment();
        guesses = [];
        _initializeGame();
      });
    }, 'NEXT LEVEL');
  }

  void showHint() {
    if (ref.read(hintsProvider) <= 0) {
      dialog('Sorry!!',
          'All of your hints have been used up!!\nComplete more levels to get more free hints',
          () {
        Navigator.pop(context);
      }, 'OKAY');
    } else {
      ref.read(hintsProvider.notifier).decrement();
      dialog('Hint', '💡 $hint', () {
        Navigator.pop(context);
      }, 'OKAY', height: 150);
    }
  }

  void handleGuess(String letter) {
    setState(() {
      if (answer.contains(letter)) {
        for (int i = 0; i < answer.length; i++) {
          if (answer[i] == letter) {
            blankSpaces[i] = letter;
          }
        }
        if (!blankSpaces.contains("_")) {
          handleWin();
        }
      } else if (!guesses.contains(letter)) {
        guesses.add(letter);
        ref.read(stageProvider.notifier).increment();
      }
    });
  }

  void howToPlay() {
    dialog('⁉️ How to Play 🤔',
        'You need to find the correct word within 9 guesses, else the poor man hangs himself up 😰\n\nYou can use hint, if you are really stuck in the level 😉\n\n⚡ Only one hint is available per level and evertime you click on hint icon, a hint is used up!!',
        () {
      Navigator.pop(context);
    }, 'GOT IT!!', height: 400);
  }

  Widget placeLetters(String letter) {
    return Text(
      letter,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final level = ref.watch(levelProvider);
    final stage = ref.watch(stageProvider);
    final hints = ref.watch(hintsProvider);

    if (stage == 9) {
      revealAnswer();
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              howToPlay();
            },
            child: const Icon(
              Icons.question_mark_rounded,
              color: Colors.teal,
              size: 30,
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 26, 26, 29),
        title: const Text(
          'HANGMAN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 26, 26, 29)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showHint();
                        },
                        child: const Icon(
                          Icons.lightbulb_rounded,
                          color: Colors.teal,
                          size: 30,
                        ),
                      ),
                      Text(
                        hints.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'High - ${Hive.box('resources').get('high-score')}',
                    style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Level ${level.toString()}',
                    style: const TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                height: size.height * 0.5,
                child: Image.asset('assets/images/0$stage.PNG')),
            const SizedBox(height: 20),
            SizedBox(
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < count; i++)
                    blankSpaces[i] == '_'
                        ? SizedBox(
                            width: 50,
                            height: 100,
                            child: Image.asset(
                              'assets/images/blank.PNG',
                            ),
                          )
                        : Container(
                            width: 50,
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  blankSpaces[i] = "_";
                                });
                              },
                              child: Text(
                                blankSpaces[i],
                                style: const TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            stage != 9
                ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var letter in 'QWERTYUIOP'.split(''))
                            InkWell(
                              onTap: () {
                                handleGuess(letter);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  letter,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    decoration: guesses.contains(letter)
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var letter in 'ASDFGHJKL'.split(''))
                            InkWell(
                              onTap: () {
                                handleGuess(letter);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  letter,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    decoration: guesses.contains(letter)
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (var letter in 'ZXCVBNM'.split(''))
                            InkWell(
                              onTap: () {
                                handleGuess(letter);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  letter,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    decoration: guesses.contains(letter)
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      const Text(
                        'You let the man die 🥺',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          handleDefeat();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.teal[100],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Restart',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
