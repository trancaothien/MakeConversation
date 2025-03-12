//
//  SplashRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import Foundation

final class SplashRouter: SplashRouterProtocol {
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
       
}
