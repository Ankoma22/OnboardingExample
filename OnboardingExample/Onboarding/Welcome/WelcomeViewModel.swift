//
//  WelcomeViewModel.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import Foundation
import RxSwift

final class WelcomeViewModel: ViewModel {
    struct Input {
        let onContinue: AnyObserver<Void>
    }
    struct Output {
        let onContinue: Observable<Void>
    }
    
    let input: Input
    let output: Output
    
    private let inputSubject = PublishSubject<Void>()
    
    init() {
        self.input = Input(onContinue: inputSubject.asObserver())
        self.output = Output(onContinue: inputSubject.asObservable())
    }
}
