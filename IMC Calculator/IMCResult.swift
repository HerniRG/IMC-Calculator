//
//  IMCResult.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 30/7/24.
//

import SwiftUI

struct IMCResult: View {
    let userWeight: Double
    let userHeight: Double
    let userAge: Int
    let userGender: Int
    var body: some View {
        VStack{
            Text("Tu Resultado").font(.title).bold().foregroundColor(.white)
            InformationViewResult(userWeight: userWeight, userHeight: userHeight, userAge: userAge, userGender: userGender)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundApp)
    }
}



#Preview {
    IMCResult(userWeight: 80, userHeight: 190, userAge: 19, userGender: 0)
}
