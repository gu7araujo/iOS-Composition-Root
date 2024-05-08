//
//  DetailModuleViewModel.swift
//  CompositionRootApp
//
//  Created by Gustavo Araujo Santos on 08/05/24.
//

import Foundation

final class DetailModuleViewModel {
    
    private let analyticsTracker: AnalyticsEventTracking
    private let networking: Networking
    
    init(analyticsTracker: AnalyticsEventTracking, networking: Networking) {
        self.analyticsTracker = analyticsTracker
        self.networking = networking
    }
    
}
