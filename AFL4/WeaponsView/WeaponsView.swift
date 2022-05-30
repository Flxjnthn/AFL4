//
//  WeaponsView.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

private let weaponList: [WeaponItem] = [
    WeaponItem(
        image:"Staffofhoma",
        name:"Staff Of Homa",
        status:"Available"
    )
]

struct WeaponItem: Identifiable{
    let id = UUID()
    let image: String
    let name: String
    let status: String
}

struct WeaponsView: View {
    var body: some View {
        NavigationView{
            
            
                List(weaponList) { WeaponItem in
                    HStack {
                        
                        ZStack{
                            
                            Image(WeaponItem.image)
                                .resizable()
                                    .shadow(radius: 10)
                                    .font(.largeTitle)
                                    .frame(width: 100, height: 100)
                                    .overlay(Rectangle().stroke(Color.purple, lineWidth: 2))
                        }
                        Text(WeaponItem.name)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        Text(WeaponItem.status)
                            .font(.body)
                            .multilineTextAlignment(.trailing)
                        }
                }
                
                
                
        }
        .padding()
            
            .navigationTitle("Weapons")
            
        }
    }

struct WeaponsView_Previews: PreviewProvider {
    static var previews: some View {
        WeaponsView()
    }
}
