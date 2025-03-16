//
//  MakeConversationView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25.
//


import SwiftUI

struct MakeConversationView: View {
    
    @ObservedObject var navigationService: NavigationService
    @ObservedObject var appViewBuilder: ApplicationViewBuilder
    
    var body: some View {
        NavigationStack(path: $navigationService.items) {
            appViewBuilder.build(view: .splash)
                .navigationDestination(for: Views.self) { path in
                    appViewBuilder.build(view: path)
                        .navigationBarBackButtonHidden()
                }
        }
        .fullScreenCover(item: $navigationService.popupView) { item in
            appViewBuilder.build(view: item)
                .presentationBackground(.clear)
        }
        .fullScreenCover(item: $navigationService.modalView) { item in
            appViewBuilder.build(view: item)
        }
        .alert(isPresented: .constant($navigationService.alert.wrappedValue != nil)) {
            switch navigationService.alert {
            case .defaultAlert(let yesAction, let noAction):
                return Alert(title: Text("Title"),
                             primaryButton: .default(Text("Yes"), action: yesAction),
                             secondaryButton: .destructive(Text("No"), action: noAction))
            case .none:
                fatalError()
            }
        }
    }
}
