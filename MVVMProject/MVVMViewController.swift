//
//  MVVMViewController.swift
//  MVVMProject
//
//  Created by DON PAUL PM on 05/08/17.
//  Copyright © 2017 DonPaulPM. All rights reserved.
//

import UIKit

class MVVMViewController: UIViewController {

    private var dogViewModel = DogViewModel(dog: Dog())
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var breed: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var age: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupView()
    }
    
    func setupView() {
        name.attributedText = dogViewModel.name
        breed.text = dogViewModel.breed
        color.text = dogViewModel.color
        age.text = dogViewModel.age
    }
}

