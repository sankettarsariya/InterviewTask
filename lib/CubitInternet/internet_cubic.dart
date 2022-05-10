import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetStates { initial, lost, connect }

class InternetCubic extends Cubit<InternetStates> {
  Connectivity connectivity = Connectivity();
  StreamSubscription? connectStreamSubscription;


  InternetCubic() : super(InternetStates.initial) {
    connectStreamSubscription=connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        emit(InternetStates.connect);
      } else {
        emit(InternetStates.lost);
      }
    });
  }

  @override
  Future<void> close() {
    connectStreamSubscription?.cancel();
    return super.close();
  }

}
