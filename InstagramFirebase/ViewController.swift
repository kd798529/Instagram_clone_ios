//
//  ViewController.swift
//  InstagramFirebase
//
//  Created by Kwaku Dapaah on 3/31/23.
//

import UIKit

class ViewController: UIViewController {
    
    let plusPhotoButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "add-photo"), for: .normal)
        return button
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
        
    }()
    
    let usernameTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
        
    }()
    
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
        
    }()
    
    let signUpButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Sign Up", for: .normal)
        btn.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244)
        btn.layer.cornerRadius = 5
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btn.setTitleColor(.white, for: .normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(plusPhotoButton)
        
        
        plusPhotoButton.anchor(top: view.topAnchor, paddingTop: 40, left: nil, paddingLeft: 0, right: nil, paddingRight: 0, bottom: nil, paddingBottom: 0, height: 140, width: 140)

        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        
        
        
        
        setupInputFields()
        
        
    }
    
    fileprivate func setupInputFields() {
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField,
                                                       usernameTextField,
                                                       passwordTextField,
                                                       signUpButton
                                                      ])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
        stackView.anchor(top: plusPhotoButton.bottomAnchor, paddingTop: 20, left: view.leftAnchor, paddingLeft: 40, right: view.rightAnchor, paddingRight: -40, bottom: nil, paddingBottom: 0, height: 200, width: 0)
    }
    
    
}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, paddingTop: CGFloat, left: NSLayoutXAxisAnchor?, paddingLeft: CGFloat, right: NSLayoutXAxisAnchor?, paddingRight: CGFloat, bottom: NSLayoutYAxisAnchor?, paddingBottom: CGFloat, height: CGFloat, width: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
    }
}

