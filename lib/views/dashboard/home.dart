import "package:flutter/material.dart";

Widget Home(context) {
  // final commentsCount = useState(7);
  // final threadCommentsCount = useState(3);
  // ignore: unused_local_variable
  final screenSize = MediaQuery.of(context).size;
  final List<String> questions = <String>[
    'DESCRIBE YOURSELF MORE FULLY',
    'WHAT DO YOU KNOW TO BE TRUE?',
    'WHAT DO YOU WANT OUT OF LIFE?'
  ];
  final List<String> answers = <String>[
    "I am a human being",
    "Nothing at all.",
    "I want to rule the universe"
  ];

  return Column(
    children: <Widget>[
      const Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text(
                'Question of the day',
                textScaler: TextScaler.linear(1.5),
              ),
              subtitle: Text('When is your birthday?'),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.send),
                          labelText: 'Type something...',
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
      Card(
        child: Column(
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.question_answer),
              title: Text(
                "Johnson's wall",
                textScaler: TextScaler.linear(1.5),
              ),
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
      Card(
          child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Johnson's Bio",
                            textScaler: TextScaler.linear(1.5)),
                        FilledButton(
                            onPressed: () => {}, child: const Text("Update"))
                      ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          // Your content for the first column here
                          child: Card(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  padding: const EdgeInsets.all(10),
                                  itemCount: questions.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          questions[index],
                                          textScaler:
                                              const TextScaler.linear(1.2),
                                        ),
                                        Card(
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Text(answers[index]),
                                          ),
                                        ),
                                      ],
                                    );
                                  })),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: SizedBox(
                            height: 235,
                            child: ListView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(10),
                                itemCount: questions.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        questions[index],
                                      ),
                                      Card(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Text(answers[index]),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ))),
      const SizedBox(
        height: 20,
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.message),
              title: Text(
                "Johnson's forum posts",
                textScaler: TextScaler.linear(1.5),
              ),
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  itemCount: questions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          const Expanded(flex: 1, child: Icon(Icons.person_2)),
                          Expanded(
                            flex: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      questions[index],
                                      textScaler: const TextScaler.linear(1.2),
                                    ),
                                    const Text("8:01AM")
                                  ],
                                ),
                                SizedBox(
                                  height: 80,
                                  width: 500,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(answers[index]),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Card(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                    title: Text("Johnson's Data",
                        textScaler: TextScaler.linear(1.5)),
                    leading: Icon(Icons.lock_person)),
                Divider(
                  indent: 10,
                  endIndent: 10,
                )
              ],
            )),
      )
    ],
  );
}
