//
//  SignupController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 19/5/23.
//

import UIKit

class SignupController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    let signupHeader : LabelView = {
        let label = LabelView()
        label.text = "Signup"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 17,weight: .bold)
        
        return label
    }()
    
    let fullNameLabel : LabelView = {
        let label = LabelView()
        label.text = "Full Name"
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let fullNameTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Enter your full name"
        
        return textField
    }()
    
    let userNameLabel : LabelView = {
        let label = LabelView()
        label.text = "Username"
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let userNameTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Enter your username"
        
        return textField
    }()
    
    let emailLabel : LabelView = {
        let label = LabelView()
        label.text = "Email Address"
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let emailTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Enter your Email Address"
        
        return textField
    }()
    
    let emailErrorLabel: LabelView = {
        let label = LabelView()
        label.text = "Email address required"
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
    
    let passwordTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Enter your Password"
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    let passErrorLabel: UILabel = {
        let label = UILabel()
        label.text = "Password required"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 12)
        label.isHidden = true
        
        return label
    }()
    
    let confirmPassLabel : UILabel = {
        let label = UILabel()
        label.text = "Confirm Password"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let confirmPasswordTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Enter your Password"
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    let confirmPassErrorLabel: UILabel = {
        let label = UILabel()
        label.text = "Email address required"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 12)
        label.isHidden = true
        
        return label
    }()
    
    let ageLabel : UILabel = {
        let label = UILabel()
        label.text = "Age"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let ageTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Age"
        textField.isUserInteractionEnabled = false
        
        return textField
    }()
    
    let dobLabel : UILabel = {
        let label = UILabel()
        label.text = "Date of Birth"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let dobDatePicker : UIDatePicker = {
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: 10, height: 42))
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.preferredDatePickerStyle = .compact
        datePicker.datePickerMode = .date
        datePicker.backgroundColor = UIColor(red: (234/255.0), green: (236/255.0), blue: (238/255.0), alpha: 1.0)
        datePicker.layer.cornerRadius = 6
        datePicker.setValue(UIColor(red: (39/255.0), green: (55/255.0), blue: (70/255.0), alpha: 1.0), forKeyPath: "textColor")
        datePicker.layer.masksToBounds = true
        datePicker.subviews[0].subviews[0].subviews[0].alpha = 0
        datePicker.contentHorizontalAlignment = .left
        
        return datePicker
    }()
    
    let genderPicker : UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.tag = 1
        pickerView.backgroundColor = UIColor(red: (234/255.0), green: (236/255.0), blue: (238/255.0), alpha: 1.0)
        pickerView.layer.cornerRadius = 6
        pickerView.isHidden = true
        
        return pickerView
    }()
    
    let genderLabel : UILabel = {
        let label = UILabel()
        label.text = "Gender"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let genderTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Gender"
        
        return textField
    }()
    
    let heightLabel : LabelView = {
        let label = LabelView()
        label.text = "Height"
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let heightTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Foot"
        
        return textField
    }()
    
    let weightLabel : LabelView = {
        let label = LabelView()
        label.text = "Weight"
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return label
    }()
    
    let weightTextField: TextFieldView = {
        let textField = TextFieldView()
        textField.placeholder = "Kg"
        
        return textField
    }()
    
    let signupButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: (102/255.0), green: (92/255.0), blue: (225/255.0), alpha: 1.0)
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.white.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        
        return button
    }()
    
    let scrollView: UIScrollView = {
//        let scroll = UIScrollView(frame: view.bounds)
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.showsVerticalScrollIndicator = true
        
        return scroll
    }()
    
    var genderPickerData:[String] = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let scrollView = UIScrollView(frame: view.bounds)
//        scrollView.backgroundColor = . red
        //scrollView.delegate = self
        signupButton.addTarget(self, action: #selector(self.clickSignupEvent), for: .touchUpInside)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height + 15)
        
        
        
        self.dobDatePicker.addTarget(self, action: #selector(onDobDateChanged), for: .valueChanged)
        genderTextField.addTarget(self, action: #selector(self.showGenderPopup), for: .touchDown)
        
        self.genderPicker.delegate = self
        self.genderPicker.dataSource = self
        
        self.title = "Signup"
        
        genderPickerData = ["Male","Female"]
        
        
        
        view.backgroundColor = .white
//        scrollView.addSubview(signupHeader)
        view.addSubview(scrollView)
        scrollView.addSubview(fullNameLabel)
        scrollView.addSubview(fullNameTextField)
        scrollView.addSubview(userNameLabel)
        scrollView.addSubview(userNameTextField)
        scrollView.addSubview(emailLabel)
        scrollView.addSubview(emailTextField)
        scrollView.addSubview(emailErrorLabel)
        scrollView.addSubview(passLabel)
        scrollView.addSubview(passwordTextField)
        scrollView.addSubview(passErrorLabel)
        scrollView.addSubview(confirmPassLabel)
        scrollView.addSubview(confirmPasswordTextField)
        scrollView.addSubview(confirmPassErrorLabel)
        scrollView.addSubview(ageLabel)
        scrollView.addSubview(ageTextField)
        scrollView.addSubview(dobLabel)
        scrollView.addSubview(dobDatePicker)
        scrollView.addSubview(genderLabel)
        scrollView.addSubview(genderTextField)
        scrollView.addSubview(genderPicker)
        scrollView.addSubview(heightLabel)
        scrollView.addSubview(heightTextField)
        scrollView.addSubview(weightLabel)
        scrollView.addSubview(weightTextField)
        scrollView.addSubview(signupButton)
        
        setConstraints()
        
        
        
//        view.backgroundColor = .white
//        view.addSubview(signupHeader)
//        view.addSubview(fullNameLabel)
//        view.addSubview(fullNameTextField)
//        view.addSubview(userNameLabel)
//        view.addSubview(userNameTextField)
//        view.addSubview(emailLabel)
//        view.addSubview(emailTextField)
//        view.addSubview(emailErrorLabel)
//        view.addSubview(passLabel)
//        view.addSubview(passwordTextField)
//        view.addSubview(passErrorLabel)
//        view.addSubview(confirmPassLabel)
//        view.addSubview(confirmPasswordTextField)
//        view.addSubview(confirmPassErrorLabel)
//        view.addSubview(ageLabel)
//        view.addSubview(ageTextField)
//        view.addSubview(dobLabel)
//        view.addSubview(dobDatePicker)
//        view.addSubview(genderLabel)
//        view.addSubview(genderTextField)
//        view.addSubview(genderPicker)
//        view.addSubview(heightLabel)
//        view.addSubview(heightTextField)
//        view.addSubview(weightLabel)
//        view.addSubview(weightTextField)
//        view.addSubview(signupButton)
//
//        setConstraints()
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        let scrollView = UIScrollView(frame: view.bounds)
//        view.addSubview(scrollView)
//
//        view.backgroundColor = .white
//        scrollView.addSubview(signupHeader)
//        scrollView.addSubview(fullNameLabel)
//        scrollView.addSubview(fullNameTextField)
//        scrollView.addSubview(userNameLabel)
//        scrollView.addSubview(userNameTextField)
//        scrollView.addSubview(emailLabel)
//        scrollView.addSubview(emailTextField)
//        scrollView.addSubview(emailErrorLabel)
//        scrollView.addSubview(passLabel)
//        scrollView.addSubview(passwordTextField)
//        scrollView.addSubview(passErrorLabel)
//        scrollView.addSubview(confirmPassLabel)
//        scrollView.addSubview(confirmPasswordTextField)
//        scrollView.addSubview(confirmPassErrorLabel)
//        scrollView.addSubview(ageLabel)
//        scrollView.addSubview(ageTextField)
//        scrollView.addSubview(dobLabel)
//        scrollView.addSubview(dobDatePicker)
//        scrollView.addSubview(genderLabel)
//        scrollView.addSubview(genderTextField)
//        scrollView.addSubview(genderPicker)
//        scrollView.addSubview(heightLabel)
//        scrollView.addSubview(heightTextField)
//        scrollView.addSubview(weightLabel)
//        scrollView.addSubview(weightTextField)
//        scrollView.addSubview(signupButton)
//
//
//
//        setConstraints()
//
//        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2500)
//    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
//        NSLayoutConstraint.activate([
////            signupHeader.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 65),
//            signupHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//        ])
        
        NSLayoutConstraint.activate([
            fullNameLabel.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 15),
            fullNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            fullNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            fullNameTextField.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 5),
            fullNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            fullNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            fullNameTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: fullNameTextField.bottomAnchor, constant: 25),
            userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            userNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 5),
            userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            userNameTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 25),
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
            passErrorLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 3),
            passErrorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            confirmPassLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25),
            confirmPassLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            confirmPassLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            confirmPasswordTextField.topAnchor.constraint(equalTo: confirmPassLabel.bottomAnchor, constant: 5),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        NSLayoutConstraint.activate([
            confirmPassErrorLabel.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 3),
            confirmPassErrorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
        
        NSLayoutConstraint.activate([
            ageLabel.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 25),
            ageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            ageTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            ageTextField.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 5),
            ageTextField.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            ageTextField.heightAnchor.constraint(equalToConstant: 42),
            dobLabel.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 25),
            dobLabel.leadingAnchor.constraint(equalTo: ageTextField.trailingAnchor, constant: 10),
            dobDatePicker.topAnchor.constraint(equalTo: dobLabel.bottomAnchor, constant: 5),
            dobDatePicker.leadingAnchor.constraint(equalTo: ageTextField.trailingAnchor, constant: 10),
            dobDatePicker.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            dobDatePicker.heightAnchor.constraint(equalToConstant: 42),
        ])
        
        NSLayoutConstraint.activate([
            genderLabel.topAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: 25),
            genderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            genderLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            genderTextField.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 5),
            genderTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            genderTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            genderTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        NSLayoutConstraint.activate([
            heightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            heightLabel.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 25),
            heightTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            heightTextField.topAnchor.constraint(equalTo: heightLabel.bottomAnchor, constant: 5),
            heightTextField.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 190),
            heightTextField.heightAnchor.constraint(equalToConstant: 42),
            weightLabel.leadingAnchor.constraint(equalTo: heightTextField.trailingAnchor, constant: 10),
            weightLabel.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 25),
            weightTextField.leadingAnchor.constraint(equalTo: heightTextField.trailingAnchor, constant: 10),
            weightTextField.topAnchor.constraint(equalTo: heightLabel.bottomAnchor, constant: 5),
            weightTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            weightTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: heightTextField.bottomAnchor, constant: 40),
            signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signupButton.heightAnchor.constraint(equalToConstant: 42),
            signupButton.widthAnchor.constraint(equalToConstant: 200),
        ])
    }
    
    @objc func onDobDateChanged() {
        let todaysDate = Date.now
        let dob = dobDatePicker.date
        let age = Calendar.current.dateComponents([.year], from: dob, to: todaysDate).year!
        
        ageTextField.text = String(age)
    }
    
    @objc func clickSignupEvent() {
        
//        let user: User = User()
        let fullName = fullNameTextField.text ?? ""
        let userName = userNameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let password = "\(passwordTextField.text ?? "")"
        let dob = dobDatePicker.date
        let gender = genderTextField.text ?? ""
        let height = Float(heightTextField.text ?? "0") ?? 0
        let weight = Float(weightTextField.text ?? "0") ?? 0
        
        let user = User(fullName: fullName, userName: userName, email: email, password: password, dob: dob, gender: gender, height: height, weight: weight)
        
        //var result = ApiResult()
        
        userRegister(user: user) { results in
//            if let result = results {
//                showSignupAlert(apiResult: result)
//            }
            self.showSignupAlert(apiResult: results)
        }
        
//        showSignupAlert(apiResult: result)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Dismiss the keyboard when the user taps outside of the text fields
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genderPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genderPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.genderTextField.isHidden = false;
        self.genderPicker.isHidden = true;
        self.genderTextField.text = genderPickerData[row];
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        self.genderTextField.isHidden = true
        self.genderPicker.isHidden = false;
        return false
    }
    
    @objc func showGenderPopup() {
        let vc = UIViewController()
        vc.preferredContentSize = CGSize(width: 250,height: 200)
        
        let pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        pickerView.delegate = self
        pickerView.dataSource = self
        vc.view.addSubview(pickerView)
        
        let editRadiusAlert = UIAlertController(title: "Choose Gender", message: "", preferredStyle: UIAlertController.Style.alert)
        editRadiusAlert.setValue(vc, forKey: "contentViewController")
        editRadiusAlert.addAction(UIAlertAction(title: "Done", style: .default, handler: { _ in
            self.genderTextField.text = self.genderPickerData[self.genderPicker.selectedRow(inComponent: 0)]
        }))
        self.present(editRadiusAlert, animated: true)
    }
    
    func showSignupAlert(apiResult: ApiResult) {
        
        var alertTitle = ""
        
        if (apiResult.isSuccess == true) {
            alertTitle = "Success"
        }
        else {
            alertTitle = "Error"
        }
        
        let alert = UIAlertController(title: alertTitle, message: apiResult.message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
