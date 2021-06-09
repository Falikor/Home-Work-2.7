//
//  SectionPersonListTableViewController.swift
//  Home Work 2.7
//
//  Created by Татьяна Татьяна on 08.06.2021.
//

import UIKit

class SectionPersonListTableViewController: UITableViewController {

    
    private let person = DataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        person.personGroup.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return person.personGroup[section].fulname
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 50, y: view.frame.size.width - 10, width: view.frame.size.width, height: 60))
        let image = UIImageView(image: UIImage(named: person.personGroup[section].name))
        image.frame.size.height = 30
        image.frame.size.width = 30
        let label = UILabel(frame: CGRect(x: 70, y: 0, width: 300, height: header.frame.size.height - 10))
        label.text = person.personGroup[section].fulname
        label.font = UIFont(name:"HelveticaNeue-Bold", size: 17.0)
        header.addSubview(image)
        header.addSubview(label)
        return header
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellSection", for: indexPath)
            let people = person.personGroup[indexPath.row]
            var content = cell.defaultContentConfiguration()
            content.text = String(people.phone)
            content.image = UIImage(named: "telephone")
            cell.contentConfiguration = content
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellSectionNext", for: indexPath)
            let people = person.personGroup[indexPath.row]
            var content = cell.defaultContentConfiguration()
            content.text = people.email
            content.image = UIImage(named: "email")
            cell.contentConfiguration = content
            return cell
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
