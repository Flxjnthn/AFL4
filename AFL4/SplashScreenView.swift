//
//  SplashScreenView.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.5
    @State private var opacity = 0.8
    var body: some View {
        if isActive {
            ContentView()
        }else{
            VStack{
                VStack{
                    Image("Windrise")
                        .resizable()
                        .frame(width: 200, height:200)
                        .font(.system(size: 80))
                        .foregroundColor(.red)
                    Text("WindRise")
                        .font(Font.custom("Baskerville-bold", size: 30))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 10
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
        
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
            .environment(\.sizeCategory, .small)
    }
}
