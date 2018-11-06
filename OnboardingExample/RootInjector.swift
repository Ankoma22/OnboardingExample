//
//  RootInjector.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import Foundation

typealias RootInjectorProvider = OnboardingControllerProvider

final class RootInjector: RootInjectorProvider {
    private(set) lazy var onboardingController: OnboardingController = OnboardingControllerImpl()
}
