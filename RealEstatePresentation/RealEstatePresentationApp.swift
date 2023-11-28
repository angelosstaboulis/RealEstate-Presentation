//
//  RealEstatePresentationApp.swift
//  RealEstatePresentation
//
//  Created by Angelos Staboulis on 28/11/23.
//

import SwiftUI
import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApplication.shared.windows.first?.center()
      

    }
}

@main
struct RealEstatePresentationApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        
        Window("Real-Estate Presentation", id: "main") {
            ContentView(agency: .init(id: .init(), agency: "", address: "", phone: ""), isPresented:false).frame(width: 800, height: 900,alignment: .center)
                
        }.windowResizability(.contentSize)
        .commandsRemoved()
    

    }
}
