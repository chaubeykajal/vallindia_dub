// class QuestViewModel extends ChangeNotifier {
//   List<Quest> _quests = [];

//   List<Quest> get quests => _quests;

//   void fetchQuests(List<Map<String, String>> questDataList) {
//     _quests = questDataList.map((questData) => _createQuest(questData)).toList();
//     notifyListeners();
//   }

//   Quest _createQuest(Map<String, String> questData) {
//     return Quest(
//       image: questData['image']!,
//       modes: questData['modes']!,
//       opportunities: questData['opportunities']!,
//       date: questData['Date']!,
//     );
//   }
// }
