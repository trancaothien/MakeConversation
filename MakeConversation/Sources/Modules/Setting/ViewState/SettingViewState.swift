//
//  SettingViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class SettingViewState: ObservableObject, SettingViewStateProtocol {    
    private let id = UUID()
    private var presenter: SettingPresenterProtocol?
    
    func set(with presener: SettingPresenterProtocol) {
        self.presenter = presener
    }
}
