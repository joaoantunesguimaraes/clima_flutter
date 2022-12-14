import 'package:clima/services/networking.dart';
import 'package:clima/services/location.dart';



const apiKey = '1c47fc9f7c9e821dcdc8398190f3b0a1';

const openWeatherMap ='https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {

  // MΓ©todo
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMap?lat=${location.latitude}&lon=${location.longitude}&APPID=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return 'π©';
    } else if (condition < 400) {
      return 'π§';
    } else if (condition < 600) {
      return 'βοΈ';
    } else if (condition < 700) {
      return 'βοΈ';
    } else if (condition < 800) {
      return 'π«';
    } else if (condition == 800) {
      return 'βοΈ';
    } else if (condition <= 804) {
      return 'βοΈ';
    } else {
      return 'π€·β';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s π¦ time';
    } else if (temp > 20) {
      return 'Time for shorts and π';
    } else if (temp < 10) {
      return 'You\'ll need π§£ and π§€';
    } else {
      return 'Bring a π§₯ just in case';
    }
  }
}
