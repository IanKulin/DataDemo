//
//  ContentView.swift
//  DataDemo
//
//  Created by Ian Bailey on 18/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    
                }
                Button("Sample Data") {
                    // add sample data
                }
            }
            .navigationTitle("Data Demo")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
