//
//  DetailModuleCoordinator.swift
//  CompositionRootApp
//
//  Created by Gustavo Araujo Santos on 08/05/24.
//

import UIKit
import Foundation

final class DetailModuleCoordinator {
    
    func makeView() -> UIViewController {
        let viewModel = DetailModuleViewModel(analyticsTracker: AnalyticsEventTracker(),
                                              networking: NetworkService.shared)
        let viewController = DetailModuleViewController(viewModel: viewModel)
        return viewController
    }
}
