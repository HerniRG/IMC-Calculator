//
//  CounterButton.swift
//  IMC Calculator
//
//  Created by Hernán Rodríguez on 30/7/24.
//

import SwiftUI

struct CounterButton: View {
    @Binding var counter: Int
    var text: String
    
    var body: some View {
        VStack{
            TitleText(text: text).padding(.top)
            InformationText(text: String(counter))
            HStack{
                Button(action: {
                    if (counter > 0){
                        counter -= 1
                    }
                }) {
                    ZStack{
                        Circle().frame(maxWidth: .infinity).foregroundColor(.blue).padding(10)
                        Image(systemName: "minus").resizable().scaledToFit().frame(maxWidth: 25).foregroundColor(.white)
                    }
                }
                Button(action: {
                    counter += 1
                }) {
                    ZStack{
                        Circle().frame(maxWidth: .infinity).foregroundColor(.blue).padding(10)
                        Image(systemName: "plus").resizable().scaledToFit().frame(maxWidth: 25).foregroundColor(.white)
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color.backgroundComponent)
    }
}
