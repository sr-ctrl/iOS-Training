//
//  ShoppingService.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 09/02/22.
//

import Foundation

protocol ShoppingService{
    func getService(completion: @escaping ([AcessoriesModel], CustomError?) -> Void)
}

class ShoppingRemoteService:ShoppingService{
    func getService(completion: @escaping ([AcessoriesModel], CustomError?) -> Void){
        //
        let shopUrl = "https://fakestoreapi.com/products?limit=10"
        var request = URLRequest(url: URL(string: shopUrl)!)
        request.httpMethod = "GET"
        
        let shopTask = URLSession.shared.dataTask(with: request){
            data, response, error in
            guard let httpResponse = response as? HTTPURLResponse,
                  let data = data else {
                      completion([],CustomError.unknownError)
                      return
                  }
            switch httpResponse.statusCode{
            case 200:
                do{
                    let decodJson = try JSONDecoder().decode([AcessoriesModel].self, from: data)
                    print("response is is \(decodJson)")
                    completion(decodJson, nil)
                } catch{
                    print(error)
                    completion([],CustomError.unknownError)
                }default:
                completion([],CustomError.unknownError)
            }
        }
        shopTask.resume()
    }
}

