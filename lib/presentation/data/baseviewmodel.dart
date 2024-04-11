// you don't need to overwrite two methods start() & dispose() when the class type is "Abstract"
abstract class BaseViewModel extends BaseViewInputs with BaseViewModelOutput{}
abstract class BaseViewInputs{
  void start(); // start view model job
  void dispose(); // will be called when view model dies
}
abstract class BaseViewModelOutput{}