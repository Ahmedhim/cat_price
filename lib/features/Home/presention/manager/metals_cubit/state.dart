abstract class MetalsState{}

class intialState extends MetalsState{}
class loadingState extends MetalsState{}
class successState extends MetalsState{}
class errorState extends MetalsState{
  final String errMessage;

  errorState(this.errMessage);
}

class successMostSearcedState extends MetalsState{}
class ErrorMostSearcedState extends MetalsState{
  final String errMessage;

  ErrorMostSearcedState(this.errMessage);
}
class LoadingMostSearcedState extends MetalsState{}