import 'package:mobx/mobx.dart';
import 'package:tattomaster/models/Location.dart';
import 'package:tattomaster/models/User.dart';
part 'user_store.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {
  @observable
  List<User> users = [
    User(userId: '1', name: 'Diego', avatar: 'https://api.adorable.io/avatars/285/diego.png', location: Location(-28.262350, -52.408989), reviews: 10, totalReviews: 5, tattoos: []),
    User(userId: '1', name: 'Soria', avatar: 'https://api.adorable.io/avatars/285/soria.png', location: Location(-28.262350, -52.408989), reviews: 10, totalReviews: 5, tattoos: []),
    User(userId: '1', name: 'Rios', avatar: 'https://api.adorable.io/avatars/285/rios.png', location: Location(-28.262350, -52.408989), reviews: 10, totalReviews: 5, tattoos: []),
  ];

  @action
  addUser(User user) {
    users.add(user);
  } 
}