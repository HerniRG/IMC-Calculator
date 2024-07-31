//
//  InformationViewResult.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 31/7/24.
//

import SwiftUI

struct InformationViewResult: View {
    let userWeight: Double
    let userHeight: Double
    let userAge: Int
    let userGender: Int
    
    var body: some View {
        let information = getIMCResult(result: calculateIMC(weight: userWeight, height: userHeight))
        
        VStack{
            Spacer()
            Text("Cálculo realizado para").font(.title2).bold().foregroundColor(.white).padding(.horizontal, 8)
            Text("\(getGender(gender: userGender)) de \(userAge) años.").font(.title2).bold().foregroundColor(.white).padding(.horizontal, 8)
            Spacer()
            Text("\(information.0)").foregroundColor(information.2).font(.title).bold()
            Spacer()
            Text("\(calculateIMC(weight: userWeight, height: userHeight), specifier: "%.2f")").font(.system(size:80)).bold().foregroundColor(.white)
            Spacer()
            Text("\(information.1)").font(.title2).bold().foregroundColor(.white).padding(.horizontal, 8)
            Spacer()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent).cornerRadius(16).padding(16)
    }
}

func calculateIMC(weight: Double, height: Double) -> Double{
    let result = weight / pow((height / 100), 2)
    return result
}

func getGender(gender: Int) -> String{
    if gender == 0{
        return "hombre"
    }else{
        return "mujer"
    }
}

func getIMCResult(result: Double) -> (String, String, Color){
    let title: String
    let description: String
    let color: Color
    switch result {
    case 0.00..<20:
        title = "Peso Bajo"
        description = "Estás por debajo del peso recomendado según el IMC."
        color = Color.yellow
    case 20.00..<25:
        title = "Peso Normal"
        description = "Estás dentro del rango de peso recomendado según el IMC."
        color = Color.green
    case 25.00..<30:
        title = "Sobrepeso"
        description = "Estás por encima del peso recomendado según el IMC."
        color = Color.orange
    case 30.00..<100:
        title = "Obesidad"
        description = "Estás muy por encima del peso recomendado según el IMC."
        color = Color.red
    default:
        title = "ERROR"
        description = "Ha ocurrido un error"
        color = Color.gray
    }
    return (title, description, color)
}

#Preview {
    InformationViewResult(userWeight: 80, userHeight: 190, userAge: 19, userGender: 0)
}
