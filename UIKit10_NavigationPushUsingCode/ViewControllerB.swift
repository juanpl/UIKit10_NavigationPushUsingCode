//
//  ViewControllerB.swift
//  UIKit10_NavigationPushUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 26/11/24.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "View Controller B"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(nextViewController))
        
    }
    
    @objc
    private func nextViewController() {
        self.navigationController?.pushViewController(ViewControllerC(), animated: true)
    }


}
