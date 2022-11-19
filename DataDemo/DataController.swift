//
//  DataController.swift
//  DataDemo
//
//  Created by Ian Bailey on 19/11/2022.
//

import CoreData
import Foundation


class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "DataDemo")

    init() {
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }

    deinit {
    }

}
