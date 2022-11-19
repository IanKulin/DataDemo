//
//  DetailView.swift
//  DataDemo
//
//  Created by Ian Bailey on 19/11/2022.
//

import SwiftUI

struct DetailView: View {
    var garden: Garden
    
    var body: some View {
        VStack {
            Text(garden.name)
                .font(.headline)
            Text(garden.address)
            List {
                ForEach(garden.plants, id: \.id) {plant in
                    Text(plant.name)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(garden: Garden(id:UUID(), name: "Some Garden", address: "Some address", plants: []))
    }
}
