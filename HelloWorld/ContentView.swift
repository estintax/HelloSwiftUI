//
//  ContentView.swift
//  HelloWorld
//
//  Created by Максим Пинигин on 12.01.2022.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            /*Image("testpic")
                .resizable()
                .scaledToFit()*/

            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)

            Text(location.city)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding()
            
            Text("Круто, да?")
                .font(.title3)
                .bold()
                .padding(.bottom)
            
            Text(location.moreText)
                .padding()
        }
        .navigationTitle("Обзор")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
