//
//  ContentView.swift
//  DataDemo
//
//  Created by Ian Bailey on 18/11/2022.
//

import SwiftUI


struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: [
        SortDescriptor(\.name)
    ]) var gardens: FetchedResults<Garden>
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(gardens, id: \.id) {garden in
                        NavigationLink {
                            DetailView(garden: garden)
                        } label: {
                            HStack {
                                Text(garden.wrappedName)
                                Spacer()
                                Text(garden.wrappedAddress)
                            }
                        }
                    }
                }
                Button("Sample Data") {
                    let garden1 = Garden(context: moc)
                    garden1.name = "White Lodge"
                    garden1.address = "72 Anderson Street \nRothwell QLD 4022"
                    // someGarden.plants.append(Plant(name:"Rose"))
                    // someGarden.plants.append(Plant(name:"Palm Tree"))
                    // someGarden.plants.append(Plant(name:"Lawn"))
                    let garden2 = Garden(context: moc)
                    garden2.id = UUID()
                    garden2.name = "Gordon Terrace"
                    garden2.address = "95 Learmouth St\nTahara Vic 3301"
                    let garden3 = Garden(context: moc)
                    garden3.id = UUID()
                    garden3.name = "Powlett Cottage"
                    garden3.address = "11 Bayfield Street\nWhite Beach 7184"
                    let garden4 = Garden(context: moc)
                    garden4.id = UUID()
                    garden4.name = "Adams Garden"
                    garden4.address = "71 Swanston St\nKanya Vic 3381"
                    
                    //try? moc.save()
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
