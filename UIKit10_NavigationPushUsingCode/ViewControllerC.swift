//
//  ViewControllerC.swift
//  UIKit10_NavigationPushUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 26/11/24.
//

import UIKit

class ViewControllerC: UIViewController {
    
    private lazy var swiftbetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Suscribe to SwiftBeta!"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.starNavigation()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        title = "ViewControllerC"
        view.addSubview(swiftbetaButton)
        
        NSLayoutConstraint.activate([
            swiftbetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftbetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc
    func starNavigation() {
        self.present(ViewControllerD(), animated: true)

    }
}
