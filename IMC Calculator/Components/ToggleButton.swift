//
//  ToggleButton.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 30/7/24.
//

import SwiftUI

struct ToggleButton: View {
    let text: String
    let imageName: String
    let gender: Int
    @Binding var selectedGender: Int

    var body: some View {
        let color = (gender == selectedGender) ? Color.backgroundComponentSelected : Color.backgroundComponent
        
        Button(action: {
            selectedGender = gender
        }){
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.white)
                InformationText(text: text)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(color)
        }
    }
}
