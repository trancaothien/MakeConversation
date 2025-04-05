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
    @State var currentTab: BottomNavigationTabs = .conversation
    
    var body: some View {
        BottomNavigationView(currentTab: $currentTab, tabDidSelect: {tab in
            currentTab = tab
        }) {
            switch currentTab {
            case .contact:
                ApplicationViewBuilder.stub.build(view: .contact)
            case .conversation:
                ApplicationViewBuilder.stub.build(view: .conversation)
            case .setting:
                ApplicationViewBuilder.stub.build(view: .setting)
            }
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
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
