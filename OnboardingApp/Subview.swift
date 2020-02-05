//
//  Subview.swift
//  OnboardingApp
//
//  Created by Grant Rudow on 2/3/20.
//  Copyright © 2020 Grant Rudow. All rights reserved.
//

import SwiftUI

struct Subview: View {
    
    var imageString: String
    
    var body: some View {
        
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "meditating")
    }
}
