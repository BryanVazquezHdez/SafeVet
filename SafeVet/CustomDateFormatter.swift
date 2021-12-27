//
//  CustomDateFormatter.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 02/06/21.
//

import Foundation


extension Date {

    func get(_ component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {

        return calendar.component(component, from: self)

    }

}


final class CustomDateFormatter: NSObject {

    

    private static var dateFormatter: DateFormatter {

        let df = DateFormatter()

        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"

        return df

    }

    

    // MARK: Initializers

    

    private override init() { }

    

    static public func createDefault(dateString: String?) -> String {

        guard let dateString = dateString, let date = dateFormatter.date(from: dateString) else { return "NO DATA" }


        
        return "\(date.get(.year))-\(date.get(.month))-\(date.addingTimeInterval(86400).get(.day))"
                                                    //Pasamos un día entero por las diferencias entre las zonas horarios
    }

}



