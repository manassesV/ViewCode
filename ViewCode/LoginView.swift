//
//  LoginView.swift
//  ViewCode
//
//  Created by Usuário Convidado on 23/03/19.
//  Copyright © 2019 Usuário Convidado. All rights reserved.
//

import UIKit

class LoginView: UIView, CodeView {
    
    let stackView: UIStackView = {
       let stackView = UIStackView()
       stackView.axis = .vertical
       stackView.distribution = .fill
       stackView.alignment = .fill
       stackView.spacing = Margin.vertical
       stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    
    let titleLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.text = "Vamos Começar"
        titleLabel.font = UIFont.title
        titleLabel.textColor = UIColor.title
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
    
    let bodyLabel: UILabel = {
        let titleLabel: UILabel = UILabel()
        titleLabel.text = "Isso aqui é ViewCode"
        titleLabel.font = UIFont.body
        titleLabel.textColor = UIColor.title
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.numberOfLines = 0
        
        return titleLabel
    }()
    
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Silencio", for: .normal)
        button.backgroundColor = UIColor.red
        button.tintColor = .white
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    func setupComponents() {
        addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(bodyLabel)
    }
    
    func setupConstraints() {
        stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: Margin.vertical).isActive = true
        stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: Margin.horizontal).isActive = true
        stackView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant:  0).isActive = true

    }
    
    func setupExtraConfiguration() {
        backgroundColor = .yellow
    }
    

 
    
    init(){
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        //atemped
        fatalError("init coder não implementado")
    }
    

}
