import 'api_manager.dart';

Future<dynamic> getDrinksCall({
  String s = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'Get Drinks',
    apiUrl: 'www.thecocktaildb.com/api/json/v1/1/search.php',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      's': s,
    },
    returnResponse: true,
  );
}

Future<dynamic> getDrinkByIdCall({
  String i = '',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'Get Drink by Id',
    apiUrl: 'www.thecocktaildb.com/api/json/v1/1/lookup.php?',
    callType: ApiCallType.GET,
    headers: {},
    params: {
      'i': i,
    },
    returnResponse: true,
  );
}

Future<dynamic> getRandomCocktailCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'Get Random Cocktail',
    apiUrl: 'www.thecocktaildb.com/api/json/v1/1/random.php',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}

Future<dynamic> vodkaCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'VODKA',
    apiUrl: 'www.thecocktaildb.com/api/json/v1/1/search.php?i=vodka',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnResponse: true,
  );
}
