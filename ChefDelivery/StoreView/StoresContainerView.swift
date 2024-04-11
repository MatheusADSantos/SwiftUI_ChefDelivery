//
//  StoreTabView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 10/04/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    
    private var filteredStores : [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title).font(.headline)
                Spacer()
                Menu("Filtrar") {
                    
                    Button(action: {
                        ratingFilter = 0
                    }, label: {
                        Text("Limpar filtro!")
                    })
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button(action: {
                            ratingFilter = rating
                        }, label: {
                            if rating > 1 {
                                Text("\(rating) estrelas ou mais")
                            } else {
                                Text("\(rating) estrela ou mais")
                            }
                        })
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 30) {
                if filteredStores.isEmpty {
                    Text("Nenhum Resultado encontrado!")
                        .padding(.vertical, 32)
                        .foregroundColor(Color("ColorRed"))
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                } else {
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }
                        
                    }
                }
            }
        }.padding(20)
    }
}


struct StoreTabView_Preview: PreviewProvider {
    static var previews : some View {
        StoresContainerView()
            .previewLayout(.sizeThatFits)
    }
}
