//
//  WalkthroughRouter.swift
//  MakeConversation
//
//  Created by Tran Cao Thang on 23/3/25.
//

import Foundation

final class WalkthroughRouter: WalkthroughRouterProtocol {
    private var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType){
        self.navigation = navigation
    }
       
}
