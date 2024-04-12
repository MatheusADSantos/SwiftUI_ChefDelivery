//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 10/04/24.
//

import Foundation


class StoreType : Identifiable, ObservableObject {
    
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
    
    internal init(id: Int, name: String, logoImage: String, headerImage: String, location: String, stars: Int, products: [ProductType]) {
        self.id = id
        self.name = name
        self.logoImage = logoImage
        self.headerImage = headerImage
        self.location = location
        self.stars = stars
        self.products = products
    }
}
