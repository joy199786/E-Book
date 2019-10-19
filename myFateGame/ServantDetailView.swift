//
//  ServantDetailView.swift
//  myFateGame
//
//  Created by User15 on 2019/10/18.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct ServantDetailView: View {
    var servant: Servant;
    var body: some View {
        ZStack{
            Image("background")
            .resizable()
            .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
            .clipped()
            
            VStack{
                Image(servant.name+"detail")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                    .clipped()
                
                Text(servant.name)
                .fontWeight(.black)
                .foregroundColor(Color.blue)
                .font(.largeTitle)
                    .padding(.bottom)
                
                Text("編號：\(servant.number)")
                .fontWeight(.semibold)
                .font(.system(size: 20))
                .padding(3)
                .foregroundColor(.black)
                
                Text("職階：\(servant.position)")
                .fontWeight(.semibold)
                .padding(3)
                .font(.system(size: 20))
                .foregroundColor(.black)
                
                Text("分類：\(servant.classification)")
                .fontWeight(.semibold)
                .padding(8)
                .font(.system(size: 20))
                .foregroundColor(.black)
                
                Text("特性:")
                .bold()
                .font(.title)
                .padding(5)
                .foregroundColor(.black)
                
                Text(servant.property)
                .font(.system(size: 18))
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.black)
                
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ServantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ServantDetailView(servant: servants[0])
    }
}
