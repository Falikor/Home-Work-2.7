//
//  DetailPersonViewController.swift
//  Home Work 2.7
//
//  Created by Татьяна Татьяна on 08.06.2021.
//

import UIKit

class DetailPersonViewController: UIViewController {

    @IBOutlet weak var imagePerson: UIImageView!
    @IBOutlet weak var phonePerson: UILabel!
    @IBOutlet weak var emailPerson: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePerson.image = UIImage(named: person?.name ?? "")
        phonePerson.text = String(person?.phone ?? 0)
        emailPerson.text = person?.email ?? ""
        navigationItem.title = person?.fulname ?? ""

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
