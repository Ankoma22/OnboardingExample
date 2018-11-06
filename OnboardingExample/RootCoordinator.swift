//
//  RootCoordinator.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit

final class RootCoordinator {
    
    typealias RootCoordinatorInjection = OnboardingControllerProvider
    
    private let injection: RootCoordinatorInjection
    private var coordinators = [Coordinator]()
    
    init(injection: RootCoordinatorInjection) {
        self.injection = injection
    }
}

extension RootCoordinator: Coordinator {
    func start() -> UIViewController {
        switch self.injection.onboardingController.state {
        case .finished:
            return buildMainViewController()
        default:
            return buildOnboarding()
        }
    }
    
    private func buildMainViewController() -> UIViewController {
        let mainCoordinator = MainViewCoordinator()
        self.coordinators.append(mainCoordinator)
        return mainCoordinator.start()
    }
    
    private func buildOnboarding() -> UIViewController {
        let welcomeCoordinator = WelcomeCoordinator()
        self.coordinators.append(welcomeCoordinator)
        return welcomeCoordinator.start()
    }
}
