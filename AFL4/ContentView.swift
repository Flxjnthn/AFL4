//
//  ContentView.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "home")
                    Text("Home")
                        
                }
            CharactersView()
                .tabItem{
                    Image(systemName: "character")
                    Text("Characters")
                        
                    
                }
            WeaponsView()
                .tabItem{
                    Image(systemName: "weapon")
                    Text("Weapons")
                    
                }
            ArtifactsView()
                .tabItem{
                    Image(systemName: "artifact")
                    Text("Artifacts")
                    
                }
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                    
                }
//            ProfileView()
//                .tabItem{
//                    Image(systemName: "profile")
//                    Text("Profile")
//                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

