//
//  AboutView.swift
//  HelloWorld
//
//  Created by Максим Пинигин on 21.01.2022.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            Text("Новокузнецк Инфо")
                .font(.title)
                .bold()
            Text("Создал М. Пинигин, пока учился создавать приложения для iOS")
                .multilineTextAlignment(.center)
                .padding()
            Text("(c) 2022. Сделано в Новокузнецке")
                .shadow(color: Color.green, radius: 0.5)
                .multilineTextAlignment(.center)
            Button("Мой веб-сайт", action: {
                if let url = URL(string: "https://pinig.in") {
                    UIApplication.shared.open(url)
                }
            })
                .padding()
                .font(.title3)
        }
        .navigationTitle("О программе")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
