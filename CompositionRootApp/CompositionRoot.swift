//
//  CompositionRoot.swift
//  CompositionRootApp
//
//  Created by Gustavo Araujo Santos on 08/05/24.
//

import UIKit
import Foundation

enum CompositionRoot {
    static var analyticsTracker: AnalyticsEventTracking {
        AnalyticsEventTracker()
    }
    
    static var networking: Networking {
        NetworkService.shared
    }
    
    static func mainModuleViewModel(onGoToDetailTap: @escaping () -> Void) -> MainModuleViewModel {
        MainModuleViewModel(
            analyticsTracker: analyticsTracker,
            networking: networking,
            onGoToDetailTap: onGoToDetailTap
        )
    }
    
    static func mainModuleViewController(viewModel: MainModuleViewModel) -> UIViewController {
        MainModuleViewcontroller(viewModel: viewModel)
    }
    
    static func mainModuleCoordinator(navigationController: UINavigationController) -> MainModuleCoordinator {
        MainModuleCoordinator(navigationController: navigationController)
    }
}
