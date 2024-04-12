//
//  ProductDetailQuantityView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 12/04/24.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
    @Binding var productQuantity: Int
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()
                .foregroundColor(.black)
            HStack {
                Button(action: {
                    if productQuantity > 1 {
                        productQuantity -= 1
                    }
                }, label: {
                    Image(systemName: "minus.circle.fill").font(.title).bold()
                })
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.black)
                Button(action: {
                    productQuantity += 1
                }, label: {
                    Image(systemName: "plus.circle.fill").font(.title).bold()
                })
            }
        }
    }
}


struct ProductDetailQuantityView_Preview: PreviewProvider {
    static var previews: some View {
        ProductDetailQuantityView(productQuantity: .constant(1))
    }
}
