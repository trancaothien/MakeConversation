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

    @State var viewSelection: Int = 1
    
    func circleOffset() -> CGFloat {
        switch viewSelection {
            case 0: return 43
            case 1: return 158.5
            case 2: return 310
            default: return 0
        }
    }

    
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
                    .padding(.bottom, 29)
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
                .padding(.bottom, 29)
            }
            
            ToolbarItem(placement: .bottomBar) {
                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            // Indicator
                            Circle()
                                .fill(Color.black)
                                .frame(width: 4, height: 4)
                                .offset(x: circleOffset(), y: 33)
                                .animation(.easeInOut(duration: 0.3), value: viewSelection)
                                .padding(.bottom, 33)

                            // Buttons
                            HStack {
                                Button {
                                    viewSelection = 0
                                } label: {
                                    if viewSelection == 0 {
                                        Text("Contacts").applySubHeader2Style()
                                    } else {
                                        Image(.listFriendIcon)
                                    }
                                }
                                .frame(width: 58, height: 44)
                                .padding(.leading, 16)

                                Spacer()

                                Button {
                                    viewSelection = 1
                                } label: {
                                    if viewSelection == 1 {
                                        Text("Chats").applySubHeader2Style()
                                    } else {
                                        Image(.chatsIcon)
                                    }
                                }
                                .frame(width: 58, height: 44)

                                Spacer()

                                Button {
                                    viewSelection = 2
                                } label: {
                                    if viewSelection == 2 {
                                        Text("More").applySubHeader2Style()
                                    } else {
                                        Image(.moreIcon)
                                    }
                                }
                                .frame(width: 58, height: 44)
                                .padding(.trailing, 16)
                            }
                        }
                    }
                    .frame(height: 44)
                    .padding(.horizontal, 24) // padding nếu bạn muốn
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
