//
//  ConversationViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class ConversationViewState: ObservableObject, ConversationViewStateProtocol {    
    private let id = UUID()
    private var presenter: ConversationPresenterProtocol?
    
    //State
    @Published var placeHolderText: String = ""
    
    func set(with presener: ConversationPresenterProtocol) {
        self.presenter = presener
    }
}
