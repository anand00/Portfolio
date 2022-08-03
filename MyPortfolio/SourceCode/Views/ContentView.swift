//
//  ContentView.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import SwiftUI

struct PortfolioView: View {
    
    // MARK:  Variables
    var appModel: AppModel = AppModel()
    var isScrolledUp:Bool = false
    
    // MARK:  Views
    
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground).ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment:.leading){
                   
                       
                    HeaderView(appModel: appModel)
                    
                    SkillHeaderView(skills: appModel.portfolio.skills,width: UIScreen.main.bounds.width )
                        .padding(.top, 32)
                    
                    ExperienceViews(experiences: appModel.portfolio.experiences)
                        .padding(.top, 42)
                }.padding(24)
            }
        }
    }
    
    
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}


