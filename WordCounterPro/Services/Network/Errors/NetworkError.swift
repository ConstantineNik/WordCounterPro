//
//  NetworkError.swift
//  WordCounterPro
//
//  Created by Kostiantyn Nikitchenko on 29.10.2021.
//

import Foundation

enum ApiManagerError: Error {
    case badURL
    case dataIsEmptyError
    case requestError(_ error: Error)
    case parsingError
    
    func getMessage() -> String {
        switch self {
        case .badURL:
            return "Bad URL"
        case .dataIsEmptyError:
            return "Empty data"
        case .requestError(let error):
            return error.localizedDescription
        case .parsingError:
            return "Parsing Error"
        }
    }
}
