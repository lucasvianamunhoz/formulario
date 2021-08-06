//
//  ViewController.swift
//  Formulario
//
//  Created by Lucas Viana Munhoz on 04/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        func validateName(name: String) ->Bool {
              // Length be 18 characters max and 3 characters minimum, you can always modify.
              let nameRegex = "^\\w{3,18}$"
              let trimmedString = name.trimmingCharacters(in: .whitespaces)
              let validateName = NSPredicate(format: "SELF MATCHES %@", nameRegex)
              let isValidateName = validateName.evaluate(with: trimmedString)
              return isValidateName
           }

}

