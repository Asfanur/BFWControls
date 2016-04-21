//
//  AlertViewController.swift
//  BFWControls
//
//  Created by Tom Brodhurst-Hill on 2/12/2015.
//  Copyright © 2015 BareFeetWare. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController, AlertViewDelegate {
    
    @IBInspectable var action0Segue: String?
    @IBInspectable var action1Segue: String?
    @IBInspectable var action2Segue: String?
    @IBInspectable var action3Segue: String?
    
    // MARK: - AlertViewDelegate
    
    func alertView(alertView: AlertView, clickedButtonAtIndex index: Int) {
        if alertView.hasCancel && index == 0 {
            dismissAlertView()
        } else {
            let identifer = [action0Segue, action1Segue, action2Segue, action3Segue][index]
            ?? alertView.buttonTitleAtIndex(index)!
            performSegueWithIdentifier(identifer, sender: alertView)
        }
    }
    
    // MARK: - Actions
    
    func dismissAlertView() {
        if presentingViewController != nil {
            dismissViewControllerAnimated(true, completion: nil)
        } else {
            navigationController?.popViewControllerAnimated(true)
        }
    }
    
}
