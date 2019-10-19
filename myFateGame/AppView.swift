//
//  AppView.swift
//  myFateGame
//
//  Created by User15 on 2019/10/14.
//  Copyright © 2019 557021. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Image(systemName: "music.house.fill")
                Text("首頁")
            }
            ServantList().tabItem{
                Image(systemName: "info.circle.fill")
                Text("從者介紹")
            }
            AnimationView().tabItem{
                Image(systemName: "video.fill")
                Text("Fate系列動畫")
            }
        }.accentColor(.green)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
