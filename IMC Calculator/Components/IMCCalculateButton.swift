//
//  IMCCalculateButton.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 30/7/24.
//

import SwiftUI

struct IMCCalculateButton: View {
    let userWeight: Double
    let userHeight: Double
    let userAge: Int
    let userGender: Int
    
    var body: some View {
        NavigationLink(destination: {
            IMCResult(userWeight: userWeight, userHeight: userHeight, userAge: userAge, userGender: userGender)
        }, label: {
            Text("Calcular").font(.title).bold().foregroundColor(.blue).frame(maxWidth: .infinity, maxHeight: 60).background(Color.backgroundComponent)
        })
    }
}

