//
//  Enum.swift
//  Training_iOS
//
//  Created by Austrax-Mac9 on 09/02/22.
//

import Foundation

enum CustomError: Error {
    case unknownError
}

extension CustomError:CustomStringConvertible{
    public var description: String {
        switch self{
        case .unknownError:
            return "Unknown error from server side"
        }
    }
}


//private func getData(from url:String){
//
//    URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data, response, error in
//
//        guard let data = data else {
//            print("something is wrong")
//            return
//        }
//        var result: [AcessoriesModel]?
//        let decoder = JSONDecoder()
//        do{
//            result = try decoder.decode([AcessoriesModel].self, from: data)
//        }
//        catch{
//            print("failed to converts \(error.localizedDescription)")
//        }
//        guard let json = result else {
//            return
//        }
//        print("print \(json.description)")
//    }).resume()
//}
