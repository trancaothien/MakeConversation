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
    
    //State
    @Published var placeHolderText: String = ""
    
    func set(with presener: MainPresenterProtocol) {
        self.presenter = presener
    }
}
