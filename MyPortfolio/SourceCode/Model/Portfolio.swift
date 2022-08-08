//
//  Portfolio.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import Foundation
import SwiftUI

struct Skill:Identifiable{
    var id: String
    var skillName: String
    var image: String
    var rating: Int
    var relatedSkills:[String]
}

struct Experience:Identifiable{
    var id: String
    var companyName: String
    var role: String
    var duration: String
    var color:Color
}

struct ShortDescription:Identifiable{
    var id: String
    var title: String
    var value: String
    var valueLabel: String
}

struct Portfolio{
    var name: String
    var role: String
    var team: String
    var description: String
    var location: String
    var skills :[Skill]
    var experiences :[Experience]
    var shortDescription : [ShortDescription]
}


