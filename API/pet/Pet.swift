// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let empty = try? newJSONDecoder().decode(Empty.self, from: jsonData)

import Foundation

// MARK: - Empty
struct PetList: Codable {
    let data: [PetData]
}

// MARK: - Datum
struct PetData: Codable {
    let id: String
    let mascotaID: Int
    let nombre, especie, raza: String
    let edad, peso, v: Int
    let creado, estatus, foto, caracteristicas: String
    let altura: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case mascotaID = "mascotaId"
        case nombre, especie, raza, edad, peso
        case v = "__v"
        case creado, estatus, foto, caracteristicas, altura
    }
}
