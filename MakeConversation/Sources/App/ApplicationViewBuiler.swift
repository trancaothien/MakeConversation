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
        case .login:
            buildLogin()
        case .verificationOTP(let phoneNumber):
            buildVerificationOTP(phoneNumber)
        case .verificationProfile:
            buildVerificationProfile()
        case .chatRoom(let conversationData):
            buildChatRoom(conversationData: conversationData)
        case .register:
            buildRegister()
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
    fileprivate func buildLogin() -> some View {
        container.resolve(LoginAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildVerificationOTP(_ phoneNumber: String) -> some View {
        container.resolve(VerificationOTPAssembly.self).build(phoneNumber)
    }
    
    @ViewBuilder
    fileprivate func buildVerificationProfile() -> some View {
        container.resolve(VerificationProfileAssembly.self).build()
    }
    
    @ViewBuilder
    fileprivate func buildChatRoom(conversationData: ConversationData) -> some View {
        container.resolve(ChatRoomAssembly.self).build(conversationData: conversationData)
    }
    
    @ViewBuilder
    fileprivate func buildRegister() -> some View {
        container.resolve(RegisterAssembly.self).build()
    }
    
}

extension ApplicationViewBuilder {
    
    static var stub: ApplicationViewBuilder {
        return ApplicationViewBuilder(
            container: MakeConversationApp().container
        )
    }
}
