//
//  HTMLParser.swift
//  WordCounterPro
//
//  Created by Kostiantyn Nikitchenko on 29.10.2021.
//

import Foundation

class HTMLParser {
    
    func wordsCount(word: String, html: String) -> Int {
        let text = html.htmlToString
        return text.indices(of: word).count
    }
}
