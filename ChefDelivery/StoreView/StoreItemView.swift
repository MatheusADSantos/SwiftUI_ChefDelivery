//
//  SotreItemView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 09/04/24.
//

import SwiftUI

struct StoreItemView: View {
    
    let orders: OrderType
    
    var body: some View {
        HStack(alignment: .center, spacing: nil) {
            Image(orders.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            Text(orders.name)
                .font(.subheadline)
            Spacer()
        }.onTapGesture {
            print("Clicou em \(orders.name)")
        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews : some View {
        StoreItemView(orders:
                        OrderType(
                            id: 1,
                            name: "Monster Burguer",
                            image: "monstro-burger-logo")
        )
        .previewLayout(.sizeThatFits)
    }
}
