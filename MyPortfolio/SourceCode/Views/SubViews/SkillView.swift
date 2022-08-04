//
//  SkillView.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import SwiftUI

struct SkillView: View {
    
    // MARK: - Variable
    var skill :Skill
    var width :CGFloat = 120
    var body: some View {
        VStack{
            Image(skill.image)
                .aspectRatio(contentMode: .fill)
                     .frame(width: 30, height: 30, alignment: .center)
                
            Text(skill.skillName)
                .font(.system(size: 16,weight: .medium))
                .fixedSize(horizontal: true, vertical: false)
                .padding(10)
                
            RatingView(rating: skill.rating)
        }
        .padding()
        .frame(width:width,height: width)
        .background(RoundedRectangle(cornerRadius: 12)
        .opacity(0.075)
            )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[0])
    }
}


