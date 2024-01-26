//
//  ViewController.swift
//  Dice with code
//  Created by Zhaniya on 20.07.2023.
//

import UIKit

class ViewController: UIViewController {

    let backgroungImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "newbackground")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diceeLogo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let diceOneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let diceTwoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice2")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var rollButton: UIButton = {
        let button = UIButton(type: .system )
        button.setTitle("Roll", for: .normal)
        button.layer.cornerRadius = 12
        button.titleLabel?.font = .systemFont(ofSize: 28 )
        button.tintColor = .white
        button.backgroundColor = UIColor(red: 155/255, green: 28/155, blue: 31/255  , alpha: 1)
        button.addTarget( self, action: #selector(rollButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc func rollButtonTapped(){
        let arrayDice = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
        diceOneImageView.image = arrayDice.randomElement()
        diceTwoImageView.image = arrayDice.randomElement()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        view.addSubview(backgroungImageView)
        
        backgroungImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroungImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroungImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroungImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        view.addSubview(logoImageView)
        
        logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        view.addSubview(diceOneImageView)
        
        diceOneImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diceOneImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        diceOneImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        diceOneImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        
        view.addSubview(diceTwoImageView)
        
        diceTwoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        diceTwoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        diceTwoImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        diceTwoImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        view.addSubview(rollButton)
        
        rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rollButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide .bottomAnchor, constant: -120).isActive = true
        rollButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        rollButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
       
    }


}

