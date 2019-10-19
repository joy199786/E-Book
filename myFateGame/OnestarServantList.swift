//
//  OnestarServantList.swift
//  myFateGame
//
//  Created by User15 on 2019/10/18.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct OnestarServantList: View {
        var body: some View {
            ZStack{
                                Image("background")
                                .resizable()
                                .scaledToFill()
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                .clipped()
            NavigationView{
                       List {
                           ForEach(0..<oneStarServants.count){
                               (index) in
                               NavigationLink(destination: ServantDetailView(servant: oneStarServants[index])){
                                   ServantRow(servant: oneStarServants[index])
                                   }
                           }

                           
                       }
                }.navigationBarTitle("1星從者列表")
            }.edgesIgnoringSafeArea(.bottom)
        }
    }


struct OnestarServantList_Previews: PreviewProvider {
    static var previews: some View {
        OnestarServantList()
    }
}
