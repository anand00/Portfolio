//
//  Portfolio.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import Foundation

struct Skill:Identifiable{
    var id: String
    var skillName: String
    var image: String
}

struct Experience:Identifiable{
    var id: String
    var companyName: String
    var role: String
    var duration: String
}

struct Portfolio{
    var name: String
    var role: String
    var description: String
    var location: String
    var skills :[Skill]
    var experiences :[Experience]
}
