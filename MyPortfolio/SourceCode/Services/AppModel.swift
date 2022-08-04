//
//  AppModel.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import Foundation

class AppModel:ObservableObject{
    var portfolio:Portfolio = Portfolio(name: "Anand Prakash", role: "  Team Lead",team: "Mobile App Development", description: "A passionate app developer for Apple and Android eco-system.Also an UI/UX enthusiast.Love new technologies.", location: "Hyderabad, Telangana, India", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS", image: "apple",rating: 4),
        Skill(id: UUID().uuidString, skillName: "Swift", image: "swift",rating: 4),
        Skill(id: UUID().uuidString, skillName: "SwiftUI", image: "swiftui",rating: 4),
        Skill(id: UUID().uuidString, skillName: "WatchOS", image: "watchos",rating: 4),
        Skill(id: UUID().uuidString, skillName: "Ionic", image: "ionic",rating: 3),
        Skill(id: UUID().uuidString, skillName: "Android", image: "android",rating: 3),
        Skill(id: UUID().uuidString, skillName: "React Native", image: "reactnative",rating: 4),
        Skill(id: UUID().uuidString, skillName: "Flutter", image: "flutter",rating: 4),
        Skill(id: UUID().uuidString, skillName: "UI/UX", image: "uiux",rating: 4)], experiences:[
            Experience(id: UUID().uuidString, companyName: "Osmosys Software Solutions", role: "Team Lead", duration: "May 2019 - Present",color: .red),
            Experience(id: UUID().uuidString, companyName: "Kliento Technologies", role: "Sr. Softwarre Engineer", duration: "November 2017 - May 2022",color: .yellow),
            Experience(id: UUID().uuidString, companyName: "Kleward Consulting Pvt Ltd", role: "Software Engineer", duration: "March 2015 - Novemebr 2017",color: .green)],
                                        shortDescription: [ShortDescription(id: UUID().uuidString, title: "Experience", value: "7.5", valueLabel: "Years"),
                                                           ShortDescription(id: UUID().uuidString,title: "Projects", value: "20+", valueLabel: "Apps"),
                                                           ShortDescription(id: UUID().uuidString,title: "Skills", value: "12+", valueLabel: "Dev & UI/UX"),
                                                           ShortDescription(id: UUID().uuidString,title: "Qualification", value: "B.Tech", valueLabel: "IT")
                                                          ]
    )
}
