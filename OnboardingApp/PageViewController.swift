//
//  PageViewController.swift
//  OnboardingApp
//
//  Created by Grant Rudow on 2/3/20.
//  Copyright © 2020 Grant Rudow. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    
    var viewControllers: [UIViewController]
    
    
    func makeUIViewController(context: Context) ->
        UIPageViewController {
            let pageViewController = UIPageViewController(
                transitionStyle: .scroll,
                navigationOrientation: .horizontal)
            
            return pageViewController
    }

    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers([viewControllers[0]], direction: .forward, animated: true)
    }
        
}

