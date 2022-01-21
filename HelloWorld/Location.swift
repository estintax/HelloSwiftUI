//
//  Location.swift
//  HelloWorld
//
//  Created by Максим Пинигин on 21.01.2022.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let city: String
    let description: String
    let moreText: String
    let x: Double
    let y: Double
    
    static let example = Location(id: 0, name: "Мариуполь", city: "Новокузнецк", description: "Крутой, но опасный город", moreText: "Назван в честь, точно не знаю кого, может некой Марии? Ну ладно, не суть...", x: 0.0, y: 0.0)
}

