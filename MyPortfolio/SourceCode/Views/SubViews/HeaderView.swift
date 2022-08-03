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
    @State private var isProfileExpanded = true
    @Namespace private var profileAnimation
    @Namespace private var pImage
    @Namespace private var pName
    @Namespace private var pJob


    var body: some View {
        VStack{
            if isProfileExpanded{
                expandedProfileView
            }else{
                collapseProfileView
            }
        }
    }
    
    var collapseProfileView: some View{
        HStack{
            profileImage.matchedGeometryEffect(id: pImage, in: profileAnimation).frame(width: 60, height: 60)
                .padding(.all,2)
                .background(Circle()
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.3), radius: 2, x: 2, y: 2)
                            )
            VStack(alignment: .leading){
                Text(appModel.portfolio.name).font(.title).bold()
                    .matchedGeometryEffect(id: pName, in: profileAnimation)
                
                Text(appModel.portfolio.role).foregroundColor(.secondary)
                    .matchedGeometryEffect(id: pJob, in: profileAnimation)
            }
            Spacer()
        }
        .padding()
    }
    
    var expandedProfileView: some View{
        VStack{
            HStack {
                Spacer()
                profileImage.matchedGeometryEffect(id: pImage, in: profileAnimation).frame(width: 200, height: 200)
                    .padding(.all,8)
                    .background(Circle()
                    .fill(Color.white)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 8, y: 8)
                                )
                Spacer()
            }
            Text(appModel.portfolio.name)
                .font(.title).bold()
                .padding(.top,8)
                .matchedGeometryEffect(id: pName, in: profileAnimation)
            
            Text(appModel.portfolio.role)
                .opacity(0.85)
                .padding(.top,-2).matchedGeometryEffect(id: pJob, in: profileAnimation)
            
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
    
    var profileImage: some View{
        Image("anand")
            .resizable()
            .clipShape(Circle())
            
            .onTapGesture {
                withAnimation(.spring()){
                    isProfileExpanded.toggle()
                }
            }
        
    }
    
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel:AppModel())
    }
}
