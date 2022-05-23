//
//  SkillHeaderView.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import SwiftUI

struct SkillHeaderView: View {
    
    // MARK: Variables
    var  skills :[Skill]
    var width :CGFloat
    
    @State var showSkills = true
    
    // MARK: Views
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack(spacing:16){
                Text("Skills")
                    .font(.system(size: 21, weight: .medium))
                    .opacity(0.9)
                Button{
                    withAnimation(.easeInOut(duration: 0.35)){
                    showSkills.toggle()
                    }
                
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(.plain)
            }
            if(showSkills){
            LazyVGrid(columns: [GridItem(),GridItem(),GridItem()],alignment: .leading, spacing: 12) {
                ForEach(skills){ skill in
                    SkillView(skill: skill,width:width / 3 - 15 )
                    
                }
            }.padding(.top,35)
        }
        }
    }
}

struct SkillHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            SkillHeaderView(skills: AppModel().portfolio.skills, width: 400).padding(24)
        }
    }
}
