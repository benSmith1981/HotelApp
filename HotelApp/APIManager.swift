//
//  APIManager.swift
//  hotelApp
//
//  Created by Mariano Martinez on 8/4/18.
//  Copyright © 2018 Nacho Martinez. All rights reserved.
//

import Foundation
import Alamofire

class APIManager{
    static let shared_APIManager = APIManager() //Singleton. Use one in all the project.
    var offer_url = "https://app-dev.dusit.com/api/v1/offers"
    
    private init(){ //Only accesable from here.
    }
    
    func getOffers(completionSuccess: @escaping ([Offer])->Void, completionFail:@escaping(String)->Void) {
        if let url = Bundle.main.url(forResource: "offers", withExtension: "json") {
            let decoder = JSONDecoder()
            do{
                let data = try Data(contentsOf: url)
                let offers = try decoder.decode([Offer].self, from: data)
                completionSuccess(offers)
                print(offers.count)
            }catch(let error){
                completionFail(error.localizedDescription)
            }
        }
//        if let url = R.file.offersJson() {
//            let decoder = JSONDecoder()
//            do{
//                let data = try Data(contentsOf: url)
//                let offers = try decoder.decode([Offer].self, from: data)
//                completionSuccess(offers)
//                print(offers.count)
//            }catch(let error){
//                completionFail(error.localizedDescription)
//            }
//        }
        
//            Alamofire.request(offer_url, method:.get,encoding:JSONEncoding.default).responseData{(response) in
//                switch response.result{
//                case .success(var data):
//                    data = response.data!
//                    let decoder = JSONDecoder()
//                    do{
//                        let offers = try decoder.decode([Offer].self, from: data)
//                        completionSuccess(offers)
//                        print(offers.count)
//                    }catch(let error){
//                        completionFail(error.localizedDescription)
//                    }
//                case .failure(let failMessage):
//                    completionFail(failMessage.localizedDescription)
//                }
//            }
//        }
    }
}
