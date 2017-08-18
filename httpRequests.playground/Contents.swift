//: Playground - noun: a place where people can play

import UIKit


var url = URL(string:"https://api.mockaroo.com/api/0a19de50?count=1000&key=bede6760")
let urlRequest = URLRequest(url:url!)
let config = URLSessionConfiguration.default
let session = URLSession.shared

let task = session.dataTask(with: urlRequest){(data, response, error) in
    
    guard let responseData = data else {
        print("Error: did not receive data")
        return
    }
        do {
            guard let item = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: AnyObject] else{
                print("error trying to convert data to JSON")
                return
            }
            for item in responseData{
                
                print(item)
            }
        } catch  {
            print("error trying to convert data to JSON")
            return
        }
        
    
}
task.resume()




