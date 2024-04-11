//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 10/04/24.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formatePrice: String {
        return "R$" + price.formatPrice()
    }
}
