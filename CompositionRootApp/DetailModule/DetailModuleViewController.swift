//
//  DetailModuleViewController.swift
//  CompositionRootApp
//
//  Created by Gustavo Araujo Santos on 08/05/24.
//

import UIKit
import Foundation

class DetailModuleViewController: UIViewController {
    
    let viewModel: DetailModuleViewModel
    
    init(viewModel: DetailModuleViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "Detail Module!"
        
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
