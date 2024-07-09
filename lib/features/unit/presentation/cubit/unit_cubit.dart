import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'unit_state.dart';

class UnitCubit extends Cubit<UnitState> {
  UnitCubit() : super(UnitInitial());
}
