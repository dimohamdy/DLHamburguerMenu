//
//  DLHamburguerNavigationController.swift
//  DLHamburguerMenu
//
//  Created by Nacho on 5/3/15.
//  Copyright (c) 2015 Ignacio Nieto Carvajal. All rights reserved.
//

import UIKit

class DLHamburguerNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenEdgeRecognizer:UIScreenEdgePanGestureRecognizer  = UIScreenEdgePanGestureRecognizer(target: self,
            action: "screenEdgePanGestureRecognized:")
        screenEdgeRecognizer.edges = .Left
        self.view.addGestureRecognizer(screenEdgeRecognizer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func screenEdgePanGestureRecognized(sender: UIPanGestureRecognizer!) {
        // dismiss keyboard
        self.view.endEditing(true)
        self.findHamburguerViewController()?.view.endEditing(true)
        
        // pass gesture to hamburguer view controller.
        self.findHamburguerViewController()?.panGestureRecognized(sender)
    }
    
}
