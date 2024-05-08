//
//  MainModuleCoordinator.swift
//  CompositionRootApp
//
//  Created by Gustavo Araujo Santos on 08/05/24.
//

import UIKit
import Foundation

final class MainModuleCoordinator {
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = makeView()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func makeView() -> UIViewController {
        let viewModel = MainModuleViewModel(analyticsTracker: AnalyticsEventTracker(),
                                            networking: NetworkService.shared,
                                            onGoToDetailTap: pushDetail)
        let viewController = MainModuleViewcontroller(viewModel: viewModel)
        return viewController
    }
    
    private func pushDetail() {
        let viewController = DetailModuleCoordinator().makeView()
        navigationController?.present(viewController, animated: true)
    }
}
