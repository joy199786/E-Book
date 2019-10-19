//
//  ServantList.swift
//  myFGO
//
//  Created by User19 on 2019/10/5.
//  Copyright © 2019 19. All rights reserved.
//

import SwiftUI

struct ServantList: View {
    var body: some View {
        
        NavigationView{
            
            List {
                ScrollView(.horizontal){
                    ZStack{
                    Image("background")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .clipped()
                    HStack(spacing: 10){
                        Group{
                            VStack {
                                NavigationLink(destination: FivestarServantList()){
                                        Image("StarServant0")
                                            .renderingMode(.original)
                                           .resizable()
                                           .scaledToFill()
                                           .frame(width: 150, height: 170)
                                            .cornerRadius(30)
                                            .shadow(radius: 10)
                                       
                                }
                                Text("五星從者")
                                .foregroundColor(Color.blue)
                            }
                            VStack {
                                NavigationLink(destination: FourstarServantList()){
                                        Image("StarServant1")
                                            .renderingMode(.original)
                                           .resizable()
                                           .scaledToFill()
                                           .frame(width: 150, height: 170)
                                            .cornerRadius(30)
                                            .shadow(radius: 10)
                                       
                                }
                                Text("四星從者")
                                .foregroundColor(Color.blue)
                            }
                        VStack {
                            NavigationLink(destination: ThreestarServantList()){
                                    Image("StarServant2")
                                        .renderingMode(.original)
                                       .resizable()
                                       .scaledToFill()
                                       .frame(width: 150, height: 170)
                                        .cornerRadius(30)
                                        .shadow(radius: 10)
                                   
                            }
                            Text("三星從者")
                            .foregroundColor(Color.blue)
                        }
                        VStack {
                            NavigationLink(destination: TwostarServantList()){
                                    Image("StarServant3")
                                        .renderingMode(.original)
                                       .resizable()
                                       .scaledToFill()
                                       .frame(width: 150, height: 170)
                                        .cornerRadius(30)
                                        .shadow(radius: 10)
                                   
                            }
                            Text("二星從者")
                            .foregroundColor(Color.blue)
                        }
                        VStack {
                            NavigationLink(destination:OnestarServantList()){
                                    Image("StarServant4")
                                        .renderingMode(.original)
                                       .resizable()
                                       .scaledToFill()
                                       .frame(width: 150, height: 170)
                                        .cornerRadius(30)
                                        .shadow(radius: 10)
                                   
                            }
                            Text("一星從者")
                            .foregroundColor(Color.blue)
                        }
                    }
                    }.frame(height: 200)
                         }.edgesIgnoringSafeArea(.all)
                }
                Section(header:Text("所有從者")){
                ForEach(0..<servants.count){
                    (index) in
                    NavigationLink(destination: ServantDetailView(servant: servants[index])){
                        ServantRow(servant: servants[index])
                        }
                }
            }
            }
            .navigationBarTitle("從者列表")
        }
    }
}

struct ServantList_Previews: PreviewProvider {
    static var previews: some View {
        ServantList()
    
    }
}


/*
ForEach(0..<servants.count){
    (index) in
    NavigationLink(destination: ServantDetail(servant: servants[index])){
        ServantRow(servant: servants[index])
        }
}


ScrollView(.horizontal){
           HStack(spacing: 10){
            
                ForEach(0...4){(index) in
                    VStack {
                        Image("StarServant"+index)
                           .resizable()
                           .scaledToFill()
                            .frame(width: 180, height: 200)
                            //.clipped()
                        Text((index+1)+"星從者")
                    }
                }
           }.frame(height: 230)
}
*/
