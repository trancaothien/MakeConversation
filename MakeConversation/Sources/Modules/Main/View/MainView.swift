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

    @State var viewSelection: Int = 0
    
    var body: some View {
        VStack {
            switch viewSelection {
            case 0: ApplicationViewBuilder.stub.build(view: .contact)
            case 1: ApplicationViewBuilder.stub.build(view: .conversation)
            case 2: ApplicationViewBuilder.stub.build(view: .setting)
            default:
                VStack{}
            }
        }
        .toolbar() {
            ToolbarItem(placement: .topBarLeading) {
                    Text("Chats")
                    .applyHeader2Style()
                    .padding()
            }

            ToolbarItem(placement: .topBarTrailing) {
                HStack {
                    Button {
                        print("Clicked on newMessage Button")
                    } label: {
                        Image(.newMessageIcon)
                    }
                    
                    Button {
                        print("Clicked on seenMessage Button")
                    } label: {
                        Image(.maskAsReadIcon)
                    }
                }
                .padding()
            }
            
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    Button {
                        viewSelection = 0
                    } label: {
                        Image(.listFriendIcon)
                    }
                    
                    Spacer()
                    
                    Button {
                        viewSelection = 1
                    } label: {
                        Text("Chats")
                            .applySubHeader2Style()
                    }
                    
                    Spacer()
                    
                    Button {
                        viewSelection = 2
                    } label: {
                        Image(.moreIcon)
                    }
                }
            }
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
