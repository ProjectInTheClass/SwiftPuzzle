//Solution goes in Sources

import Foundation

class Gigasecond {
    
    var startDate:String
    
    var description:String{
        get {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
            dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
            
            let date = dateFormatter.date(from: startDate)!
            
            let convertedDate = date.addingTimeInterval(1000000000)
            
            return dateFormatter.string(from: convertedDate)
        }
    }
    
    init?(from:String)
    {
        self.startDate = from
    }
}
