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
        Text("Hello iOS / SettingView")
    }
}

struct SettingPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .setting)
    }
}

