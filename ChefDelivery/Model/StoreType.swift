//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 10/04/24.
//

import Foundation


struct StoreType : Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
