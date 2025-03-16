//
//  AppDelegate.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 11/3/25.
//

import Combine
import Foundation
import UIKit

@MainActor
final class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return true
    }
}
