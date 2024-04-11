//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 11/04/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    var body: some View {
        Text(product.name)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
