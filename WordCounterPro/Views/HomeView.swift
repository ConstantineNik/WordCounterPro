//
//  HomeView.swift
//  WordCounterPro
//
//  Created by Kostiantyn Nikitchenko on 29.10.2021.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    gradient: Gradient(colors: [Color.green, Color.white]),
    startPoint: .top, endPoint: .bottom)

struct HomeView: View {
    @State var searchableWord: String = "banana"
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        ZStack {
            backgroundGradient.ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Words counter")
                    .fontWeight(.bold)
                    .font(.system(size: 26))
                    .padding()
                Spacer()
                Text("\(viewModel.wordsCount)")
                    .font(.system(size: 50))
                    .padding()
                Spacer()
                TextField("Enter word to count", text: $searchableWord)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                    .padding()
                Button("Calculate") {
                    viewModel.wordMatchesInHTML(searchableWord)
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .clipShape(Capsule())
                Spacer()
            }
            .alert(isPresented: $viewModel.isShowingAlert) {
                Alert(
                    title: Text("Network Error"),
                    message: Text(viewModel.errorDescription)
                )
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}

