//
//  MainViewCoordinator.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit

final class MainViewCoordinator: Coordinator {
    
    private let listCoordinator = ListCoordinator()
    private let inputCoordinator = InputCoordinator()
    
    func start() -> UIViewController {
        let vc = MainViewController()
        vc.viewControllers = [listCoordinator.start(), inputCoordinator.start()]
        return vc
    }
}
