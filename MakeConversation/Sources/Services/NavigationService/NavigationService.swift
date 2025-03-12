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
