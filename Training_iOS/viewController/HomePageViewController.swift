//
//  HomePageViewController.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 03/02/22.
//

import UIKit

class HomePageViewController: UIViewController {
    let cellReuseIdentifier = "shopItem"
    var viewmodel:ShopViewModel = ShopViewModel()
    var shopItemList:[AcessoriesModel] = []
    var Pagetitle: String?
    
    @IBOutlet weak var ShopingTable: UITableView!
    @IBOutlet weak var homeTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        ShopingTable.delegate = self
        ShopingTable.dataSource = self
        
        let nib = UINib.init(nibName: "ShoppingCustomCellTableViewCell", bundle: nil)
        ShopingTable.register(nib, forCellReuseIdentifier: cellReuseIdentifier)
        
        viewmodel.getShopingDetails { [weak self] itemList, _ in
            self?.shopItemList = itemList
            DispatchQueue.main.async {
                self?.ShopingTable.reloadData()
            }
            print("print \(itemList.count)")
//            print("shoping items\(self?.shopItemList.title ?? "String")")
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ShopingTable.estimatedRowHeight = 200
        ShopingTable.rowHeight = UITableView.automaticDimension
    }
    
}

extension HomePageViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shopItemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! ShoppingCustomCellTableViewCell
        cell.setData(data: shopItemList[indexPath.row])
        return cell
    }
    
    
}

extension HomePageViewController : UITableViewDelegate { }

