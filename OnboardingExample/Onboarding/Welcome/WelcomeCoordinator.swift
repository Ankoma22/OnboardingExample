//
//  WelcomeCoordinator.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit
import RxSwift

final class WelcomeCoordinator: Coordinator {
    
    private let disposeBag = DisposeBag()
    private var navController: UINavigationController?
    
    func start() -> UIViewController {
        let vm = WelcomeViewModel()
        vm.output.onContinue.subscribe(onNext: { [unowned self] in
            let selectCoordinator = SelectCoordinator()
            self.navController?.pushViewController(selectCoordinator.start(), animated: true)
        }).disposed(by: disposeBag)
        let vc = WelcomeViewController(viewModel: vm)
        navController = UINavigationController(rootViewController: vc)
        return navController!
    }
}
