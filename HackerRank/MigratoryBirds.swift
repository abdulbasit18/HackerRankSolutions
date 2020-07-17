//
//  MigratoryBirds.swift
//  HackerRank
//
//  Created by Abdul Basit on 16/07/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

/*
 
 You have been asked to help study the population of birds migrating across the continent. Each type of bird you are interested in will be identified by an integer value. Each time a particular kind of bird is spotted, its id number will be added to your array of sightings. You would like to be able to find out which type of bird is most common given a list of sightings. Your task is to print the type number of that bird and if two or more types of birds are equally common, choose the type with the smallest ID number.
 
 For example, assume your bird sightings are of types arr = [1,1,2,2,4]. There are two each of types 1 and 2, and one sighting of type 3. Pick the lower of the two types seen twice: type 1.
 
 */

import Foundation

class MigratoryBirds {
    
    // Complete the migratoryBirds function below.
    func migratoryBirds(arr: [Int]) -> Int {
        
        var maxSightedCount = 0
        
        var groupSighting = Dictionary(grouping: arr, by: {$0})
            .sorted(by: {$0.value.count > $01.value.count})
        
        let maxCount = groupSighting.first?.value.count

        groupSighting.removeAll(where: {$0.value.count != maxCount})

        maxSightedCount = groupSighting
            .sorted(by: {arr.index(of: $0.key)! < arr.index(of: $1.key)!})
            .first?.key ?? 0
        
        return maxSightedCount
        
    }
}
