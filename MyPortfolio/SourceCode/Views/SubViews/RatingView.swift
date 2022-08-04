//
//  RatingView.swift
//  MyPortfolio
//
//  Created by Anand Praksh on 04/08/22.
//

import SwiftUI

struct RatingView: View {
     var rating:Int
    
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.orange
    
    
    
    var body: some View {
        HStack{
            ForEach(1..<maximumRating+1, id:\.self){
                number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor:onColor)
                    .font(.system(size: 8))

            }
        }
    }
    func image(for number:Int)-> Image{
        if number > rating {
            return offImage ?? onImage
        }else{
            return onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 4)
    }
}
