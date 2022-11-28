import 'dart:convert';
import 'dart:io';
import 'package:local_file/couter_model.dart';
import 'package:path_provider/path_provider.dart';
class CouterFile{
  Future<String> get _localPath async// tìm đường dẫn
  {
    var path = await getApplicationDocumentsDirectory();
    print(path.path);
    return path.path;
  }
  Future<File> get _localFile async//tạo tham chiếu đến vị trí tệp
  {
    var path = await _localPath;
    return File('$path/counter.txt');
  }
  Future<File> write(int counter) async// ghi dữ liệu vào tệp
  {
    var file = await _localFile;
    CouterModel model = CouterModel(counter: counter);
    return file.writeAsString(jsonEncode(model));
  }
  Future<int> read() async
  {
      var file = await _localFile;
      var jsonString = await file.readAsString();
      var jsonObject = jsonDecode(jsonString);
      var data = CouterModel.fromJson(jsonObject);
      return data.counter??0;
    }
  }
