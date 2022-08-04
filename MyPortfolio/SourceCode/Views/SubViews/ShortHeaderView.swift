//
//  ShortHeaderView.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 03/08/22.
//

import SwiftUI

struct ShortHeaderView: View {
    var  shortDescData :[ShortDescription]
    var body: some View {
        VStack {
            Divider()
            ScrollView(.horizontal,showsIndicators: false) {
                HStack() {
                    
                    ForEach(0..<4) { index in
                        squareView(shortDesc: shortDescData[index])
                    }
                }.padding()
            }.frame(height: 80)
            Divider()
            
        }
    }
}

struct ShortHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ShortHeaderView(shortDescData: AppModel().portfolio.shortDescription)
    }
}

struct squareView: View {
    var shortDesc :ShortDescription
    var width :CGFloat = 110
    var height :CGFloat = 80
    var body: some View {
        HStack{
        VStack{
            
            Text(shortDesc.title)
                .font(.system(size: 12,weight: .semibold))
                .fixedSize(horizontal: true, vertical: false)
                .textCase(.uppercase)
            Text(shortDesc.value)
                .font(.system(size: 22,weight: .bold))
                .padding(5)
            Text(shortDesc.valueLabel)
                .font(.system(size: 10,weight: .regular))
                .textCase(.uppercase)
        }.padding()
            .frame(width:width,height: height)
            .background(RoundedRectangle(cornerRadius: 12)
                .opacity(0)
            ).foregroundColor(.secondary)
            
            RoundedRectangle(cornerRadius: 8)
                .frame(width:0.5,height: 50)
                .foregroundColor(.secondary)
        }
    }
}
