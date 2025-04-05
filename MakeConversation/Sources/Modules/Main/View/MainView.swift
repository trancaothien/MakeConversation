//
//  MainView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewState: MainViewState
    
    var body: some View {
        BottomNavigationView(currentTab: $viewState.currentTab, tabDidSelect: {tab in
            viewState.currentTab = tab
        }) {
            content(for: viewState.currentTab)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
    
    @ViewBuilder
    private func content(for tab: BottomNavigationTabs) -> some View {
        switch tab {
        case .contact:
            ApplicationViewBuilder.stub.build(view: .contact)
        case .conversation:
            ApplicationViewBuilder.stub.build(view: .conversation)
        case .setting:
            ApplicationViewBuilder.stub.build(view: .setting)
        }
    }
}

//Preview
struct MainPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .main)
        }
    }
}
