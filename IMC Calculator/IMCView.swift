//
//  ContentView.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 30/7/24.
//

import SwiftUI

struct IMCView: View {
    
    @State var gender: Int = 0
    @State var height: Double = 150
    @State var counterAge: Int = 18
    @State var counterWeight: Int = 70
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    ToggleButton(text: "Hombre", imageName: "star.fill", gender: 0, selectedGender: $gender)
                    ToggleButton(text: "Mujer", imageName: "heart.fill", gender: 1, selectedGender: $gender)
                }
                HeightCalculator(selectedHeight: $height)
                HStack {
                    CounterButton(counter: $counterAge, text: "Edad")
                    CounterButton(counter: $counterWeight, text: "Peso")
                }
                IMCCalculateButton()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.backgroundApp)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("IMC Calculator")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    IMCView()
}
