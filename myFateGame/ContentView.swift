//
//  ContentView.swift
//  myFGO
//
//  Created by User19 on 2019/10/5.
//  Copyright © 2019 19. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
                    Image("homeBackground")
                    Image("fgoMaster")
                    .resizable()
                    .frame(width: 300, height:600)
                }
            .edgesIgnoringSafeArea(.all)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
