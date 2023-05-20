//
//  LoginController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 19/5/23.
//

import UIKit

class LoginController: UIViewController {

    let appLogo : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "startup-logo")
        
        return logo
    }()
    
    let loginHeader : UILabel = {
        let label = UILabel()
        label.text = "My Fitness"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 20,weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        
        return label
    }()
    
    let emailLabel : UILabel = {
        let label = UILabel()
        label.text = "Email Address"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter your email address"
        textField.backgroundColor = UIColor(red: (234/255.0), green: (236/255.0), blue: (238/255.0), alpha: 1.0)
        textField.textColor = UIColor(red: (39/255.0), green: (55/255.0), blue: (70/255.0), alpha: 1.0)
        textField.layer.cornerRadius = 6
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20));
        textField.leftViewMode = .always;
        
        return textField
    }()
    
    let emailErrorLabel: UILabel = {
        let label = UILabel()
        label.text = "Email address required"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 12)
        label.isHidden = true
        
        return label
    }()
    
    let passLabel : UILabel = {
       let label = UILabel()
        label.text = "Password"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter your password"
        textField.backgroundColor = UIColor(red: (234/255.0), green: (236/255.0), blue: (238/255.0), alpha: 1.0)
        textField.textColor = UIColor(red: (39/255.0), green: (55/255.0), blue: (70/255.0), alpha: 1.0)
        textField.layer.cornerRadius = 6
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20));
        textField.leftViewMode = .always;
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    let passwordErrorLabel: UILabel = {
        let label = UILabel()
        label.text = "Password required"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 12)
        label.isHidden = true
        
        return label
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: (102/255.0), green: (92/255.0), blue: (225/255.0), alpha: 1.0)
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.white.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        
        return button
    }()
    
    let fogotPassword : UILabel = {
        let label = UILabel()
        label.text = "Forgot Password?"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .center
        
        return label
    }()
    
    let createAccount : UILabel = {
        let label = UILabel()
        label.text = "Don't have an account?"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .light)
        label.textAlignment = .right
        
        return label
    }()
    
    let signUpLabel : UILabel = {
        let label = UILabel()
        label.text = "Sign up"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: (102/255.0), green: (92/255.0), blue: (225/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textAlignment = .left
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.addTarget(self, action: #selector(self.clickLoginEvent), for: .touchUpInside)
        
        let clickSignup = UITapGestureRecognizer(target: self, action: #selector(clickSignupEvent))
        signUpLabel.isUserInteractionEnabled = true
        signUpLabel.addGestureRecognizer(clickSignup)
        
        view.backgroundColor = .white
        view.addSubview(appLogo)
        view.addSubview(loginHeader)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(emailErrorLabel)
        view.addSubview(passLabel)
        view.addSubview(passwordTextField)
        view.addSubview(passwordErrorLabel)
        view.addSubview(loginButton)
        view.addSubview(fogotPassword)
        view.addSubview(createAccount)
        view.addSubview(signUpLabel)

        setConstraints()
    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
            appLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            appLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            appLogo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            appLogo.heightAnchor.constraint(equalToConstant: 100),
            appLogo.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            loginHeader.topAnchor.constraint(equalTo: appLogo.bottomAnchor, constant: 15),
            loginHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: loginHeader.bottomAnchor, constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        NSLayoutConstraint.activate([
            emailErrorLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 3),
            emailErrorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            passLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 25),
            passLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: passLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        NSLayoutConstraint.activate([
            passwordErrorLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 3),
            passwordErrorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 42),
            loginButton.widthAnchor.constraint(equalToConstant: 200),
        ])
        
        NSLayoutConstraint.activate([
            fogotPassword.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            fogotPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            fogotPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        
        NSLayoutConstraint.activate([
            createAccount.topAnchor.constraint(equalTo: fogotPassword.bottomAnchor, constant: 180),
            createAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            signUpLabel.topAnchor.constraint(equalTo: fogotPassword.bottomAnchor, constant: 180),
            signUpLabel.leadingAnchor.constraint(equalTo: createAccount.trailingAnchor, constant: 5),
            signUpLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
        ])
    }

    // Signin button event
    @objc func clickLoginEvent() {
        if !ValidateForm() {
            return
        }
        
        if emailTextField.text == "example@email.com" && passwordTextField.text == "password" {
            // Successful login
            self.navigationController?.pushViewController(DashboardController(), animated: true)
        } else {
            // Invalid email or password
            showLoginErrorAlert()
        }
    }
    
    // Sign up button event
    @objc func clickSignupEvent(sender: UITapGestureRecognizer) {
        self.navigationController?.pushViewController(SignupController(), animated: true)
    }
    
    // Validate form
    func ValidateForm() -> Bool {
        var isEmailEmpty = false
        var isPasswordEmpty = false
        
        if emailTextField.text == "" {
            emailTextField.layer.borderWidth = 0.5
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailErrorLabel.isHidden = false
            isEmailEmpty = true
        }
        else {
            emailTextField.layer.borderWidth = 0
            emailErrorLabel.isHidden = true
        }
        
        if passwordTextField.text == "" {
            passwordTextField.layer.borderWidth = 0.5
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordErrorLabel.isHidden = false
            isPasswordEmpty = true
        }
        else {
            passwordTextField.layer.borderWidth = 0
            passwordErrorLabel.isHidden = true
        }
        
        if isEmailEmpty || isPasswordEmpty {
            return false
        }
        
        return true
    }
    
    // Show error login alert
    func showLoginErrorAlert() {
        let alert = UIAlertController(title: "Error Signing in", message: "The user email or password incorrect", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
