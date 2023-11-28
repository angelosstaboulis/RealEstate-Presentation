//
//  ContentView.swift
//  RealEstatePresentation
//
//  Created by Angelos Staboulis on 28/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var agency:RealEstateAgency
    @State var isPresented:Bool
    @State var files:[String]=[]
    var body: some View {
        NavigationStack{
            VStack{
                LinearGradient(colors: [.red,.blue], startPoint: .top, endPoint: .bottom).overlay {
                    VStack{
                        HStack{
                            LinearGradient(colors: [.clear,.clear], startPoint: .top, endPoint: .bottom).overlay {
                                Text("Real-Estate Agency Presentation").font(.largeTitle)
                                    .frame(width: 600, height: 45)
                            }
                           
                        }.frame(width:300,height:45)
                        Spacer(minLength: -30)
                        NavigationLink {
                            RealEstateAgencyView(agency: .init(id: .init(), agency: "", address: "", phone: ""))
                        } label: {
                            Text("Real-Estate Agency").frame(width:300,height:45)
                        }.padding(30.0)
                        .frame(width:300,height:45)
                        
                        Button {
                            isPresented.toggle()
                        } label: {
                            Text("Select Files").frame(width:300,height:45)
                        }.frame(width:300,height:45)
                        .fileImporter(isPresented: $isPresented, allowedContentTypes: [.item]) { result in
                            do{
                                files.append(try result.get().path())
                            }catch{
                                debugPrint("something went wrong!!!")
                            }
                        }.padding(30.0)
                        
                        NavigationLink {
                            PresentationView(agency: agency, files: files).frame(width:NSScreen.main?.frame.width,height:(NSScreen.main?.frame.height)!-90)
                        } label: {
                            Text("Start Presentation").frame(width:300,height:45)
                        }.frame(width:300,height:45)
                        Spacer(minLength: -30)
                        HStack{
                            LinearGradient(colors: [.clear,.clear], startPoint: .top, endPoint: .bottom).overlay {
                                Text("Copyright (c) 2023  Angelos Staboulis").font(.largeTitle)
                                    .frame(width: 600, height: 45)
                            }
                           
                        }.frame(width:300,height:45)
                    }

                }
               
                
            }.frame(width: 900, height: 900)
        }
            

    }
}

#Preview {
    ContentView(agency: .init(id: .init(), agency: "", address: "", phone: ""), isPresented: false)
}
