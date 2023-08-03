// Import necessary dependencies.
import 'package:banao/helper/api.dart'; 
import 'package:banao/model/program.dart'; 

// Define a class named PrgarmService responsible for fetching program data from an API.
class PrgarmService {
  // Asynchronous function to get a list of programs.
  Future<List<ProgramModel>> getProgram() async {
    // Call the 'get' function from the 'Api' class to fetch data from the API.
    Map<String, dynamic> responseData = await Api.get(
      url: 'https://632017e19f82827dcf24a655.mockapi.io/api/programs',
    );

    // Extract the 'items' list from the response data, which contains program data.
    List<dynamic> lessonData = responseData['items'];

    // Create an empty list to store the ProgramModel objects.
    List<ProgramModel> programList = [];

    // Loop through the lessonData list to convert each item into a ProgramModel object and add it to the programList.
    for (int i = 0; i < lessonData.length; i++) {
      programList.add(ProgramModel.fromJson(lessonData[i]));
    }

    // Return the list of ProgramModel objects containing program data.
    return programList;
  }
}
