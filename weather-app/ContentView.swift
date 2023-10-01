//
//  ContentView.swift
//  weather-app
//
//  Created by Hamza Ahmad on 01/10/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var cloudIcon = "cloud.sun.fill";
    var sunIcon = "sun.max.fill"

    var body: some View {
        ZStack(content: {
            LinearGradient(
                gradient: Gradient(colors: [Color.indigo, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing
            ).edgesIgnoringSafeArea(.all)
            VStack(content: {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .rounded))
                    .foregroundColor(.white)
                    .padding(20)
                VStack(content: {
                    Image(systemName: cloudIcon)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame( width: 180, height: 180 )
                    Text("76°").font(.system(size: 70, weight: .bold))
                })
                Spacer()
                
            })
        })
    }

    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
