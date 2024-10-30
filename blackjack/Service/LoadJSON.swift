//
//  LoadJSON.swift
//  blackjack
//
//

import Foundation

//Not really service, but emulates like one
func loadJson(withFilename fileName: String) -> [Deck]? {
    guard
        let url = Bundle.main.url(forResource: fileName, withExtension: "json"),
        let data = try? Data(contentsOf: url),
        let jsonData = try? JSONDecoder().decode([Deck].self, from: data)
    else{
        return nil
    }
    return jsonData
}
