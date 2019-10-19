//
//  ThreestarServantList.swift
//  myFateGame
//
//  Created by User15 on 2019/10/18.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct ThreestarServantList: View {
    var body: some View {
        ZStack{
                            Image("background")
                            .resizable()
                            .scaledToFill()
                                .frame(minWidth: 0, maxWidth: .infinity)
                            .clipped()
        NavigationView{
            List {
                ForEach(0..<threeStarServants.count){
                    (index) in
                    NavigationLink(destination: ServantDetailView(servant: threeStarServants[index])){
                        ServantRow(servant: threeStarServants[index])
                        }
                }

                
            }
             }.navigationBarTitle("3星從者列表")
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ThreestarServantList_Previews: PreviewProvider {
    static var previews: some View {
        ThreestarServantList()
    }
}
