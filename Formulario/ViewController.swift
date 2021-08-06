//
//  ViewController.swift
//  Formulario
//
//  Created by Lucas Viana Munhoz on 04/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    //develop

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func validaTelefone(phone: String) -> Bool {
        return phone.isValidPhone
    }
    
}

extension String {
   var isValidPhone: Bool {
      let regularExpressionForPhone = "^\\d{3}-\\d{3}-\\d{4}$"
      let testPhone = NSPredicate(format:"SELF MATCHES %@", regularExpressionForPhone)
      return testPhone.evaluate(with: self)
   }
}



