// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let empty = try Empty(json)

import Foundation

// MARK: - Empty
struct UserList: Codable {
    let data: [UserListStruct]
}

// MARK: Empty convenience initializers and mutators

extension UserList {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UserList.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        data: [UserListStruct]? = nil
    ) -> UserList {
        return UserList(
            data: data ?? self.data
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Datum
struct UserListStruct: Codable {
    let id: String
    let clienteID: Int
    let nombre, apellido, fechaNacimiento, usuario: String
    let contraseña, telefono, correo: String
    let v: Int
    let creado, estatus: String
    let mascotas: [Mascota]
    let sexo: String
    let domicilio: Domicilio

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case clienteID = "clienteId"
        case nombre, apellido, fechaNacimiento, usuario, contraseña, telefono, correo
        case v = "__v"
        case creado, estatus, mascotas, sexo, domicilio
    }
}

// MARK: Datum convenience initializers and mutators

extension UserListStruct {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UserListStruct.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        clienteID: Int? = nil,
        nombre: String? = nil,
        apellido: String? = nil,
        fechaNacimiento: String? = nil,
        usuario: String? = nil,
        contraseña: String? = nil,
        telefono: String? = nil,
        correo: String? = nil,
        v: Int? = nil,
        creado: String? = nil,
        estatus: String? = nil,
        mascotas: [Mascota]? = nil,
        sexo: String? = nil,
        domicilio: Domicilio? = nil
    ) -> UserListStruct {
        return UserListStruct(
            id: id ?? self.id,
            clienteID: clienteID ?? self.clienteID,
            nombre: nombre ?? self.nombre,
            apellido: apellido ?? self.apellido,
            fechaNacimiento: fechaNacimiento ?? self.fechaNacimiento,
            usuario: usuario ?? self.usuario,
            contraseña: contraseña ?? self.contraseña,
            telefono: telefono ?? self.telefono,
            correo: correo ?? self.correo,
            v: v ?? self.v,
            creado: creado ?? self.creado,
            estatus: estatus ?? self.estatus,
            mascotas: mascotas ?? self.mascotas,
            sexo: sexo ?? self.sexo,
            domicilio: domicilio ?? self.domicilio
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Domicilio
struct Domicilio: Codable {
    let estado, ciudad, numero, codigoPostal: String
    let colonia, calle: String
}

// MARK: Domicilio convenience initializers and mutators

extension Domicilio {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Domicilio.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        estado: String? = nil,
        ciudad: String? = nil,
        numero: String? = nil,
        codigoPostal: String? = nil,
        colonia: String? = nil,
        calle: String? = nil
    ) -> Domicilio {
        return Domicilio(
            estado: estado ?? self.estado,
            ciudad: ciudad ?? self.ciudad,
            numero: numero ?? self.numero,
            codigoPostal: codigoPostal ?? self.codigoPostal,
            colonia: colonia ?? self.colonia,
            calle: calle ?? self.calle
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Mascota
struct Mascota: Codable {
    
    
    // MARK: Struct Properties
    static let kID = "_id"
    static let kMascotaID = "mascotaId"
    static let kNombre = "nombre"
    static let kEspecie = "especie"
    static let kEdad = "edad"
    static let kRaza = "raza"
    static let kV = "__v"
    static let kCreado = "creado"
    static let kEstatus = "estatus"
    static let kFoto = "foto"
    static let kCaracteristicas = "caracteristicas"
    static let kAltura = "altura"
    
    
    // MARK: Properties
    
    let id: String
    let mascotaID: Int
    let nombre, especie, raza: String
    let edad: Int
    let caracteristicas: String
    let v: Int
    let creado, estatus, foto: String
    let altura: Int
    
    public init(id: String, mascotaID: Int, nombre: String, especie: String, raza: String, edad: Int, caracteristicas: String, v: Int, creado: String, estatus: String, foto: String, altura: Int) {
        self.id = id
        self.mascotaID = mascotaID
        self.nombre = nombre
        self.especie = especie
        self.raza = raza
        self.edad = edad
        self.caracteristicas = caracteristicas
        self.creado = creado
        self.estatus = estatus
        self.foto = foto
        self.altura = altura
        self.v = v
    }
    
    public init?(with dictionary: Dictionary<String,Any>) {
        guard let id = dictionary[Mascota.kID] as? String,
              let mascotaID = dictionary[Mascota.kMascotaID] as? Int,
              let nombre = dictionary[Mascota.kNombre] as? String,
              let especia = dictionary[Mascota.kEspecie] as? String,
              let raza = dictionary[Mascota.kRaza] as? String,
              let edad = dictionary[Mascota.kEdad] as? Int,
              let caracteristicas = dictionary[Mascota.kCaracteristicas] as? String,
              let creado = dictionary[Mascota.kCreado] as? String,
              let estatus = dictionary[Mascota.kEstatus] as? String,
              let foto = dictionary[Mascota.kFoto] as? String,
              let altura = dictionary[Mascota.kAltura] as? Int,
              let v = dictionary[Mascota.kV] as? Int else { return nil }
        self.init(id: id, mascotaID: mascotaID, nombre: nombre, especie: especia, raza: raza, edad: edad, caracteristicas: caracteristicas, v: v, creado: creado, estatus: estatus, foto: foto, altura: altura)
        
    }

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case mascotaID = "mascotaId"
        case nombre, especie, raza, edad, caracteristicas
        case v = "__v"
        case creado, estatus, foto, altura
    }
}

// MARK: Mascota convenience initializers and mutators

extension Mascota {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Mascota.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        mascotaID: Int? = nil,
        nombre: String? = nil,
        especie: String? = nil,
        raza: String? = nil,
        edad: Int? = nil,
        caracteristicas: String? = nil,
        v: Int? = nil,
        creado: String? = nil,
        estatus: String? = nil,
        foto: String? = nil,
        altura: Int? = nil
    ) -> Mascota {
        return Mascota(
            id: id ?? self.id,
            mascotaID: mascotaID ?? self.mascotaID,
            nombre: nombre ?? self.nombre,
            especie: especie ?? self.especie,
            raza: raza ?? self.raza,
            edad: edad ?? self.edad,
            caracteristicas: caracteristicas ?? self.caracteristicas,
            v: v ?? self.v,
            creado: creado ?? self.creado,
            estatus: estatus ?? self.estatus,
            foto: foto ?? self.foto,
            altura: altura ?? self.altura
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}


