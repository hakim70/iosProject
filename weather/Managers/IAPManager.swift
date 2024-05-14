//
//  IAPManager.swift
//  weather
//
//  Created by Tekup-mac-1 on 10/5/2024.
//

import RevenueCat
import Foundation

final class IAPManager {
    static let shared = IAPManager()

    private init() {}

    func isSubscribed(completion: @escaping (Bool) -> Void) {
        Purchases.shared.getCustomerInfo { info, error in
            guard let subscriptions = info?.activeSubscriptions else { return }
            completion(!subscriptions.isEmpty)
        }
    }
}
