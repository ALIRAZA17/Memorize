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
    @State var isFaceUp = false
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack{
            if isFaceUp{
                base
            }
            else{
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("🤣")
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
#Preview {
    ContentView()
}
