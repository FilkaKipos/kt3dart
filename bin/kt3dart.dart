import 'package:dio/dio.dart';

import 'models/getPosts/getPosts.dart';
import 'models/getUser/getUser.dart';

void main(List<String> arguments) async {
  var myUrl = 'https://dummyjson.com';
  Dio httpClient = Dio(BaseOptions(baseUrl: myUrl));

  var response = await httpClient.get('/posts?limit=150');
  GetPosts data = GetPosts.fromJson(response.data);

  List<String> tagsList = ['history', 'fiction', 'love', 'english'];
  List<int> foundId = [];
  for (var element in data.posts) {
    if (element.tags.any((element) => tagsList.contains(element))) {
      if (!foundId.contains(element.userId)) foundId.add(element.userId);
    }
  }
  foundId.sort();

  var userResponse = await httpClient.get('/users?limit=150');
  GetUser users = GetUser.fromJson(userResponse.data);
  int counter = 1;
  for (var element in users.users) {
    if ((element.bank.isExpired) && foundId.contains(element.id) && element.gender == 'male') {
      print(
          '$counter ${element.shortName} - expired ${element.bank.cardExpire} ${element.address.city}, ${element.address.address}');
      counter++;
    }
  }
}