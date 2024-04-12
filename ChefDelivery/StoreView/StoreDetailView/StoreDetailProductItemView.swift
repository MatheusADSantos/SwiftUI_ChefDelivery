//
//  StoreDetailProductItemView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 12/04/24.
//

import SwiftUI

struct StoreDetailProductItemView: View {
    
    let product: ProductType
    
    var body: some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name).bold()
                Text(product.description).multilineTextAlignment(.leading)
                    .foregroundColor(.black.opacity(0.5))
                Text(product.formatePrice)
            }
            Spacer()
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .frame(width: 120, height: 120)
                .shadow(color:.black.opacity(0.3), radius: 20, x: 6, y: 8)
        }
        .padding()
        .foregroundColor(.black)
    }
}

struct StoreDetailProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailProductItemView(product: storesMock[0].products[0])
    }
}
