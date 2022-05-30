//
//  HomeView.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct domainRow : View {
    var img = ""
    var body: some View{
        VStack{
        
        Image("background")
        }.frame(width: 150, height: 130)
            .cornerRadius(30)
            .shadow(radius: 20)
    }
}

struct characterToday: View {
    let title: String
    
    var body: some View{
        Label(
            title: { Text(title) },
            icon: { Image("ZhongLi")
                    .resizable()
                    .background(.yellow)
                    .cornerRadius(30)
                    .frame(width: 50, height: 50)}
            
                
            
        )
    }
}

struct HomeView: View {
    var body: some View {
        
        
        HStack {
            NavigationView{
                ZStack{
                    Image("background")
                        
                    VStack{
                        Text("Current Banner")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .padding(.top)
                        Image("currentBanner")
                            .resizable()
                            .frame(width:400, height: 180, alignment: .top)
                            .cornerRadius(20)
                            .navigationTitle("Home")
                    }
                    
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
