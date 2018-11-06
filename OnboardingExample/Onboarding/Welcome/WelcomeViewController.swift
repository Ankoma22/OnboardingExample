//
//  WelcomeViewController.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

final class WelcomeViewController: UIViewController {
    
    private let viewModel: WelcomeViewModel
    private let disposeBag = DisposeBag()
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 40))
        label.text = "Welcome"
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var continueButton: UIButton = {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 62, y: 340, width: 250, height: 40)
        button.backgroundColor = UIColor.lightGray
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Continue", for: .normal)
        button.layer.cornerRadius = 6.0
        return button
    }()
    
    init(viewModel: WelcomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(continueButton)
        continueButton.rx.tap.bind(to: viewModel.input.onContinue).disposed(by: disposeBag)
    }
}
