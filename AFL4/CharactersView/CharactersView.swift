//
//  CharactersView.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct Character: Identifiable{
    var id: Int
    
    let charactername, imageName: String
    
}



struct CharactersView: View {
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                VStack{
                    List{
                    
                        CharacterRow(title: "Zhongli")
                        CharacterRow(title: "Ayaka")
                        CharacterRow(title: "Yun Zhao")
                        CharacterRow(title: "Lisa")
                        CharacterRow(title: "Qiqi")
                        CharacterRow(title: "Yun Jin")
                    }
                    
                    
                    
                }
                    
            }
            .navigationTitle("Characters")
            
        }
    }
}

struct CharacterRow: View {
    let title: String
    
    var body: some View{
        Label(
            title: { Text(title) },
            icon: { Image("ZhongLi")
                    .resizable()
                    .frame(width: 60, height: 60)}
                
            
        )
    }
}
struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}

