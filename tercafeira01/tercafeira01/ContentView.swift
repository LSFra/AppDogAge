//
//  ContentView.swift
//  tercafeira01
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.blue, Color.white],
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @State private var dogage = ""
    @State private var humanage = ""
    @State private var idadehumana = ""
    @State private var showAlert = false
    
    func calcularidade() {
        if let idadeHumana = Int(humanage) {
            self.dogage = "A idade canina correspondente é: \(idadeHumana * 7) anos"
        } else {
            self.dogage = "Por favor, insira um número válido."
        }
        showAlert = true
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculadora de Idade Canina!")
            
            TextField("Digite a idade humana:",text: $humanage).textFieldStyle(.roundedBorder)
                .background(Color.black)
            
            Button(action: calcularidade){
                Text("Enviar")
            }
        }
        
        
        .padding()
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Resultado"),
                message: Text(" \(dogage)"),
                dismissButton: .default(Text("OK"))
            )
        }
    }

    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
            
    }
    
}
