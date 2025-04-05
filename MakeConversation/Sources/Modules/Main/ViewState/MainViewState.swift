//
//  MainViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class MainViewState: ObservableObject, MainViewStateProtocol {    
    private let id = UUID()
    private var presenter: MainPresenterProtocol?
    
    @Published var currentTab: BottomNavigationTabs = .conversation
    
    func set(with presener: MainPresenterProtocol) {
        self.presenter = presener
    }
}
