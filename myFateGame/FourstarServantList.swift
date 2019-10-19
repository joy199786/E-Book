//
//  FourstarServantList.swift
//  myFateGame
//
//  Created by User15 on 2019/10/18.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct FourstarServantList: View {
    var body: some View {
        ZStack{
               Image("background")
               .resizable()
               .scaledToFill()
                   .frame(minWidth: 0, maxWidth: .infinity)
               .clipped()
         NavigationView{
            
                          List {
                              ForEach(0..<fourStarServants.count){
                                  (index) in
                                  NavigationLink(destination: ServantDetailView(servant: fourStarServants[index])){
                                      ServantRow(servant: fourStarServants[index])
                                      }
                              }

                              
                          }
         }.navigationBarTitle("4從者列表")
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct FourstarServantList_Previews: PreviewProvider {
    static var previews: some View {
        FourstarServantList()
    }
}
