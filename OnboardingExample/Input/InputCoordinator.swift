//
//  InputCoordinator.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit

final class InputCoordinator: Coordinator {
    func start() -> UIViewController {
        let vm = InputViewModel()
        let vc = InputViewController(viewModel: vm)
        return UINavigationController(rootViewController: vc)
    }
}
