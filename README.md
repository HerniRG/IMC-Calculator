
# IMC Calculator

IMC Calculator es una aplicación para calcular el Índice de Masa Corporal (IMC). Esta aplicación permite a los usuarios seleccionar su género, ingresar su altura, peso y edad para calcular su IMC. La aplicación está desarrollada utilizando SwiftUI.

## Características

- **Selección de Género:** Permite seleccionar entre hombre y mujer.
- **Altura:** Utiliza un deslizador para seleccionar la altura en centímetros.
- **Edad y Peso:** Botones incrementadores y decrementadores para ajustar la edad y el peso.
- **Cálculo del IMC:** Botón para calcular el IMC basado en los datos ingresados.
- **Resultado:** Muestra el resultado del IMC en una vista separada.

## Estructura del Proyecto

El proyecto está compuesto por los siguientes archivos principales:

### ContentView.swift

Este archivo contiene la vista principal de la aplicación donde el usuario ingresa sus datos.

```swift
import SwiftUI

struct IMCView: View {
    
    @State var gender: Int = 0
    @State var height: Double = 170
    @State var counterAge: Int = 25
    @State var counterWeight: Int = 70
    
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    ToggleButton(text: "Hombre", imageName: "hombre", gender: 0, selectedGender: $gender)
                    ToggleButton(text: "Mujer", imageName: "mujer", gender: 1, selectedGender: $gender)
                }
                HeightCalculator(selectedHeight: $height)
                HStack {
                    CounterButton(counter: $counterAge, text: "Edad")
                    CounterButton(counter: $counterWeight, text: "Peso")
                }
                IMCCalculateButton(userWeight: Double(counterWeight), userHeight: height, userAge: counterAge, userGender: gender)
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
```

### IMCResult.swift

Este archivo contiene la vista que muestra el resultado del cálculo del IMC.

```swift
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
```

## Componentes

- **ToggleButton:** Botón personalizado para seleccionar el género.
- **HeightCalculator:** Componente para seleccionar la altura.
- **CounterButton:** Botones incrementadores y decrementadores para ajustar la edad y el peso.
- **IMCCalculateButton:** Botón para realizar el cálculo del IMC.
- **InformationViewResult:** Vista que muestra la información detallada del resultado del IMC.

## Instalación

1. Clona el repositorio:
   ```sh
   git clone https://github.com/HerniRG/IMC-Calculator.git
   ```
2. Abre el proyecto en Xcode.
3. Compila y ejecuta la aplicación en un simulador o dispositivo físico.

## Contacto

Hernán Rodríguez - [hernanrg85@gmail.com](mailto:hernanrg85@gmail.com)

¡Gracias por usar IMC Calculator!

---
