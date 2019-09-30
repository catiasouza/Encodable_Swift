
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        favoritarViagem()
        
    }

    func favoritarViagem() {
        
        let viagem = Viagem(1,"Cancun_Mexico", 10, "6.400,00", "Quintana Roo")
        
        //CRIANDO DICIONARIO DE STRING
//        let parametros:[String: Any] = [
//            "id": viagem.id,
//            "titulo": viagem.titulo,
//            "quantidade_de_dias": viagem.quantidadeDias,
//            "preco": viagem.preco,
//            "localizacao": viagem.localizacao]
//        print(parametros)
        let viagemCodificada = try? JSONEncoder().encode(viagem)
        guard let viagemData = viagemCodificada else{
            return
        }
        if let json = String(data: viagemData, encoding: .utf8){
            print(json)
        }
    }
}


