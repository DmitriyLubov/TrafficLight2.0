//
//  ButtonLabelView.swift
//  TrafficLight
//
//  Created by Дмитрий Лубов on 22.04.2023.
//

import SwiftUI

struct ButtonLabelView: View {
    var text: String
    
    private let roundedRectangle = RoundedRectangle(cornerRadius: 20)
    private let color = Color(UIColor.label)
    
    var body: some View {
        ZStack {
            roundedRectangle
                .foregroundColor(.accentColor)
                .frame(width: 200, height: 70)
                .overlay(roundedRectangle.stroke(color, lineWidth: 4))

            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(color)
        }
    }
}

struct ButtonLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabelView(text: "START")
    }
}
