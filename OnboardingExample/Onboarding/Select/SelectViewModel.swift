//
//  SelectViewModel.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import Foundation
import RxSwift

final class SelectViewModel: ViewModel {
    struct Input {
        let onFirst: AnyObserver<Void>
        let onSecond: AnyObserver<Void>
    }
    struct Output {
        let onFirst: Observable<Void>
        let onSecond: Observable<Void>
    }
    
    let input: Input
    let output: Output
    
    private let firstSubject = PublishSubject<Void>()
    private let secondSubject = PublishSubject<Void>()
    
    init() {
        self.input = Input(onFirst: firstSubject.asObserver(), onSecond: secondSubject.asObserver())
        self.output = Output(onFirst: firstSubject.asObservable(), onSecond: secondSubject.asObservable())
    }
}
