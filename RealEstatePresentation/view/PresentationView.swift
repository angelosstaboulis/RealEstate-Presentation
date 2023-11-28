//
//  PresentationView.swift
//  RealEstatePresentation
//
//  Created by Angelos Staboulis on 28/11/23.
//

import SwiftUI

struct PresentationView: View {
    @State var agency:RealEstateAgency
    @State var files:[String] = []
    @State var index:Int!=0
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            VStack{
                Image(nsImage: NSImage(byReferencing: URL(filePath:files[index])))
                    .resizable()
            }.frame(width:780,height:700,alignment: .center)
            VStack{
                Text(agency.agency).font(.largeTitle).padding(15)
                Text(agency.address).font(.largeTitle).padding(15)
                Text(agency.phone).font(.largeTitle).padding(15)
            }
        }.frame(width:NSScreen.main?.frame.width,height:(NSScreen.main?.frame.height)!-90)
        .onReceive(timer, perform: { _ in
            debugPrint("agency=",agency)
            if index == files.count - 1{
                index = 0
            }else{
                index = index + 1
            }
        })
    }
}

#Preview {
    PresentationView(agency: .init(id: .init(), agency: "", address: "", phone: ""))
}
