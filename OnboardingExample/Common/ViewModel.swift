//
//  ViewModel.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import Foundation

protocol ViewModel {
    associatedtype Input
    associatedtype Output
    
    var input: Input { get }
    var output: Output { get }
}
