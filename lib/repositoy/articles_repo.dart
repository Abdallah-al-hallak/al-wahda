import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'dart:ui' as ui;
import '../constant.dart';

class ArticelesRepo {
  ArticelesRepo({
    required Client client,
    Storage? storage,
    Realtime? realtime,
  })  : _client = client,
        _realtime = realtime ?? Realtime(client),
        _storage = storage ?? Storage(client);

  final Client _client;
  Storage _storage;
  Realtime _realtime;
  initialize() {
    _client
            .setEndpoint(AppWriteConst.baseUrl) // Your API Endpoint
            .setProject(AppWriteConst.prohectId) // Your project ID
        ;
    _storage = Storage(_client);
  }

  Stream<File> getArticles() {
    initialize();

    final subscription = _realtime.subscribe(['files']);
    return subscription.stream.map((event) => File.fromMap(event.payload));
  }

  Future<FileList> getFiles() async {
    initialize();
    try {
      final files =
          await _storage.listFiles(bucketId: AppWriteConst.articlesBucketId);
      return files;
    } on AppwriteException catch (e) {
      print(e.message);
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future getImage(String id) async {
    initialize();
    final files = await _storage.getFilePreview(
        width: 50, bucketId: AppWriteConst.articlesBucketId, fileId: id);
    //     ui.Codec codec = await ui.instantiateImageCodec(files);
    //   ui.FrameInfo frame = await codec.getNextFrame();
    //   return frame.image;
    // }
    return files;
  }
}
