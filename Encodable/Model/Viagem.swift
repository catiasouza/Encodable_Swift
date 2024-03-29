
import Foundation

class Viagem: NSObject, Encodable{
    
    // MUDANDO A VARIAVEL
    enum CodingKeys: String, CodingKey{
        case id, titulo, quantidadeDias = "quantidade_de_dias", preco, localizacao
    }
    //ATRIBUTOS
    
    let id: Int
    let titulo: String
    let quantidadeDias: Int
    let preco: String
    let localizacao: String
    
    //INIT
    
    init(_ id: Int, _ titulo: String, _ quantidadeDias: Int,_ preco: String, _ localizacao: String) {
        
        self.id = id
        self.titulo = titulo
        self.quantidadeDias = quantidadeDias
        self.preco = preco
        self.localizacao = localizacao
        
        
    }
}

