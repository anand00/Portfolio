//
//  AppModel.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import Foundation

class AppModel:ObservableObject{
    var portfolio:Portfolio = Portfolio(name: "Anand Prakash", role: "Team Lead", description: "A passionate app developer for Apple and Android eco-system.Also an UI/UX enthusiast.Love new technologies.", location: "Hyderabad, Telangana, India", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS", image: "apple"),
        Skill(id: UUID().uuidString, skillName: "Swift", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "SwiftUI", image: "swiftUI"),
        Skill(id: UUID().uuidString, skillName: "WatchOS", image: "applewatch"),
        Skill(id: UUID().uuidString, skillName: "Kotlin", image: "kotin"),
        Skill(id: UUID().uuidString, skillName: "Android", image: "android"),
        Skill(id: UUID().uuidString, skillName: "React Native", image: "rn"),
        Skill(id: UUID().uuidString, skillName: "Flutter", image: "flutter"),
        Skill(id: UUID().uuidString, skillName: "UI/UX", image: "flutter")], experiences:[
            Experience(id: UUID().uuidString, companyName: "Osmosys Software Solutions", role: "Team Lead", duration: "May 2019 - Present"),
            Experience(id: UUID().uuidString, companyName: "Kliento Technologies", role: "Sr. Softwarre Engineer", duration: "November 2017 - May 2022"),
            Experience(id: UUID().uuidString, companyName: "Kleward Consulting Pvt Ltd", role: "Software Engineer", duration: "March 2015 - Novemebr 2017")] )
}
