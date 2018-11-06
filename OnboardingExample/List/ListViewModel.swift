//
//  ListViewModel.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import Foundation

final class ListViewModel: ViewModel {
    struct Input {}
    struct Output {}
    
    let input: Input
    let output: Output
    
    init() {
        self.input = Input()
        self.output = Output()
    }
}
