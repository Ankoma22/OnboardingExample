//
//  OnboardingController.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import Foundation

enum OnboardingState {
    case notStarted
    case first
    case finished
}

protocol OnboardingController {
    var state: OnboardingState { get }
}

protocol OnboardingControllerProvider {
    var onboardingController: OnboardingController { get }
}

let kOnboardingState = "kOnboardingState"

final class OnboardingControllerImpl: OnboardingController {
    var state: OnboardingState {
        return UserDefaults.standard.object(forKey: kOnboardingState) as? OnboardingState ?? .notStarted
    }
}
