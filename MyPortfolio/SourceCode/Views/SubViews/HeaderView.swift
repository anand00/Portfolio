//
//  HeaderView.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 23/05/22.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: Variables
    var appModel:AppModel
    
    
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Image("anand")
                    .resizable()
                    .frame(width:100,height: 100 )
                    .clipShape(Circle())
                               .shadow(radius: 10)
                           .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                Spacer()
            }
            Text(appModel.portfolio.name)
                .padding(.top,8)
            
            Text(appModel.portfolio.role)
                .opacity(0.85)
                .padding(.top,-2)
            
            HStack{
                Image(systemName: "location.fill")
                    .font(.system(size: 18,weight: .semibold))
                
                Text(appModel.portfolio.location)
                    .font(.system(size: 17))
            }
            .padding(.top,10)
            .opacity(0.50)
            Text(appModel.portfolio.description)
                .font(.system(size: 16))
                .opacity(0.7)
                .padding(.top,24)
                .lineSpacing(10)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel:AppModel())
    }
}
