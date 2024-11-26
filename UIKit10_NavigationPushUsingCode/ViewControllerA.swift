//
//  ViewController.swift
//  UIKit10_NavigationPushUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 26/11/24.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        title = "View Controller A"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(nextViewController))
        
    }
    
    @objc
    private func nextViewController() {
        print("Present View Controller B")
    }


}

