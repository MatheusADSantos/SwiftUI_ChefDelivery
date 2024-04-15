//
//  HomeView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 15/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var isAnimation = false
    
    var body: some View {
        VStack {
            Text("Chef Delivey")
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .foregroundColor(Color("ColorRed"))
                .opacity(isAnimation ? 1 : 0)
                .offset(y: isAnimation ? 0 : -40)
            
            Text("Peça suas comidas no conforto de sua casa.")
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.black.opacity(0.7))
                .opacity(isAnimation ? 1 : 0)
                .offset(y: isAnimation ? 0 : -40)
            
            Spacer()
        }
        
        
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5)) {
                isAnimation = true
            }
        }
    }
}

struct HomeView_Preview : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
