//
//  MakeConversationApp.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 11/3/25.
//

import SwiftUI
import SwiftData

@main
struct MakeConversationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    @ObservedObject var appViewBuilder: ApplicationViewBuilder
    @ObservedObject var navigationService: NavigationService
    
    let container: DependencyContainer = {
        let factory = AssemblyFactory()
        let container = DependencyContainer(assemblyFactory: factory)
                
        // Services
        container.apply(NavigationAssembly.self)
    
        // Modules
        container.apply(SplashAssembly.self)
        container.apply(MainAssembly.self)
        container.apply(ContactAssembly.self)
        container.apply(ConversationAssembly.self)
        container.apply(SettingAssembly.self)
        container.apply(WalkthroughAssembly.self)
        container.apply(VerificationAssembly.self)
        container.apply(VerificationOTPAssembly.self)

        return container
    }()

    init() {
        navigationService = container.resolve(NavigationAssembly.self).build() as! NavigationService
        
        appViewBuilder = ApplicationViewBuilder(container: container)
    }
    
    var body: some Scene {
        WindowGroup {
            MakeConversationView(navigationService: navigationService, appViewBuilder: appViewBuilder)
        }
    }
}
