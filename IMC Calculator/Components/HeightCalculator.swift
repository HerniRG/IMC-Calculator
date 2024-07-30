//
//  HeightCalculator.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 30/7/24.
//

import SwiftUI

struct HeightCalculator: View {
    @Binding var selectedHeight: Double
    
    var body: some View {
        VStack{
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100...240, step: 1).accentColor(.blue).padding(.horizontal, 16)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.backgroundComponent)
    }
}
