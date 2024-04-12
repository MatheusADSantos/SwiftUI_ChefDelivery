//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 12/04/24.
//

import SwiftUI

struct StoreDetailProductsView: View {
    
    let products: [ProductType]
    @State private var productSelected: ProductType?
    
    var body: some View {
       VStack  {
           Text("Produtos")
               .font(.title2).bold().padding()
           
            ForEach(products) { product in
                NavigationLink { ProductDetailView(product: product) } label: {
                    Button {
                        productSelected = product
                    } label: {
                        StoreDetailProductItemView(product: product)
                    }.sheet(item: $productSelected) { product in
                        ProductDetailView(product: product)
                    }
                }
            }
        }
    }
}

struct StoreDetailProductsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailProductsView(products: storesMock[0].products)
            .previewLayout(.sizeThatFits)
    }
}
