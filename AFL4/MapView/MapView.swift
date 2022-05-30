//
//  MapView.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI


struct MapView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("background")
                    
            }
            .navigationTitle("Map")
            
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
