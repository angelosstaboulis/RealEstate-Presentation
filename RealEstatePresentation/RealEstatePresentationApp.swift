//
//  RealEstatePresentationApp.swift
//  RealEstatePresentation
//
//  Created by Angelos Staboulis on 28/11/23.
//

import SwiftUI

@main
struct RealEstatePresentationApp: App {
    var body: some Scene {
        Window("Real-Estate Presentation", id: "main") {
                ContentView(agency: .init(id: .init(), agency: "", address: "", phone: ""), isPresented:false).frame(width:900,height:900,alignment: .center)
                
        }.windowResizability(.contentSize)
        .windowToolbarStyle(.expanded)
        .commandsRemoved()
    

    }
}
