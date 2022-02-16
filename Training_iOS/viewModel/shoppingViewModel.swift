//
//  shoppingViewModel.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 09/02/22.
//

import Foundation

class ShopViewModel{
    private var shopingService:ShoppingService = ShoppingRemoteService()
    init(){
        
    }
    func getShopingDetails (completion: @escaping ([AcessoriesModel],CustomError?)->Void){
        shopingService.getService {data, error in
            completion(data, error)
        }
    }
}
