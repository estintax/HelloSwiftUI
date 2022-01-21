//
//  HelloWorldApp.swift
//  HelloWorld
//
//  Created by Максим Пинигин on 12.01.2022.
//

import SwiftUI

@main
struct HelloWorldApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Обзор")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "map.circle.fill")
                    Text("Районы")
                }
                
                NavigationView {
                    AboutView()
                }
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("О программе")
                }
            }
            .environmentObject(locations)
        }
    }
}
