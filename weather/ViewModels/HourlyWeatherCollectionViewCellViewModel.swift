//
//  HourlyWeatherCollectionViewCellViewModel.swift
//  weather
//
//  Created by Tekup-mac-1 on 11/5/2024.
//

import WeatherKit
import Foundation

struct HourlyWeatherCollectionViewCellViewModel {
    private let model: HourWeather


    init(model: HourWeather) {
        self.model = model
    }

    public var iconName: String {
        return model.symbolName
    }

    public var temperature: String {
        return "\(Int(model.temperature.converted(to: .fahrenheit).value)) °F"
    }

    public var hour: String {
        let hour = Calendar.current.component(.hour, from: model.date)
        return "\(hour):00"
    }
}
