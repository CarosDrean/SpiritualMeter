//
//  ContentView.swift
//  SpiritualMeter
//
//  Created by Oscar Salcedo Lopez on 13/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection){
            HomeView()
                .tabItem{
                    Label("Inicio", systemImage: selection == 0 ? "house.fill" : "house").environment(\.symbolVariants, .none)
                }.tag(0)
            RegisterView()
                .tabItem{
                    Label("Registros", systemImage: selection == 1 ? "tray.fill" : "tray").environment(\.symbolVariants, .none)
                }.tag(1)
            SettingView()
                .tabItem{
                    Label("Configuracion", systemImage: "gear").environment(\.symbolVariants, .none)
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
            .previewInterfaceOrientation(.portrait)
    }
}
