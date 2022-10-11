//
//  ContentView.swift
//  LearningSwiftMobile
//
//  Created by Deniss Komarskis on 21.6.2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openURL

    var body: some View {
        TabView {
            SingleplayerView().tabItem() {
                Text("Singleplayer").padding(10)
            }
            MultiplayerView().tabItem() {
                Text("Multiplayer").padding(10)
            }
            Button("Help online") {
                openURL(URL(string: "https://en.wikipedia.org/wiki/Bulls_and_Cows")!)
            }.tabItem() {
                Text("Help").padding(10)
            }
        }.padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
