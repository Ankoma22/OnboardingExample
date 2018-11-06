//
//  SelectViewController.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit
import RxSwift

final class SelectViewController: UIViewController {
    
    private let viewModel: SelectViewModel
    private let disposeBag = DisposeBag()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 150, width: UIScreen.main.bounds.width, height: 40))
        label.text = "Select Option:"
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var firstOption: UIButton = {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 62, y: 250, width: 250, height: 40)
        button.backgroundColor = UIColor.lightGray
        button.setTitleColor(.black, for: .normal)
        button.setTitle("First", for: .normal)
        button.layer.cornerRadius = 6.0
        return button
    }()
    
    private lazy var secondOption: UIButton = {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 62, y: 310, width: 250, height: 40)
        button.backgroundColor = UIColor.lightGray
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Second", for: .normal)
        button.layer.cornerRadius = 6.0
        return button
    }()
    
    init(viewModel: SelectViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.title = "Select"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(firstOption)
        view.addSubview(secondOption)
        
        firstOption.rx.tap.bind(to: viewModel.input.onFirst).disposed(by: disposeBag)
        secondOption.rx.tap.bind(to: viewModel.input.onSecond).disposed(by: disposeBag)
    }
}
