import 'package:banao/helper/api.dart';
import 'package:banao/model/loesson.dart';

class LessonService {
  Future<List<LessonModel>> getLesson() async {
    Map<String, dynamic> responseData = await Api.get(
        url: 'https://632017e19f82827dcf24a655.mockapi.io/api/lessons');

    List<dynamic> lessonData = responseData['items'];

    List<LessonModel> lessonList = [];

    for (int i = 0; i < lessonData.length; i++) {
      lessonList.add(LessonModel.fromJson(lessonData[i]));
    }

    
    return lessonList;
  }
}



