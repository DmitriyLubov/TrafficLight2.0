//
//  CircleView.swift
//  TrafficLight
//
//  Created by Дмитрий Лубов on 22.04.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    var opacity: CGFloat
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150)
            .overlay(Circle().stroke(lineWidth: 4))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .green, opacity: 1)
    }
}
