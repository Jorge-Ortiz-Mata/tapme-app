//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Jorge on 10/01/24.
//

import SwiftUI

struct CustomButtonView: View {
    var textBtn: String
    var color: Color
    
    var body: some View {
        Text(textBtn)
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(color)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
    }
}

#Preview {
    CustomButtonView(textBtn: "Tap me", color: .green)
}
