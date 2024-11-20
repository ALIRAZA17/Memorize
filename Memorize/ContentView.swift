//
//  ContentView.swift
//  Memorize
//
//  Created by Muhammad Ali Raza Dar on 04/09/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣","🤣"]
    @State var cardCount = 3
    var body: some View {
        VStack{
            Cards
            Spacer()
            CardsAdjusterView
        }.padding()
            .imageScale(.large)
            .font(.largeTitle)
    }
    
    var Cards: some View{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]){
            ForEach(0..<cardCount, id: \.self){ index in
                CardView()
            }
        }.foregroundColor(.orange)
    }
    
    var CardsAdjusterView: some View{
        HStack{
            CardsAdjusterButton(by: -1, symbol: "rectangle.stack.fill.badge.minus")
            Spacer()
            CardsAdjusterButton(by: 1, symbol: "rectangle.stack.fill.badge.plus")
        }
    }
    
    func CardsAdjusterButton(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
        }, label: {
            Image(systemName: symbol)
        }).disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
}

struct CardView: View {
    @State var isFaceUp = true
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 16)
        ZStack{
            base.fill().opacity(isFaceUp ? 0 : 1)
            Group{
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("🤣")
            }.opacity(isFaceUp ? 1 : 0)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
#Preview {
    ContentView()
}
