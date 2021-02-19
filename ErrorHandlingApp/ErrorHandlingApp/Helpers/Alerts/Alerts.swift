//
//  Alerts.swift
//  ErrorHandlingApp
//
//  Created by Valery Shel on 17.02.2021.
//

import UIKit

class Alert: UIViewController{

    func showAlertError(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .cancel) { _ in
            
        }
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}
