//
//  ArtifactsView.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct ArtifactsView: View {
    
    var img = ""
    var body: some View{
        NavigationView{

                ZStack{
                    Color.white
                    VStack{
                        List{
                        
                            ArtifactsRow(title: "Adventurer")
                        }
                        
                        
                        
                    }
                        
                }
            
            .navigationTitle("Artifacts")

    }
}
    
}


struct ArtifactsRow: View {
    let title: String
    
    var body: some View{
        Label(
            title: { Text(title) },
            icon: { Image("adventurer")
                    .resizable()
                    .frame(width: 60, height: 60)}
                
            
        )
    }
}


struct ArtifactsView_Previews: PreviewProvider {
    static var previews: some View {
        ArtifactsView()
    }
}
