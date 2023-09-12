part of 'layout_cubit.dart';

abstract class LayoutState {}

class LayoutInitial extends LayoutState {}

//***************************************************************************************************************

class GetUserDataSuccessState extends LayoutState {}

class GetUserDataLoadingState extends LayoutState {}

class FailedToGetUserDataState extends LayoutState {
  String error;
  FailedToGetUserDataState({required this.error});
}

//***************************************************************************************************************

class GetDoctorListSuccessState extends LayoutState {}

class GetDoctorListLoadingState extends LayoutState {}

class FailedToDoctorListDataState extends LayoutState {
  String error;
  FailedToDoctorListDataState({required this.error});
}

//***************************************************************************************************************

// class ChangePasswordLoadingState extends LayoutState{}
// class ChangePasswordSuccessState extends LayoutState{}
// class ChangePasswordWithFailureState extends LayoutState{
//   String error;
//
//   ChangePasswordWithFailureState(this.error);
// }
//***************************************************************************************************************

class GenerateOtpLoadingState extends LayoutState{}
class GenerateOtpSuccessState extends LayoutState{}
class GenerateOtpWithFailureState extends LayoutState{
}
//***************************************************************************************************************

class HeightLoadingState extends LayoutState{}
class HeightSuccessState extends LayoutState{}
class HeighWithFailureState extends LayoutState{
  String error;
  HeighWithFailureState(this.error);
}