//
//  ExperienceView.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import SwiftUI

struct ExperienceViews: View {
    
    // MARK: variable
    var experiences: [Experience]
    @State var showExperience = true
    
    // MARK: views
    var body: some View {
        VStack(alignment:.leading, spacing: 24){
            HStack(spacing: 10) {
                Image(systemName: "shareplay").font(.title3)
                Text("Experience")
                    .font(.system(size: 21))
                    .opacity(0.9)
                
                Button{
                    withAnimation(.easeInOut(duration:0.35)){
                        showExperience.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperience ? .zero : .degrees(180))
                }.buttonStyle(.plain)
            }.padding(.bottom,14)
            
            if(showExperience){
                ForEach(experiences){ experience in
                    ExperienceView(experience: experience)
                }
            }
        }
    }
}

struct ExperienceViews_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            ExperienceViews(experiences: AppModel().portfolio.experiences)
        }
    }
}
