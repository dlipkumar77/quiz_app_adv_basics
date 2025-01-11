class QuizQuestions {
  const QuizQuestions(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    //List.of(answers).shuffle(); // shuffle return void so split
    final shuffledList = List.of(answers); // copy list
    shuffledList.shuffle(); // shuffle list
    return shuffledList;
  }
}
