//
//  ViewController.swift
//  ErrorHandlingApp
//
//  Created by Valery Shel on 13.02.2021.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var connectToNASAButton: UIButton!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    let progress = Progress(totalUnitCount: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        connectToNASAButton.layer.cornerRadius = 5
    }

    
    
    //MARK: Action Buttons
    @IBAction func connectButtonTapped(_ sender: Any) {
        
        self.navigationController?.pushViewController(ImagesCollectionViewController(), animated: true)

        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            
            guard self.progress.isFinished == false else {
                
                timer.invalidate()
                print("finished")
                return
            }
            
            self.progress.completedUnitCount += 1
            
            let progressFloat = Float(self.progress.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)

            
        }
        
    }
    
    
    
}

