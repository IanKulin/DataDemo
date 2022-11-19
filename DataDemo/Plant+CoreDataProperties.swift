//
//  Plant+CoreDataProperties.swift
//  DataDemo
//
//  Created by Ian Bailey on 19/11/2022.
//
//

import Foundation
import CoreData


extension Plant {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Plant> {
        return NSFetchRequest<Plant>(entityName: "Plant")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var garden: Garden?
    
    var wrappedName: String {
        name ?? "Unknown"
    }

}

extension Plant : Identifiable {

}
