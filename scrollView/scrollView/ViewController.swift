//
//  ViewController.swift
//  scrollView
//
//  Created by minal borole on 12/06/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myScrollView: UIScrollView!
    var tapGesture: UITapGestureRecognizer!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTap))
        view.addGestureRecognizer(tapGesture)
        // keybourd show notification
        
        NotificationCenter.default.addObserver(self, selector: #selector(onShowKeybourd), name: UIResponder.keyboardWillShowNotification, object: nil)
        //keybourd hide notification
        
        NotificationCenter.default.addObserver(self, selector: #selector(onHideKeybourd), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc func onTap(){
        view.endEditing(true)
        
    }
    @objc func onShowKeybourd(){
      //  myScrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 250, right: 0)
        myScrollView.contentOffset = CGPoint(x: 0, y: 250)
    }
    
    @objc func onHideKeybourd(){
        //myScrollView.contentInset = UIEdgeInsets.zero
        myScrollView.contentOffset = CGPoint.zero
        
    }


}

