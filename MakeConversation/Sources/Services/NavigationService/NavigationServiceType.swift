//
//  NavigationServiceType.swift
//  Chatting
//
//  Created by Tran Cao Thien on 10/3/25
//  
//

import Foundation

/// The `NavigationServiceType` protocol defines a navigation service in the application,
/// providing management of the view stack, modal windows, popups, and alerts.
protocol NavigationServiceType: ObservableObject, Identifiable {
    
    /// An array of views that make up the current navigation stack.
    /// Used for managing transitions between screens.
    /// By default, this array is empty, and the root page is bound to the NavigationStack body in the RootView body.
    var items: [Views] { get set }
    
    /// The current modal view, if active.
    /// Can be `nil` if there is no active modal window.
    var modalView: Views? { get set }
    
    /// The current popup view, if active.
    /// Can be `nil` if no popup is displayed.
    var popupView: Views? { get set }
    
    /// The current alert (dialog window), if active.
    /// Can be `nil` if there are no active alerts.
    var alert: CustomAlert? { get set }
    
    /// Push a new view onto the navigation stack.
    func push(_ view: Views)
    
    /// Pop the current view from the navigation stack.
    func pop()
    
    /// Replace the entire navigation stack with a new root view.
    func pushReplace(_ view: Views)
    
    /// Present a modal view.
    func presentModal(_ view: Views)
    
    /// Dismiss the current modal.
    func dismissModal()
    
    /// Present a popup view.
    func presentPopup(_ view: Views)
    
    /// Dismiss the current popup.
    func dismissPopup()
}
