//
//  ContentView.swift
//  WorldCounterPro
//
//  Created by Kostiantyn Nikitchenko on 29.10.2021.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    gradient: Gradient(colors: [Color.green, Color.white]),
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @State var searchableWord: String = "banana"
    
    var body: some View {
        ZStack {
            backgroundGradient.ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Words counter")
                    .fontWeight(.bold)
                    .font(.system(size: 26))
                    .padding()
                Spacer()
                Text("223")
                    .font(.system(size: 50))
                    .padding()
                Spacer()
                TextField("Enter word to count", text: $searchableWord)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                Button("Calculate") {}
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .clipShape(Capsule())
                Spacer()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
