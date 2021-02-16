//
//  AlertService.swift
//  ErrorHandlingApp
//
//  Created by Valery Shel on 14.02.2021.
//

import UIKit

class AlertService {
    
    func alert(message: String) -> UIAlertController {
        
        let alert = UIAlertController(title: nil,
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Refresh",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        
        return alert
    }
}
