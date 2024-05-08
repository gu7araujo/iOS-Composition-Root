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
        let viewModel = CompositionRoot.mainModuleViewModel(onGoToDetailTap: pushDetail)
        let viewController = CompositionRoot.mainModuleViewController(viewModel: viewModel)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func pushDetail() {
        let viewController = DetailModuleCoordinator().makeView()
        navigationController?.present(viewController, animated: true)
    }
}
