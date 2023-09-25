void main() {
  TemperatureConverter converter = TemperatureConverter();

  double celsiusTemperature = 36.8;
  double fahrenheitTemperature =
      converter.celsiusToFahrenheit(celsiusTemperature);

  print("$celsiusTemperature°C is equal to $fahrenheitTemperature°F");

  double fahrenheitTemperature2 = -40.0;
  double celsiusTemperature2 =
      converter.fahrenheitToCelsius(fahrenheitTemperature2);

  print("$fahrenheitTemperature2°F is equal to $celsiusTemperature2°C");
}

class TemperatureConverter {
  double celsiusToFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }
}
