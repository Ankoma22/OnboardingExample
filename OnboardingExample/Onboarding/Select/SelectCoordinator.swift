//
//  SelectCoordinator.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit

final class SelectCoordinator: Coordinator {
    func start() -> UIViewController {
        let vm = SelectViewModel()
        let vc = SelectViewController(viewModel: vm)
        return vc
    }
}


