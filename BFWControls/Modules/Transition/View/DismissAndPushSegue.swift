//
//  DismissAndPushSegue.swift
//
//  Created by Tom Brodhurst-Hill on 7/04/2016.
//  Copyright © 2016 BareFeetWare. All rights reserved.
//

import UIKit

class DismissAndPushSegue: UIStoryboardSegue {

    override func perform() {
        if let presentingViewController = sourceViewController.presentingViewController {
            presentingViewController.dismissViewControllerAnimated(true, completion: {
                if let presentingNavigationController = presentingViewController as? UINavigationController ?? presentingViewController.navigationController {
                    var destinationViewController = self.destinationViewController
                    if let destinationNavigationController = destinationViewController as? UINavigationController {
                        destinationViewController = destinationNavigationController.viewControllers.first!
                    }
                    presentingNavigationController.pushViewController(destinationViewController, animated: true)
                }
            })
        }
    }
    
}
