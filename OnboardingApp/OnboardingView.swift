//
//  OnboardingView.swift
//  OnboardingApp
//
//  Created by Grant Rudow on 2/3/20.
//  Copyright © 2020 Grant Rudow. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    
    var viewControllers: [UIViewController]
    
    var subviews = [
        UIHostingController(rootView:
            Subview(imageString: "meditating")),
        UIHostingController(rootView:
            Subview(imageString: "skydiving")),
        UIHostingController(rootView: Subview(imageString: "sitting"))
       
    ]
    
    var body: some View {
         PageViewController(viewControllers: subviews)
                   .frame(height: 600)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
