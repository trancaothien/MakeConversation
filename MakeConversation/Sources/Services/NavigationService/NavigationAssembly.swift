//
//  NavigationAssembly.swift
//  Chatting
//
//  Created by Tran Cao Thien on 10/3/25
//  
//

import Foundation

final class NavigationAssembly: Assembly {
    
    //Only one navigation should use in app
    static let navigation: any NavigationServiceType = NavigationService()
    
    func build() -> any NavigationServiceType {
        return NavigationAssembly.navigation
    }
}
