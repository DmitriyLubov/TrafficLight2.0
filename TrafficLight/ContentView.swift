//
//  ContentView.swift
//  TrafficLight
//
//  Created by Дмитрий Лубов on 22.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redCircle = CircleView(color: .red, opacity: 0.3)
    @State private var yellowCircle = CircleView(color: .yellow, opacity: 0.3)
    @State private var greenCircle = CircleView(color: .green, opacity: 0.3)
    
    @State private var buttonLabel = ButtonLabelView(text: "START")
    
    @State private var currentLight = ColorLight.red
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    var body: some View {
        VStack(spacing: 16) {
            redCircle
            yellowCircle
            greenCircle
            
            Spacer()
            
            Button(action: startButtonTapped) {
                buttonLabel
            }
        }
        .padding()
    }
    
    private func startButtonTapped() {
        if buttonLabel.text == "START" {
            buttonLabel.text = "NEXT"
        }
        
        switch currentLight {
        case .red:
            redCircle.opacity = lightIsOn
            greenCircle.opacity = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowCircle.opacity = lightIsOn
            redCircle.opacity = lightIsOff
            currentLight = .green
        case .green:
            greenCircle.opacity = lightIsOn
            yellowCircle.opacity = lightIsOff
            currentLight = .red
        }
    }
}

private extension ContentView {
    enum ColorLight {
        case red
        case yellow
        case green
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
