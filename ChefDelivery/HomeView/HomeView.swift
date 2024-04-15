//
//  HomeView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 15/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var isAnimating = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                
                Circle()
                    .foregroundColor(Color("ColorRed"))
                    .frame(width: isAnimating ? 200 : 0)
                    .position(x: isAnimating ? 50 : -50, y: isAnimating ? 100 : -100)
                    .blur(radius: 60)
                    .opacity(isAnimating ? 0.5 : 0)
                
                Circle()
                    .foregroundColor(Color("ColorRedDark"))
                    .frame(width: isAnimating ? 200 : 0)
                    .position(
                        x: isAnimating ? geometry.size.width - 50 : geometry.size.width + 50,
                        y: isAnimating ? geometry.size.height - 50 : geometry.size.height + 50
                    )
                    .blur(radius: 60)
                    .opacity(isAnimating ? 0.5 : 0)
                
                Image("image")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 60)
                    .padding(32)
                    .gesture(
                        DragGesture()
                            .onChanged({ gesture in
                                print(gesture.translation)
                            })
                            .onEnded({ _ in
                                print("A interação acabou")
                            })
                    )
                
                VStack {
                    Text("Chef Delivey")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(Color("ColorRed"))
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -40)
                    
                    Text("Peça suas comidas no conforto de sua casa.")
                        .font(.title2)
                        .padding()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black.opacity(0.7))
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -40)
                    
                    Spacer()
                }
                
                
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.5)) {
                        isAnimating = true
                    }
                }
            }
        }
    }
}

struct HomeView_Preview : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
