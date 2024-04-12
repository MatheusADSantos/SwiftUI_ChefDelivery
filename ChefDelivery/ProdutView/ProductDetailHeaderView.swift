//
//  ProductDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 12/04/24.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    
    let product: ProductType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .shadow(radius: 20)
            
            Text(product.name)
                .font(.title)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            Text(product.description)
                .padding(.horizontal)
                .frame(alignment: .leading)
            Text(product.formatePrice)
                .font(.title3)
                .bold()
                .padding(.horizontal)
        }.foregroundColor(.black)
    }
}


struct ProductDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailHeaderView(product: storesMock[0].products[0])
            .previewLayout(.sizeThatFits)
    }
}
