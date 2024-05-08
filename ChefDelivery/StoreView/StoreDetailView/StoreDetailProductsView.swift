//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 12/04/24.
//

import SwiftUI

struct StoreDetailProductsView: View {
    
//    let products: [ProductType]
    @EnvironmentObject var store: StoreType
    @State private var productSelected: ProductType?
    
    var body: some View {
       VStack  {
           Text("Produtos")
               .font(.title2).bold().padding()
           
           ForEach(store.products) { product in
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
       .onAppear() {
           fetchData()
       }
    }
}

struct StoreDetailProductsView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailProductsView()
            .environmentObject(storesMock[0])
            .previewLayout(.sizeThatFits)
    }
}

// MARK: - Methods

func fetchData() {
    guard let url = URL(string: "https://private-289ca1-matheus18.apiary-mock.com/home") else { return }
    URLSession.shared.dataTask(with: url) { data, _, error in
        if let error = error {
            print(error.localizedDescription)
        }
        else if let data = data {
            do {
                let json = try JSONSerialization.jsonObject(with: data)
                print(json)
            } catch {
                print(error.localizedDescription)
            }
        }
    }.resume()
}

