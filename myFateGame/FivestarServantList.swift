//
//  FivestarServantList.swift
//  myFateGame
//
//  Created by User15 on 2019/10/18.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct FivestarServantList: View {
    var body: some View {
    ZStack{
    Image("background")
    .resizable()
    .scaledToFill()
        .frame(minWidth: 0, maxWidth: .infinity)
    .clipped()
  NavigationView{
                   List {
                       ForEach(0..<fiveStarServants.count){
                           (index) in
                           NavigationLink(destination: ServantDetailView(servant: fiveStarServants[index])){
                               ServantRow(servant: fiveStarServants[index])
                               }
                       }
                   }
        }.navigationBarTitle("5星從者列表")
           }.edgesIgnoringSafeArea(.bottom)
    }
}

struct FivestarServantList_Previews: PreviewProvider {
    static var previews: some View {
        FivestarServantList()
    }
}
