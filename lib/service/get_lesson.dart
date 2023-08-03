// Import necessary dependencies.
import 'package:banao/helper/api.dart'; 
import 'package:banao/model/loesson.dart'; 

// Define a class named LessonService responsible for fetching lesson data from an API.
class LessonService {
  // Asynchronous function to get a list of lessons.
  Future<List<LessonModel>> getLesson() async {
    // Call the 'get' function from the 'Api' class to fetch data from the API.
    Map<String, dynamic> responseData = await Api.get(
      url: 'https://632017e19f82827dcf24a655.mockapi.io/api/lessons',
    );

    // Extract the 'items' list from the response data, which contains lesson data.
    List<dynamic> lessonData = responseData['items'];

    // Create an empty list to store the LessonModel objects.
    List<LessonModel> lessonList = [];

    // Loop through the lessonData list to convert each item into a LessonModel object and add it to the lessonList.
    for (int i = 0; i < lessonData.length; i++) {
      lessonList.add(LessonModel.fromJson(lessonData[i]));
    }

    // Return the list of LessonModel objects containing lesson data.
    return lessonList;
  }
}
