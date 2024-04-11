//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 11/04/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productQuantity = 1
    
    var body: some View {
        VStack {
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
            
            Spacer()
            
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
            
            Spacer()
            
            Button(action: {
                print("Button foi presionado")
            }, label: {
                HStack {
                    Image(systemName: "cart")
                    Text("Adicionar ao carinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(Color("ColorRed"))
                .foregroundColor(.white)
                .cornerRadius(32)
                .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y: 8)
            })
            
        }.padding(6)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
