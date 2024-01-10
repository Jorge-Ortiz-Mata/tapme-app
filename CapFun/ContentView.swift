//
//  ContentView.swift
//  CapFun
//
//  Created by Jorge on 10/01/24.
//

import SwiftUI

struct ContentView: View {
    @State var inputValue: String = ""
    @State var textTapped: String = "--"
    @State var textTappedColor: Color = .black
    private let pastboard = UIPasteboard.general
    
    var body: some View {
        VStack {
            Text(inputValue)
                .bold()
                .font(.title)
            TextField("Maria Perez e.g.", text: $inputValue)
            
            VStack {
                Button(action: {
                    pastboard.string = inputValue
                }) {
                    CustomButtonView(textBtn: "Copy", color: Color.orange)
                }
            }
            HStack {
                Button(action: {
                    textTapped = "Red"
                    textTappedColor = .red
                }) {
                    CustomButtonView(textBtn: "Tap me 01", color: .red)
                }
                Button(action: {
                    textTapped = "Green"
                    textTappedColor = .green
                }) {
                    CustomButtonView(textBtn: "Tap me 02", color: .green)
                }
                Button(action: {
                    textTapped = "Blue"
                    textTappedColor = .blue
                }) {
                    CustomButtonView(textBtn: "Tap me 03", color: .blue)
                }
            }
            Text(textTapped)
                .bold()
                .foregroundColor(textTappedColor)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
