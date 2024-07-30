//
//  IMCCalculateButton.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 30/7/24.
//

import SwiftUI

struct IMCCalculateButton: View {
    var body: some View {
        NavigationLink {
            
        } label: {
            Text("Calcular").font(.title).bold().foregroundColor(.blue).frame(maxWidth: .infinity, maxHeight: 60).background(Color.backgroundComponent)
        }
    }
}
