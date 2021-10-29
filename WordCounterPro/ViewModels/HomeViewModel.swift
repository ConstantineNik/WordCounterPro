//
//  HomeViewModel.swift
//  WordCounterPro
//
//  Created by Kostiantyn Nikitchenko on 29.10.2021.
//

import Foundation
import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published var wordsCount: Int = 0
    @Published var isShowingAlert: Bool = false
    @Published var errorDescription: String = "Unsupported Error"
    
    private let apiManager: APIManager = APIManager()
    private let htmlParser: HTMLParser = HTMLParser()
        
    func wordMatchesInHTML(_ searchableWord: String) {
        apiManager.loadHTML { [weak self] result in
            switch result {case .success(let responseHTML):
                DispatchQueue.main.async {
                    self?.errorDescription = "Unsupported Error"
                    self?.isShowingAlert = false
                    self?.wordsCount = self?.htmlParser.wordsCount(word: searchableWord, html: responseHTML) ?? 0
                }
            case .failure(let error):
                self?.errorDescription = error.getMessage()
                self?.isShowingAlert = true
            }
        }
    }
}
