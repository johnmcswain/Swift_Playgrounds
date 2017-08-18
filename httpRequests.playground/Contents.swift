//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

PlaygroundPage.current.needsIndefiniteExecution = true


var url = URL(string:"http://api.mockaroo.com/api/0a19de50?count=1000&key=bede6760")
let session = URLSession.shared

let task = session.dataTask(with: url!){ (data, _, _) -> Void in
    if let data = data {
        let string = String(data: data, encoding: String.Encoding.utf8)
        print(string) //JSONSerialization
    }
}
task.resume()


