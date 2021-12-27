//
//  ExpList.swift
//  SafeVet
//
//  Created by Bryan Vázquez on 02/06/21.
//


import Foundation

// MARK: - ExpList
struct ExpList: Codable {
    let data: [ExpListStruct]
}

// MARK: - ExpListStruct
struct ExpListStruct: Codable {
    let id: String?
    let expedienteID: Int?
    let cita: CitaData?
    let mascota: MascotaData?
    let empleado: EmpleadoData?
    let anotaciones, diagnostico: String?
    let v: Int?
    let creado: String?
    let anexos: [Anexo]?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case expedienteID = "expedienteId"
        case cita, mascota, empleado, anotaciones, diagnostico
        case v = "__v"
        case creado, anexos
    }
}

// MARK: - Anexo
struct Anexo: Codable {
    let nombre: String?
    let url: String?
    let tipo, id: String?

    enum CodingKeys: String, CodingKey {
        case nombre, url, tipo
        case id = "_id"
    }
}

// MARK: - Cita
struct CitaData: Codable {
    let id: String?
    let folio: Int?
    let cliente: EmpleadoData?
    let mascota, dia, hora: String?
    let v: Int?
    let creado, estatus, tipo: String?
    let empleado: JSONNull?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case folio, cliente, mascota, dia, hora
        case v = "__v"
        case creado, estatus, tipo, empleado
    }
}

// MARK: - Empleado
struct EmpleadoData: Codable {
    let id: String?
    let clienteID: Int?
    let nombre, apellido, usuario, contraseña: String?
    let fechaNacimiento, telefono, correo: String?
    let v: Int?
    let creado, estatus: String?
    let mascotas: [String]?
    let sexo: String?
    let domicilio: DomicilioData?
    let empleadoID: Int?
    let rol: String?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case clienteID = "clienteId"
        case nombre, apellido, usuario, contraseña, fechaNacimiento, telefono, correo
        case v = "__v"
        case creado, estatus, mascotas, sexo, domicilio
        case empleadoID = "empleadoId"
        case rol
    }
}

// MARK: - Domicilio
struct DomicilioData: Codable {
    let estado, ciudad, numero, codigoPostal: String?
    let colonia, calle: String?
}

// MARK: - Mascota
struct MascotaData: Codable {
    let id: String?
    let mascotaID: Int?
    let nombre, especie, raza: String?
    let edad, peso, v: Int?
    let creado, estatus, foto, caracteristicas: String?
    let altura: Int?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case mascotaID = "mascotaId"
        case nombre, especie, raza, edad, peso
        case v = "__v"
        case creado, estatus, foto, caracteristicas, altura
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
