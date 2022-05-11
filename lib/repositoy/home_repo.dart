import 'dart:convert';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:appwrite_renew/models/home_model.dart';
import 'package:cache/cache.dart';

import '../constant.dart';

class HomeRepository {
  HomeRepository({
    required Client client,
    Database? database,
  })  : _client = client,
        _database = database ?? Database(client);

  final Client _client;

  Database _database;

  initialize() {
    _client
            .setEndpoint(AppWriteConst.baseUrl) // Your API Endpoint
            .setProject(AppWriteConst.prohectId) // Your project ID
        ;
    _database = Database(_client);
  }

  Future<List<HomeModel>> getArticles() async {
    initialize();
    List<HomeModel> data;
    try {
      var teamList = await _database.listDocuments(
          collectionId: AppWriteConst.articlesCollectionID);

      data = List<HomeModel>.from(
        teamList.documents.map(
          (team) => HomeModel.fromMap(team.data),
        ),
      );
      return data;
    } on AppwriteException catch (e) {
      print(e.message);
      throw AppwriteException();
    }
  }
}
