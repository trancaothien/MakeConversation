//
//  ApplicationBuiler.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25.
//

import SwiftUI

final class ApplicationViewBuilder : Assembly, ObservableObject {
    
    required init(container: Container) {
        super.init(container: container)
    }
   
    @ViewBuilder
    func build(view: Views) -> some View {
        switch view {
        case .splash:
            buildSplash()
        case .main:
            buildMain()
        case .contact:
            buildContact()
        case .conversation:
            buildConversation()
        case .setting:
            buildSetting()
        case .walkthrough:
            buildWalkthrough()
        case .verification:
            buildVerification()
        case .verificationOTP:
            buildVerificationOTP()
        }
    }
    
    @ViewBuilder
    fileprivate func buildMain() -> some View {
        container.resolve(MainAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildSplash() -> some View {
        container.resolve(SplashAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildContact() -> some View {
        container.resolve(ContactAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildConversation() -> some View {
        container.resolve(ConversationAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildSetting() -> some View {
        container.resolve(SettingAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildWalkthrough() -> some View {
        container.resolve(WalkthroughAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildVerification() -> some View {
        container.resolve(VerificationAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildVerificationOTP() -> some View {
        container.resolve(VerificationOTPAssembly.self).build()
    }
    
}

extension ApplicationViewBuilder {
    
    static var stub: ApplicationViewBuilder {
        return ApplicationViewBuilder(
            container: MakeConversationApp().container
        )
    }
}
