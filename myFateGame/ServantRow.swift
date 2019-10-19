//
//  ServantView.swift
//  myFGO
//
//  Created by User19 on 2019/10/5.
//  Copyright © 2019 19. All rights reserved.
//

import SwiftUI


struct ServantRow: View {
    
    var servant : Servant
    
    var body: some View {
        ZStack{
        Image("background")
        .resizable()
        .scaledToFill()
        .frame(width: 400, height: 80)
        .clipped()
        HStack{
            servantImage(servant: servant)
    
            VStack(alignment: .leading){
                Text(servant.name)
                .foregroundColor(.black)
            }
            Spacer()
        }
        }.edgesIgnoringSafeArea(.all)
   
    }
}

struct ServantRow_Previews: PreviewProvider {
    static var previews: some View {
        ServantRow(servant: Servant(name: "", number:"", position: "", classification: "", attribute: "", property: ""))
            .previewLayout(.fixed(width: 300, height:80))
    }
}

struct servantImage: View {
    
    var servant: Servant
    var body: some View {
        Image(servant.name)
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .shadow(radius: 10)
    }
}
