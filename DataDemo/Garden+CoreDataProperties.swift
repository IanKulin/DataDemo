//
//  Garden+CoreDataProperties.swift
//  DataDemo
//
//  Created by Ian Bailey on 19/11/2022.
//
//

import Foundation
import CoreData


extension Garden {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Garden> {
        return NSFetchRequest<Garden>(entityName: "Garden")
    }

    @NSManaged public var address: String?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var plant: NSSet?
    
    var wrappedName: String {
        name ?? "Unknown"
    }
    var wrappedAddress: String {
        address ?? "Unknown"
    }

}

// MARK: Generated accessors for plant
extension Garden {

    @objc(addPlantObject:)
    @NSManaged public func addToPlant(_ value: Plant)

    @objc(removePlantObject:)
    @NSManaged public func removeFromPlant(_ value: Plant)

    @objc(addPlant:)
    @NSManaged public func addToPlant(_ values: NSSet)

    @objc(removePlant:)
    @NSManaged public func removeFromPlant(_ values: NSSet)

}

extension Garden : Identifiable {

}
