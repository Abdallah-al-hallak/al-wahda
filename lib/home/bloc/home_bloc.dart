import 'package:appwrite_renew/models/home_model.dart';
import 'package:appwrite_renew/repositoy/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  HomeBloc(this.homeRepository) : super(const HomeState.loading()) {
    on<Subscribtion>(_getArticles);
  }
  Future<void> _getArticles(Subscribtion event, Emitter<HomeState> emit) async {
    try {
      emit(const HomeState.loading());
      var t = await emit.forEach<List<HomeModel>>(
          Stream.fromFuture(homeRepository.getArticles()),
          onData: (data) => HomeState.loaded(team: data));
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
