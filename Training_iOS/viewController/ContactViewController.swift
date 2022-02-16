//
//  ContactViewController.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 05/02/22.
//

import UIKit

class ContactViewController: UIViewController {

    var ContactList = [ContactDetails]()
    
    @IBOutlet weak var ContactTable: UITableView!
    
//    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "ContactTableCell", bundle: nil)
        ContactTable.register(nib, forCellReuseIdentifier: "ContactCell")
        loadDetails()
        ContactTable.delegate = self
        ContactTable.dataSource = self
    }
    
    func loadDetails(){
        let shahrukh = ContactDetails(cName:Name.Shahrukh, cNumber: 9028521138, cImage:image.imageOne!)
        ContactList.append(shahrukh)
        let khan = ContactDetails(cName: Name.Khan, cNumber: 8983261070, cImage:image.imageTwo!)
        ContactList.append(khan)
        let Humayun = ContactDetails(cName: Name.Humayun, cNumber: 9175717521, cImage:image.imageThree!)
        ContactList.append(Humayun)
        print("\(ContactList.count)")
    }
}

extension ContactViewController : UITableViewDelegate{
    
}

extension ContactViewController :UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactTableCell
        contactCell.ContactImage.image = (ContactList[indexPath.row].ContactImage)
        contactCell.ContactImage.layer.cornerRadius = contactCell.ContactImage.frame.width / 2
        contactCell.ContactName.text = ContactList[indexPath.row].Name
        contactCell.ContactNumber.text = "\(ContactList[indexPath.row].Number)"
        return contactCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you selected the cell\(indexPath)")
        let toDetailViewController:ContactDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "ContactDetailViewController") as! ContactDetailViewController
        toDetailViewController.name = ContactList[indexPath.row].Name
        toDetailViewController.number = "\(ContactList[indexPath.row].Number)"
        toDetailViewController.image = ContactList[indexPath.row].ContactImage
        self.navigationController?.pushViewController(toDetailViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            ContactList.remove(at: indexPath.row).Name
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}




