//
//  CurrentWeatherViewModel.swift
//  weather
//
//  Created by Tekup-mac-1 on 11/5/2024.
//

import Foundation

enum WeatherViewModel {
    case current(viewModel: CurrentWeatherCollectionViewCellViewModel)
    case hourly(viewModels: [HourlyWeatherCollectionViewCellViewModel])
    case daily(viewModels: [DailyWeatherCollectionViewCellViewModel])
}
