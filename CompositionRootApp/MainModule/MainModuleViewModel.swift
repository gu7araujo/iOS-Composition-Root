//
//  MainModuleViewModel.swift
//  CompositionRootApp
//
//  Created by Gustavo Araujo Santos on 08/05/24.
//

import Foundation

final class MainModuleViewModel {
    
    private let analyticsTracker: AnalyticsEventTracking
    private let networking: Networking
    private let onGoToDetailTap: () -> Void
    
    init(analyticsTracker: AnalyticsEventTracking, networking: Networking, onGoToDetailTap: @escaping () -> Void) {
        self.analyticsTracker = analyticsTracker
        self.networking = networking
        self.onGoToDetailTap = onGoToDetailTap
    }
    
    func goToDetailTapped() {
        onGoToDetailTap()
    }
}
