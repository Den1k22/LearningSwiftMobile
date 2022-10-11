//
//  SingleplayerView.swift
//  LearningSwiftMobile
//
//  Created by Deniss Komarskis on 9.8.2022.
//

import SwiftUI

struct SingleplayerView: View {
    var body: some View {
        NavigationView {
            Text("SingleplayerView")
                .padding(10)
                .font(.largeTitle)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: { restartGame() } ) {
                                        Text("Restart")
                                    }
                    }
                }
        }
    }

    func restartGame() {
        print("game restarted")
    }
}
