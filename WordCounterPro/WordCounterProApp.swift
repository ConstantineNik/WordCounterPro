//
//  WordCounterProApp.swift
//  WordCounterPro
//
//  Created by Kostiantyn Nikitchenko on 29.10.2021.
//

import SwiftUI

@main
struct WordCounterProApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel())
        }
    }
}
