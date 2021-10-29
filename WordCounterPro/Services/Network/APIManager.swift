//
//  APIManager.swift
//  WordCounterPro
//
//  Created by Kostiantyn Nikitchenko on 29.10.2021.
//

import Foundation

class APIManager {
    private let url: String = "https://en.wikipedia.org/wiki/Banana"
    
    func loadHTML(completion: @escaping (Result<String, ApiManagerError>) -> Void) {
        guard let url = URL(string: url) else {
            completion(.failure(.badURL))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(.failure(.requestError(error)))
                return
            }
            
            if let data = data {
                if let html = String(data: data, encoding: .utf8) {
                    completion(.success(html))
                } else {
                    completion(.failure(.parsingError))
                }
            } else {
                completion(.failure(.dataIsEmptyError))
            }
        }
        task.resume()
    }
}
