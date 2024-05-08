//
//  NetworkService.swift
//  CompositionRootApp
//
//  Created by Gustavo Araujo Santos on 08/05/24.
//

import Foundation

final class NetworkService: Networking {

    // Singleton
    static let shared = NetworkService()

    private init() {
        
    }

    func makeNetworkRequest(endpoint: String) {
        // Execute the network request
    }
}
