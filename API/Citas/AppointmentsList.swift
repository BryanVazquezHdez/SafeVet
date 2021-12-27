// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let empty = try? newJSONDecoder().decode(Empty.self, from: jsonData)

import Foundation



// MARK: - AppointmentsList
struct  AppointmentsList: Codable {
    
    // MARK: Struct Properties
    
    static let kV = "__v"
    static let kFolio = "folio"
    static let kMascota = "mascota"
    static let kDia = "dia"
    static let kHora = "hora"
    static let kID = "_id"
    static let kCreado = "creado"
    static let kEstatus = "estatus"
    static let kTipo = "tipo"
    static let kEmpleado = "empleado"
    
    // MARK: Properties
    
    let data: Appoint?
    let horarioData: HorarioData?
    let msg: String?
    
    
    // MARK: Initalizers
    
    public init(data: Appoint?, horarioData: HorarioData?, msg: String?){
        self.data = data
        self.horarioData = horarioData
        self.msg = msg
    }
    
    
    public init?(with dictionary: Dictionary<String, Any>) {
        guard let v =  dictionary[AppointmentsList.kV] as? Int,
              let folio = dictionary[AppointmentsList.kFolio] as? Int,
              let dia = dictionary[AppointmentsList.kDia] as? String,
              let hora = dictionary[AppointmentsList.kHora] as? String,
              let id = dictionary[AppointmentsList.kID] as? String,
              let creado = dictionary[AppointmentsList.kCreado] as? String,
              let estatus = dictionary[AppointmentsList.kEstatus] as? String,
              let tipo = dictionary[AppointmentsList.kTipo] as? String,
              let mascotaDic = dictionary[AppointmentsList.kMascota] as? Dictionary<String,Any>,
              let mascota = Mascota(with: mascotaDic) else { return nil }

            var tempAppoint = Appoint(v: v, folio: folio, dia: dia, hora: hora, id: id, creado: creado, estatus: estatus, tipo: tipo, mascota: mascota, empleado: nil)
        
        let empleado = dictionary[AppointmentsList.kEmpleado] as? String
        
        if let empleado = empleado {
            tempAppoint.empleado = Empleado(name: empleado)
        }
        
        self.data = tempAppoint
        self.horarioData = nil
        self.msg = nil
        
    }
    
}

// MARK: - Appoint
struct Appoint: Codable {
    let v, folio: Int?
    let dia, hora: String?
    let id, creado, estatus, tipo: String?
    let mascota: Mascota
    var empleado: Empleado?

    enum CodingKeys: String, CodingKey {
        case v = "__v"
        case folio, dia, hora, mascota
        case id = "_id"
        case creado, estatus, tipo, empleado
    }
}

// MARK: - HorarioData
struct HorarioData: Codable {
    let n, nModified, ok: Int?
}

// MARK: Empleado
struct Empleado: Codable {
    // MARK: Properties
    var name: String
}
