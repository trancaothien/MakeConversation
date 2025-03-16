//
//  SplashView.swift
//  MakeConversation
//
//  Created by Tran Cao Thien on 12/3/25
//  
//

import SwiftUI

struct SplashView: View {
    
    @StateObject var viewState: SplashViewState
    
    var body: some View {
        Text("Splash Screen")
            .onAppear {
                self.viewState.viewDidLoad()
            }
    }
}

struct SplashPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .splash)
    }
}

