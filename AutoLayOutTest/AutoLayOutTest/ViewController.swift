//
//  ViewController.swift
//  AutoLayOutTest
//
//  Created by Kim Nghĩa on 19/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var path: UILabel!
    @IBOutlet weak var warning: UILabel!
    @IBOutlet weak var loading: UILabel!
    @IBOutlet weak var detail: UIButton!
    @IBOutlet weak var share: UIButton!
    
    var changeStatus:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hiddenView2()
    }

    func hiddenView1(){
        warning.isHidden = true
        detail.isHidden = true
        share.isHidden = true
    }
    func hiddenView2(){
        loading.isHidden = true
    }
    func showView1(){
        warning.isHidden = false
        detail.isHidden = false
        share.isHidden = false
    }
    func showView2(){
        loading.isHidden = false
    }
    
    @IBAction func changeStatus(_ sender: Any) {
        if(changeStatus == 0){
            hiddenView1()
            showView2()
            changeStatus = 1
        }else if(changeStatus == 1){
            hiddenView2()
            showView1()
            changeStatus = 0
        }
    }
    

}

