//
//  ContentView.swift
//  Boodoku
//
//  Created by Marc Widmer on 30.06.22.
//

import SwiftUI

struct NumberButton: View {
    let number: Int
    var body: some View {
        Button(action: {}) {
            Text("\(number)").font(.title)
        }
    }
}

struct Grid: View {
    var body: some View {
        Image("grid")
            .resizable()
            .padding(.all, 0.0/*@END_MENU_TOKEN@*/)
            .frame(width: /*@START_MENU_TOKEN@*/390.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/390.0/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Grid()
            HStack {
                ForEach((1...9), id: \.self) {num in
                    NumberButton(number: num)
                        .frame(maxWidth: .infinity)
                }
            }.padding(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
