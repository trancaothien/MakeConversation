//
//  NavigationService.swift
//  Chatting
//
//  Created by Tran Cao Thien on 10/3/25
//  
//


import SwiftUI

public class NavigationService: NavigationServiceType  {
    
    public let id = UUID()
    
    public static func == (lhs: NavigationService, rhs: NavigationService) -> Bool {
        lhs.id == rhs.id
    }
    
    @Published var modalView: Views?
    @Published var popupView: Views?
    @Published var items: [Views] = []
    @Published var alert: CustomAlert?
    
    /// **Push a new view onto the stack**
    func push(_ view: Views) {
        if !items.contains(view) {
            items.append(view)
        }
    }

    /// **Pop the current view**
    func pop() {
        if !items.isEmpty {
            items.removeLast()
        }
    }

    /// **Replace the entire stack with a new root view (e.g., replace splash with main)**
    func pushReplace(_ view: Views) {
        items = [view] // Remove everything and set only the new view
    }

    /// **Present a modal**
    func presentModal(_ view: Views) {
        modalView = view
    }

    /// **Dismiss the current modal**
    func dismissModal() {
        modalView = nil
    }

    /// **Show a popup view**
    func presentPopup(_ view: Views) {
        popupView = view
    }

    /// **Dismiss the popup view**
    func dismissPopup() {
        popupView = nil
    }
}


enum Views: Identifiable, Equatable, Hashable {

    var id: String { stringKey }

    static func == (lhs: Views, rhs: Views) -> Bool {
        lhs.stringKey == rhs.stringKey
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.stringKey)
    }
    
    case splash
    case main
    case contact
    case conversation
    case setting
    case walkthrough
    
    var stringKey: String {
        switch self {
        case .main:
            return "main"
        case .splash:
            return "splash"
        case .contact:
            return "contact"
        case .conversation:
            return "conversation"
        case .setting:
            return "setting"
        case .walkthrough:
            return "walkthrough"
        }
    }
}


enum CustomAlert: Equatable, Hashable {
    static func == (lhs: CustomAlert, rhs: CustomAlert) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .defaultAlert:
            hasher.combine("defaultAlert")
        }
    }
    
    case defaultAlert(yesAction: (()->Void)?, noAction: (()->Void)?)
}
