//
//  LoginViewController.swift
//  SwiftDecorator
//
//  Created by Alexandre Thomas on 2020. 06. 21..
//  Copyright © 2020. Alexandre Thomas. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    private let textProvider: TextProvider
    
    init(textProvider: TextProvider) {
        self.textProvider = textProvider
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = textProvider.localise("label_username")
        passwordLabel.text = textProvider.localise("label_password")
        loginButton.setTitle(textProvider.localise("button_login"), for: .normal)
    }
    
    @IBAction func loginDidPress(_ sender: Any) {
        
        let alert = UIAlertController(title: textProvider.localise("message_success"),
                                      message: textProvider.localise("message_login_success"),
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: textProvider.localise("ok"), style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
