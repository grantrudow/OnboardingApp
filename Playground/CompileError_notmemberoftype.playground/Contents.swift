import Foundation
import SwiftUI
import UIKit

struct PageViewController:
UIViewControllerRepresentable {
    
    var viewControllers: [UIViewController]
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        
        //assign data source of page view controller
        pageViewController.dataSource = context.coordinator
        
        return pageViewController
    }
    
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        
        pageViewController.setViewControllers(
            [viewControllers[0]],
            direction: .forward, animated: true)
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource {
        
        var parent: PageViewController
        
        init(_ pageViewController: PageViewController) {
            self.parent = pageViewController
        }
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            
            //retrieves the index of the currently displayed view controller
            guard let index =
                parent.viewControllers.firstIndex(of: viewController)
                else {
                    return nil
            }
            //shows the last view controller when the user swipes back from the first view controller
            if index == 0 {
                return parent.viewControllers.last
            }
            //show the view of controller before the currently displayed view controller
            return parent.viewControllers[index - 1]
        }
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            
            //retrieves the index of the currently displayed view controller
            guard let index = parent.viewControllers.firstIndex(of: viewController) else {
                return nil
            }
            
            //shows the first view controller when the user swipes further from the last view controller
            if index + 1 == parent.viewControllers.count {
                return parent.viewControllers.first
            }
           
            //show the view controller after the currently displayed view controller
            return parent.viewControllers[index + 1]
        }
    }
}

