//
//  ContentView.swift
//  Memorize
//
//  Created by Muhammad Ali Raza Dar on 04/09/2024.
//

import SwiftUI

struct ContentView: View {
    // some means look in their and see what it returns and then Behave like that
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }.foregroundColor(.orange)
            .padding()
    }
    
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        if isFaceUp {
            ZStack{
                RoundedRectangle(cornerRadius: 12)
            }
        }
        else
        {
            ZStack{
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("🤣")
            }
        }
        
    }
}
#Preview {
    ContentView()
}
