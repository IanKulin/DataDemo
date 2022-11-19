//
//  ContentView.swift
//  DataDemo
//
//  Created by Ian Bailey on 18/11/2022.
//

import SwiftUI


struct Plant {
    var id = UUID()
    var name: String
}


struct Garden {
    var id = UUID()
    var name = ""
    var address = ""
    var plants: [Plant] = []
}


struct ContentView: View {
    
    @State private var gardens: [Garden] = []
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(gardens, id: \.id) {garden in
                        NavigationLink {
                            DetailView(garden: garden)
                        } label: {
                            HStack {
                                Text(garden.name)
                                Spacer()
                                Text(garden.address)
                            }
                        }
                    }
                }
                Button("Sample Data") {
                    var someGarden = Garden()
                    someGarden.name = "White Lodge"
                    someGarden.address = "72 Anderson Street \nRothwell QLD 4022"
                    someGarden.plants.append(Plant(name:"Rose"))
                    someGarden.plants.append(Plant(name:"Palm Tree"))
                    someGarden.plants.append(Plant(name:"Lawn"))
                    gardens.append(someGarden)
                    someGarden.id = UUID()
                    someGarden.name = "Gordon Terrace"
                    someGarden.address = "95 Learmouth St\nTahara Vic 3301"
                    gardens.append(someGarden)
                    someGarden.id = UUID()
                    someGarden.name = "Powlett Cottage"
                    someGarden.address = "11 Bayfield Street\nWhite Beach 7184"
                    gardens.append(someGarden)
                    someGarden.id = UUID()
                    someGarden.name = "Adams Garden"
                    someGarden.address = "71 Swanston St\nKanya Vic 3381"
                    gardens.append(someGarden)
                }
            }
            .navigationTitle("Data Demo")
        }
    }
}


//func mutate(_ garden: Garden) {
//    garden.name = "Mutated"
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
