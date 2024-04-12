//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 10/04/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
//    @State private var productSelected: ProductType?
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                StoreDetailHeaderView(store: store) // componentized
                
                StoreDetailProductsView(products: store.products)
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack(spacing: 4) {
                            Image(systemName: "cart")
                            Text("Lojas")
                        }.foregroundColor(Color("ColorRed"))
                    }
                    
                }
            }
        }
    }
}

struct StoreDetailView_Preview: PreviewProvider {
    static var previews : some View {
        StoreDetailView(store: storesMock[1])
    }
}
