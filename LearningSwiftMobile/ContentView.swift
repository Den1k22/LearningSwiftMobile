//
//  ContentView.swift
//  LearningSwiftMobile
//
//  Created by Deniss Komarskis on 21.6.2022.
//

import SwiftUI

struct ContentView: View {

    @State var count: Int = 0
    @State var randomNumberResult: Int = 0

    var body: some View {
        VStack {
            Text("Current count \(count)")
                .padding(10)
                .font(.largeTitle)
            Button(action: { increaseNumber() } ) {
                Text("Increment")
            }
            .padding(10)
            Button(action: { decreaseNumber() } ) {
                Text("Decrease")
            }
            .padding(10)
            Button(action: { randomNumber() } ) {
                Text("Random (-10 -> 10): \(randomNumberResult)")
            }
            .padding(10)
        }
        .padding()
    }

    func increaseNumber() {
        count += 1
    }

    func decreaseNumber() {
        count -= 1
    }

    func randomNumber() {
        let number = Int(arc4random_uniform(21))
        randomNumberResult = number - 10
        count += randomNumberResult
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
