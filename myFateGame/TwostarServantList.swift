//
//  TwostarServantList.swift
//  myFateGame
//
//  Created by User15 on 2019/10/18.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct TwostarServantList: View {
    var body: some View {
        ZStack{
                            Image("background")
                            .resizable()
                            .scaledToFill()
                                .frame(minWidth: 0, maxWidth: .infinity)
                            .clipped()
        NavigationView{
                   List {
                       ForEach(0..<twoStarServants.count){
                           (index) in
                           NavigationLink(destination: ServantDetailView(servant: twoStarServants[index])){
                               ServantRow(servant: twoStarServants[index])
                               }
                       }

                       
                   }
            }.navigationBarTitle("2星從者列表")
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct TwostarServantList_Previews: PreviewProvider {
    static var previews: some View {
        TwostarServantList()
    }
}
