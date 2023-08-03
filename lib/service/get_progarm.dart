import 'package:banao/helper/api.dart';
import 'package:banao/model/program.dart';

class PrgarmService {
  Future<List<ProgramModel>> getProgram() async {
    Map<String, dynamic> responseData = await Api.get(
        url: 'https://632017e19f82827dcf24a655.mockapi.io/api/programs');

    List<dynamic> lessonData = responseData['items'];
    List<ProgramModel> programList = [];
    for (int i = 0; i < lessonData.length; i++) {
      programList.add(ProgramModel.fromJson(lessonData[i]));
    }

    return programList;
  }
}
