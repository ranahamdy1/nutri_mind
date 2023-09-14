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

class GenerateOtpLoadingState extends LayoutState{}
class GenerateOtpSuccessState extends LayoutState{}
class GenerateOtpWithFailureState extends LayoutState{
  String error;
  GenerateOtpWithFailureState({required this.error});
}
//***************************************************************************************************************

class HeightLoadingState extends LayoutState{}
class HeightSuccessState extends LayoutState{}
class HeighWithFailureState extends LayoutState{
  String error;
  HeighWithFailureState({required this.error});
}

//***************************************************************************************************************

class QuotesLoadingState extends LayoutState{}
class QuotesSuccessState extends LayoutState{}
class QuotesWithFailureState extends LayoutState {
  String error;

  QuotesWithFailureState({required this.error});
}

//***************************************************************************************************************

class RecommendedCaloriesLoadingState extends LayoutState{}
class RecommendedCaloriesSuccessState extends LayoutState{}
class RecommendedCaloriesWithFailureState extends LayoutState{
String error;
RecommendedCaloriesWithFailureState({required this.error});
}

//***************************************************************************************************************

class addNodesLoadingState extends LayoutState{}
class addNodesSuccessState extends LayoutState{}
class addNodesWithFailureState extends LayoutState {
  String message;

  addNodesWithFailureState({required this.message});
}
//***************************************************************************************************************

class getNodesLoadingState extends LayoutState{}
class getNodesSuccessState extends LayoutState{}
class getNodesWithFailureState extends LayoutState{
  String message;
getNodesWithFailureState({required this.message});
}

