//
//  SettingView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct SettingView: View {
           
    @StateObject var viewState: SettingViewState
    
    var body: some View {
        VStack {
            //User
            UserRowView( action: {
                print("Clicked on User Button")
            })
                .padding(.horizontal, 16)
                .padding(.top, 8)
                .padding(.bottom, 8)
            
            //Menu Setting
            MenuView()
                .padding(.horizontal, 16)
            
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("main.setting.title")
                    .applySubHeader1Style()
            }
            
        }
        
    }
}



struct SettingPreviews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ApplicationViewBuilder.stub.build(view: .setting)
        }
    }
}

