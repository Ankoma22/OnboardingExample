//
//  ListCoordinator.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit

final class ListCoordinator: Coordinator {
    func start() -> UIViewController {
        let vm = ListViewModel()
        let vc = ListViewController(viewModel: vm)
        return UINavigationController(rootViewController: vc)
    }
}
