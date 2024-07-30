//
//  TextComponents.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 30/7/24.
//

import SwiftUI

struct InformationText: View {
    let text: String
    var body: some View {
        Text(text).bold().font(.largeTitle).foregroundColor(.white)
    }
}

struct TitleText: View {
    let text: String
    var body: some View {
        Text(text).font(.title2).foregroundColor(.gray)
    }
}
