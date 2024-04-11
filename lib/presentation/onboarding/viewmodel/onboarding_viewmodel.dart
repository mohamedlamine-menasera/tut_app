import 'dart:async';
import 'dart:developer';

import 'package:iblog/domain/models/models.dart';
import 'package:iblog/presentation/data/baseviewmodel.dart';

import '../../resources/assets_manager.dart';
import '../../resources/strings_manager.dart';

class OnboardingViewModel extends BaseViewModel with OnboardingViewModelInputs,OnboardingViewModelOutputs{

  late final List<SliderObject> _list;
  // Stream controller outputs
  final StreamController<SliderViewObject> _streamController = StreamController<SliderViewObject>();
  // example for check password
  //StreamController _isPasswordstreamController = StreamController<bool>();

  int _currentIndex = 0;

  @override
  int goNext() {
      int nextIndex = ++_currentIndex;
      if (nextIndex == _list.length) {
        nextIndex = 0;
      }
      return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
    // outputSliderViewObject.listen((event) {log("Stream is $event");});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _streamController.close();
    // example for check password
    //_isPasswordstreamController.close();
  }

  @override
  void start() {
    // TODO: implement start
    // Call API
    // view model start your job
    // Create a lists of Pages
    _list = _getSliderObject();
    _postDataToView();
    // example for check password
    //inputIsPasswordValid.add("123456");
  }



  // Onboarding private functions
  List<SliderObject> _getSliderObject() => [
    SliderObject(AppStrings.onBoardingTitle1,
        AppStrings.onBoardingSubTitle1, ImageAssets.onboardingLogo1),
    SliderObject(AppStrings.onBoardingTitle2,
        AppStrings.onBoardingSubTitle2, ImageAssets.onboardingLogo2),
    SliderObject(AppStrings.onBoardingTitle3,
        AppStrings.onBoardingSubTitle3, ImageAssets.onboardingLogo3),
    SliderObject(AppStrings.onBoardingTitle4,
        AppStrings.onBoardingSubTitle4, ImageAssets.onboardingLogo4),
  ];
   void _postDataToView(){
     inputSliderViewObject.add(SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
   }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((sliderViewObject) => sliderViewObject);

//    // example for check password
//
//   @override
//   // TODO: implement inputIsPasswordValid
//   Sink get inputIsPasswordValid => _isPasswordstreamController.sink;
//
//   @override
//   // TODO: implement outputIsPasswordValid
//   Stream<bool> get outputIsPasswordValid => _isPasswordstreamController.stream.map((password) => _isPasswordValid(inputIsPasswordValid.toString()));
// // example for check password
//   bool _isPasswordValid(String password){
//     if (password.length >8) {
//       return true;
//     } else {
//       return false;
//     }

 // }
}

abstract class OnboardingViewModelInputs{
  int goNext(); // when user clicks on right arrow or swipe left
  int goPrevious(); // when user clicks on left arrow or swipe right
  void onPageChanged(int index);
  // stream controller input
  Sink get inputSliderViewObject;
  // example for check password
  //Sink get inputIsPasswordValid;
}

abstract class OnboardingViewModelOutputs{
  Stream<SliderViewObject> get outputSliderViewObject;
  // example for check password
  //Stream<bool> get outputIsPasswordValid;
}