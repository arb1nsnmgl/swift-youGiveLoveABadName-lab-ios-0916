//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    var isMaxed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        if !isMaxed {
            UIView.animate(withDuration: 0.6, delay: 0.0, usingSpringWithDamping: 0.38, initialSpringVelocity: 0.0, options: [], animations: ({
                
                self.imageView.transform = CGAffineTransform.identity
                self.imageView.frame = self.view.frame
                
            }), completion: nil)
            
            isMaxed = true
            
        } else {
            
            UIView.animate(withDuration: 0.6, delay: 0.0, usingSpringWithDamping: 0.38, initialSpringVelocity: 0.0, options: [], animations: ({
                
                self.imageView.transform = CGAffineTransform(scaleX: 1, y: 0.5)
                
            }), completion: nil)

            isMaxed = false
        }
        
        
    }
    
    
    
}
