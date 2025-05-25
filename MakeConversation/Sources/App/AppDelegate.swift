//
//  AppDelegate.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 11/3/25.
//

import Combine
import Foundation
import SwiftUI
import FirebaseCore

@MainActor
final class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    
    func application(_ app: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
}
