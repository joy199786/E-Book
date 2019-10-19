//
//  AnimationView.swift
//  myFateGame
//
//  Created by User15 on 2019/10/18.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct AnimationView: View {
    let names = [["FateStayNight","fateZero"], ["CarnivalPhantasm", "FateEXTRA _LastEncore"], ["FateApocrypha", "FatePrototype"]]
    var columnCount = 3;
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    
    var body: some View {
        
        List{
            ForEach(0..<names.count){ (row) in
                HStack(spacing: 5){
                    ForEach(0..<self.names[row].count){(col) in
                        Image(self.names[row][col])
                        .resizable()
                        .scaledToFill()
                        .frame(width: self.photoWidth, height: self.photoWidth )
                        .clipped()
                    }
                }
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
        }
        .onAppear{
            UITableView.appearance().separatorColor = .clear
        }
        
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
