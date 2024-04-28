//
//  AccountSettingsViewController.swift
//  Dr RndR
//
//  Created by Prabal Kumar on 25/04/24.
//

import UIKit

class AccountSettingsViewController: UIViewController {

    @IBOutlet var accountPhotoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountPhotoView.layer.cornerRadius = 60

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
