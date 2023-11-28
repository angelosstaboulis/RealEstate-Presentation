//
//  RealEstateAgencyView.swift
//  RealEstatePresentation
//
//  Created by Angelos Staboulis on 28/11/23.
//

import SwiftUI

struct RealEstateAgencyView: View {
    @State var agency:RealEstateAgency
    @StateObject var viewModel = AgencyViewModel(agency:.init(id: .init(), agency: "", address: "", phone: ""))
    var body: some View {
        LinearGradient(colors: [.red,.blue], startPoint: .top, endPoint: .bottom).overlay {
            VStack{
                HStack{
                    LinearGradient(colors: [.clear,.clear], startPoint: .top, endPoint: .bottom).overlay {
                        Text("Real-Estate Presentation").font(.largeTitle)
                            .frame(width: 600, height: 45)
                    }
                   
                }.frame(width:300,height:45)
                Spacer()
                Text("Agency").frame(width:300,height:0,alignment: .leading)
                TextField("", text: $agency.agency)
                .clipShape(.capsule)
                .frame(width:300,height:60)
                .background {
                    RoundedRectangle(cornerRadius: 22 ).frame(width:300,height:60).foregroundStyle(.clear)
                       
                }
                Text("Address").frame(width:300,height:0,alignment: .leading)
                TextField("Address", text: $agency.address).frame(width:300,height:60)
                Text("Phone").frame(width:300,height:0,alignment: .leading)
                TextField("Phone", text: $agency.phone).frame(width:300,height:60)
                NavigationLink {
                    ContentView(agency: viewModel.saveData(agency: agency), isPresented: false)
                    
                } label: {
                    Text("Save Agency Data").frame(width:300,height:45)
                }.frame(width:300,height:45)
                Spacer()
                HStack{
                    LinearGradient(colors: [.clear,.clear], startPoint: .top, endPoint: .bottom).overlay {
                        Text("Copyright (c) 2023  Angelos Staboulis").font(.largeTitle)
                            .frame(width: 600, height: 45)
                    }
                   
                }.frame(width:300,height:45)
              
            }
        }
    }
}

#Preview {
    RealEstateAgencyView(agency: .init(id: .init(), agency: "", address: "", phone: ""))
}
