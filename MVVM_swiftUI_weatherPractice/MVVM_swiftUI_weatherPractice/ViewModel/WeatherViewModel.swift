//
//  WeatherViewModel.swift
//  MVVM_swiftUI_weatherPractice
//
//  Created by 현수빈 on 2022/10/13.
//
import Foundation
import UIKit.UIImage

public class WeatherViewModel: ObservableObject {
  private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE, MMM d"
    return dateFormatter
  }()
  
  private let tempFormatter: NumberFormatter = {
    let tempFormatter = NumberFormatter()
    tempFormatter.numberStyle = .none
    return tempFormatter
  }()
  
  private static let defaultAddress = "Anchorage, AK"
  private let geocoder = LocationGeocoder()

    @Published var locationName = "Loading..."
    @Published var date = " "
    @Published var icon = UIImage(systemName: "magnifyingglass")
    @Published var summary = " "
    @Published var forecastSummary = " "
  
  init() {
      DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
          self.changeLocation(to: Self.defaultAddress)
      }
//    changeLocation(to: Self.defaultAddress)
  }
  
  func changeLocation(to newLocation: String) {
      locationName = "Loading..."

      geocoder.geocode(addressString: newLocation) { [weak self] locations in
      guard let self = self else { return }
      if let location = locations.first {
        self.locationName = location.name
        self.fetchWeatherForLocation(location)
        return
      }
    print(locations)
      self.locationName = "Not found"
      self.date = ""
      self.icon = UIImage(systemName: "magnifyingglass")
      self.summary = ""
      self.forecastSummary = ""
    }
  }
  
  private func fetchWeatherForLocation(_ location: Location) {
    WeatherbitService.weatherDataForLocation(
    latitude: location.latitude,
    longitude: location.longitude) { [weak self] (weatherData, error) in
      guard
        let self = self,
        let weatherData = weatherData
        else {
          return
        }
      self.date = self.dateFormatter.string(from: weatherData.date)
      self.icon = UIImage(named: weatherData.iconName)
      let temp = self.tempFormatter
        .string(from: weatherData.currentTemp as NSNumber) ?? ""
      self.summary = "\(weatherData.description) - \(temp)℉"
      self.forecastSummary = "\nSummary: \(weatherData.description)"
    }
  }
}
