//
//  CreateAccountView.swift
//  
//
//  Created by C4Q on 1/30/18.
//

import UIKit

class CreateAccountView: UIView {
    
    var blurView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return blurEffectView
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.layer.shadowOpacity = 0.8
        view.layer.shadowOffset = CGSize(width: 5, height: 5)
        return view
    }()
    
    ///Labels
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        return label
    }()
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        return label
    }()
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        return label
    }()
    lazy var confirmPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Confirm Password"
        return label
    }()
    
    ///TextFields
    lazy var userNameTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.layer.shadowOpacity = 0.8
        tf.layer.shadowOffset = CGSize(width: 2, height: 2)
        return tf
    }()
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.layer.shadowOpacity = 0.8
        tf.layer.shadowOffset = CGSize(width: 2, height: 2)
        tf.keyboardType = .emailAddress
        return tf
    }()
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.layer.shadowOpacity = 0.8
        tf.layer.shadowOffset = CGSize(width: 2, height: 2)
        tf.isSecureTextEntry = true
        return tf
    }()
    lazy var confirmPasswordTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.layer.shadowOpacity = 0.8
        tf.layer.shadowOffset = CGSize(width: 2, height: 2)
        tf.isSecureTextEntry = true
        return tf
    }()
    
    var submitButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("   Submit   ", for: .normal)
        button.backgroundColor = .white
        button.tintColor = .purple
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.8
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        backgroundColor = .clear
        setupViews()
    }
    
    private func setupViews() {
        blurView.frame = bounds
        let viewObjects = [blurView, containerView, userNameLabel, userNameTextField, emailLabel, emailTextField, passwordLabel, passwordTextField, confirmPasswordLabel, confirmPasswordTextField, submitButton] as [UIView]
        viewObjects.forEach{addSubview($0)}
        let padding = 20
        
        
        containerView.snp.makeConstraints { (view) in
            view.center.equalTo(self)
            view.width.equalTo(self).multipliedBy(0.8)
            view.height.equalTo(self).multipliedBy(0.8)
        }
        
        userNameLabel.snp.makeConstraints { (label) in
            label.top.leading.equalTo(containerView).offset(padding)
        }
        userNameTextField.snp.makeConstraints { (field) in
            field.top.equalTo(userNameLabel.snp.bottom).offset(padding - 10)
            field.leading.equalTo(containerView).offset(padding)
            field.width.equalTo(containerView).multipliedBy(0.8)
        }
        
        emailLabel.snp.makeConstraints { (label) in
            label.top.equalTo(userNameTextField.snp.bottom).offset(padding)
            label.leading.equalTo(containerView).offset(padding)
        }
        emailTextField.snp.makeConstraints { (field) in
            field.top.equalTo(emailLabel.snp.bottom).offset(padding - 10)
            field.leading.equalTo(containerView).offset(padding)
            field.width.equalTo(userNameTextField)
        }
        
        passwordLabel.snp.makeConstraints { (label) in
            label.top.equalTo(emailTextField.snp.bottom).offset(padding)
            label.leading.equalTo(containerView).offset(padding)
        }
        passwordTextField.snp.makeConstraints { (field) in
            field.top.equalTo(passwordLabel.snp.bottom).offset(padding - 10)
            field.leading.equalTo(containerView).offset(padding)
            field.width.equalTo(emailTextField)
        }
        
        confirmPasswordLabel.snp.makeConstraints { (label) in
            label.top.equalTo(passwordTextField.snp.bottom).offset(padding)
            label.leading.equalTo(containerView).offset(padding)
        }
        
        confirmPasswordTextField.snp.makeConstraints { (field) in
            field.top.equalTo(confirmPasswordLabel.snp.bottom).offset(padding - 10)
            field.leading.equalTo(containerView).offset(padding)
            field.width.equalTo(emailTextField)
        }
        
        submitButton.snp.makeConstraints { (button) in
            button.centerX.equalTo(containerView)
            button.top.equalTo(confirmPasswordTextField.snp.bottom).offset(padding + 30)
        }
        
    }
    
}
