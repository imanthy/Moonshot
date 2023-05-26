//
//  ContentView.swift
//  Moonshot
//
//  Created by Anthy Chen on 5/24/23.
//

import SwiftUI

struct ContentView: View {
    let astronaut = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        VStack {
            Text("\(astronaut.count)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
