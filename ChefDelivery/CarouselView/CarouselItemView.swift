//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 09/04/24.
//

import SwiftUI

struct CarouselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image).resizable().scaledToFit().cornerRadius(10)
    }
}

struct CorouselItemView_Previews : PreviewProvider {
    static var previews: some View {
        CarouselItemView(order:OrderType(id: 1, name: "", image: "barbecue-banner"))
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
