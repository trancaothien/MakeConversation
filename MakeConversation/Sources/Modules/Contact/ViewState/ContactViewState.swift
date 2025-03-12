//
//  ContactViewState.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

final class ContactViewState: ObservableObject, ContactViewStateProtocol {    
    private let id = UUID()
    private var presenter: ContactPresenterProtocol?
    
    func set(with presener: ContactPresenterProtocol) {
        self.presenter = presener
    }
}
