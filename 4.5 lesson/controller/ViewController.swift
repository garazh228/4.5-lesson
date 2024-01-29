//
//  ViewController.swift
//  4.5 lesson
//
//  Created by adyl CEO on 29/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Create New Passsword 🔐"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let lilLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your new password. If you forget it, then you have to do forgot password."
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .darkGray
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let passwordTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Please enter your password"
        tf.borderStyle = .none
        tf.addTarget(self, action: #selector(enabledButton), for: .editingChanged)
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    private let bottomLine: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private let eyeButton: UIButton = {
        let button = UIButton()
        button.tintColor = .red
        let imageButton = UIImage(systemName: "eye")
        button.setImage(imageButton, for: .normal)
        button.addTarget(self, action: #selector(eyeButtonTapped), for: .touchUpInside)
        button.tag = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private let confirmLabel: UILabel = {
        let label = UILabel()
        label.text = "Confirm Password"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let confirmTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Please confirm your password"
        tf.borderStyle = .none
        tf.addTarget(self, action: #selector(enabledButton), for: .editingChanged)
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    private let confirmBottomLine: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private let confirmEyeButton: UIButton = {
        let button = UIButton()
        button.tintColor = .red
        let imageButton = UIImage(systemName: "eye")
        button.addTarget(self, action: #selector(confirmEyeButtonTapped), for: .touchUpInside)
        button.setImage(imageButton, for: .normal)
        button.tag = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private let checkButton: UIButton = {
        let button = UIButton()
        button.tintColor = .red
        let imageCheckBox = UIImage(systemName: "checkmark.circle")
        button.setImage(imageCheckBox, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private let rememberLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember Me"
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let mainButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Continue", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        button.layer.cornerRadius = 28
        button.backgroundColor = UIColor(hex: "#F5484A")
        button.addTarget(self, action: #selector(nextPage), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        
        
        view.addSubview(mainLabel)
        view.addSubview(lilLabel)
        view.addSubview(passwordLabel)
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 34),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
        
        NSLayoutConstraint.activate([
            lilLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 12),
            lilLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            lilLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
        
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: lilLabel.bottomAnchor, constant: 32),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
        
        
        view.addSubview(passwordTF)
        view.addSubview(bottomLine)
        
        
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 16),
            passwordTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            //            passwordTF.widthAnchor.constraint(equalToConstant: 382),
            passwordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            passwordTF.heightAnchor.constraint(equalToConstant: 41)
        ])
        
        NSLayoutConstraint.activate([
            bottomLine.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 0),
            bottomLine.leadingAnchor.constraint(equalTo: passwordTF.leadingAnchor),
            bottomLine.widthAnchor.constraint(equalTo: passwordTF.widthAnchor),
            bottomLine.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        
        
        passwordTF.addSubview(eyeButton)
        NSLayoutConstraint.activate([
            eyeButton.trailingAnchor.constraint(equalTo: passwordTF.trailingAnchor, constant: 0),
            eyeButton.centerYAnchor.constraint(equalTo: passwordTF.centerYAnchor)
        ])
        
        
        view.addSubview(confirmLabel)
        NSLayoutConstraint.activate([
            confirmLabel.topAnchor.constraint(equalTo: bottomLine.bottomAnchor, constant: 24),
            confirmLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24)
        ])
        
        
        view.addSubview(confirmTF)
        view.addSubview(confirmBottomLine)
        
        NSLayoutConstraint.activate([
            confirmTF.topAnchor.constraint(equalTo: confirmLabel.bottomAnchor, constant: 16),
            confirmTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            confirmTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            confirmTF.heightAnchor.constraint(equalToConstant: 41)
        ])
        
        NSLayoutConstraint.activate([
            confirmBottomLine.topAnchor.constraint(equalTo: confirmTF.bottomAnchor, constant: 0),
            confirmBottomLine.leadingAnchor.constraint(equalTo: confirmTF.leadingAnchor),
            confirmBottomLine.widthAnchor.constraint(equalTo: confirmTF.widthAnchor),
            confirmBottomLine.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        confirmTF.addSubview(confirmEyeButton)
        NSLayoutConstraint.activate([
            confirmEyeButton.trailingAnchor.constraint(equalTo: confirmTF.trailingAnchor, constant: 0),
            confirmEyeButton.centerYAnchor.constraint(equalTo: confirmTF.centerYAnchor)
        ])
        
        
        view.addSubview(checkButton)
        
        NSLayoutConstraint.activate([
            checkButton.topAnchor.constraint(equalTo: confirmBottomLine.bottomAnchor, constant: 24),
            checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
        ])
        
        
        view.addSubview(rememberLabel)
        NSLayoutConstraint.activate([
            rememberLabel.topAnchor.constraint(equalTo: confirmBottomLine.bottomAnchor, constant: 24),
            rememberLabel.leadingAnchor.constraint(equalTo: checkButton.trailingAnchor, constant: 16)
        ])
        
        passwordTF.rightView = eyeButton
        passwordTF.rightViewMode = .always
        
        confirmTF.rightView = confirmEyeButton
        confirmTF.rightViewMode = .always
        
        
        view.addSubview(mainButton)
        NSLayoutConstraint.activate([
            mainButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -24),
            mainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            mainButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            mainButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    //логика для ТФ меняется кнопка глаза
    @objc private func eyeButtonTapped(_ sender: UIButton) {
        if sender.tag == 0 {
            passwordTF.isSecureTextEntry = !passwordTF.isSecureTextEntry
            
            let imageName = passwordTF.isSecureTextEntry ? "eye.slash" : "eye"
            sender.setImage(UIImage(systemName: imageName), for: .normal)
        }
    }
    
    //логика для ТФ меняется кнопка глаза
    @objc private func confirmEyeButtonTapped(_ sender: UIButton) {
        if sender.tag == 1 {
            confirmTF.isSecureTextEntry = !confirmTF.isSecureTextEntry
            
            let imageName = confirmTF.isSecureTextEntry ? "eye.slash" : "eye"
            sender.setImage(UIImage(systemName: imageName), for: .normal)
        }
    }
    
    
    //логика активности кнопки
    @objc private func enabledButton(_ sender: UITextField) {
        guard let a = passwordTF.text, let b = confirmTF.text else {return}
        
        if a.count >= 6 && b.count >= 6 {
            mainButton.isEnabled = true
            mainButton.backgroundColor = UIColor(hex: "#F5484A")
        } else {
            mainButton.isEnabled = false
            mainButton.backgroundColor = .darkGray
        }
    }
    
    
    @objc private func nextPage(_ sender: UIButton) {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
