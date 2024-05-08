//
//  CompositionRoot+Detail.swift
//  CompositionRootApp
//
//  Created by Gustavo Araujo Santos on 08/05/24.
//

import UIKit
import Foundation

extension CompositionRoot {
    static var detailModuleViewModel: DetailModuleViewModel {
        DetailModuleViewModel(analyticsTracker: analyticsTracker, networking: networking)
    }
    
    static var detailModuleViewController: UIViewController {
        DetailModuleViewController(viewModel: detailModuleViewModel)
    }
    
    static var detailModuleCoordinator: DetailModuleCoordinator {
        DetailModuleCoordinator()
    }
}
