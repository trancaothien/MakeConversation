//
//  BottomNavigationView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 5/4/25.
//

import SwiftUI

enum BottomNavigationTabs: Equatable {
    case contact
    case conversation
    case setting
}

struct TabPreferenceData {
    let viewIdx: BottomNavigationTabs
    let bottom: Anchor<CGPoint>
}

struct TabPreferenceKey: PreferenceKey {
    typealias Value = [TabPreferenceData]
    
    static var defaultValue: [TabPreferenceData] = []
    
    static func reduce(value: inout [TabPreferenceData], nextValue: () -> [TabPreferenceData]) {
        value.append(contentsOf: nextValue())
    }
}

struct BottomNavigationView<Content: View>: View {
    
    @Binding var currentTab: BottomNavigationTabs
    let tabDidSelect: (BottomNavigationTabs) -> Void
    let content: () -> Content
    
    @State private var contactPoint: CGPoint = .zero
    @State private var conversationPoint: CGPoint = .zero
    @State private var settingPoint: CGPoint = .zero
    
    var body: some View {
        VStack {
            content()
        }
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    tabView(.contact, currentTab == .contact)
                    
                    Spacer()
                    
                    tabView(.conversation, currentTab == .conversation)
                    
                    Spacer()
                    
                    tabView(.setting, currentTab == .setting)
                    
                }
                .padding(.horizontal, 16)
                .backgroundPreferenceValue(TabPreferenceKey.self) { preferences in
                    GeometryReader { geometry in
                        self.createCircle(geometry, preferences)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    }
                }
            }
        }
    }
    
    private func createCircle(_ geometry: GeometryProxy, _ preferences: [TabPreferenceData]) -> some View {
        ZStack {
            if let preference = preferences.first(where: { $0.viewIdx == self.currentTab }) {
                let centerPoint = geometry[preference.bottom]
                
                Circle()
                    .foregroundColor(.text)
                    .frame(width: 4, height: 4)
                    .position(CGPoint(x: centerPoint.x, y: centerPoint.y - 8)) // Adding padding 8
                    .animation(.interpolatingSpring(stiffness: 120, damping: 15).delay(0.3), value: self.currentTab)
            }
        }
    }
    
    /// Show icon tab view with states:
    /// - Active
    /// - Unactive
    private func tabView(_ tab: BottomNavigationTabs, _ active: Bool) -> some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 0.3)) {
                tabDidSelect(tab)
            }
        }) {
            Group {
                if active {
                    tabTitle(tab)
                        .transition(.opacity)
                } else {
                    tabIcon(tab)
                        .transition(.opacity)
                }
            }
        }
        .frame(width: 58, height: 44)
        .anchorPreference(key: TabPreferenceKey.self, value: .bottom, transform: { preference in
            [TabPreferenceData(viewIdx: tab, bottom: preference)]
        })
    }
    
    /// Show tab icon
    private func tabIcon(_ tab: BottomNavigationTabs) -> some View {
        var icon: Image
        
        switch tab {
        case .contact: icon = Image(.listFriendIcon)
        case .conversation: icon = Image(.chatsIcon)
        case .setting: icon = Image(.moreIcon)
        }
        
        return icon
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 32, height: 32)
    }
    
    /// Show tab title
    private func tabTitle(_ tab: BottomNavigationTabs) -> some View {
        var text: Text
        
        switch tab {
        case .contact: text = Text("main.contact.title")
        case .conversation: text = Text("main.conversation.title")
        case .setting: text = Text("main.setting.title")
        }
        
        return text
            .applyBody1Style(color: .text)
    }
}
