    //
    //  ViewController.swift
    //  calculadoraLuismi
    //
    //  Created by alumnos on 25/09/2020.
    //  Copyright © 2020 alumnos. All rights reserved.
    //

    import UIKit

    class ViewController: UIViewController, CalculadoraProtocol {
        
        var numerosArray = [String] ();
        var numero1: Int = 0
        var numero2: Int = 0
        var signo = ""
        var resultadoUltimo = 0
        
        
        @IBOutlet weak var labelMostrar: UILabel!
        
        @IBAction func numberTouched(_ sender: UIButton) {
            switch sender.accessibilityIdentifier{
                
            case "numberOne":
                labelMostrar.text = "1"
               llenaArray(valor: "1")
                break
            
            case "numberTwo":
                labelMostrar.text = "2"
                llenaArray(valor: "2")
                break
           
            case "numberThree":
                labelMostrar.text = "3"
                llenaArray(valor: "3")
                break
                           
            case "numberFour":
                labelMostrar.text = "4"
                llenaArray(valor: "4")

                break
                
            case "numberFive":
                labelMostrar.text = "5"
                llenaArray(valor: "5")
                break
                           
            case "numberSix":
                labelMostrar.text = "6"
                llenaArray(valor: "6")
                break
                
            case "numberSeven":
                labelMostrar.text = "7"
                llenaArray(valor: "7")
                break
                           
            case "numberEight":
                labelMostrar.text = "8"
                llenaArray(valor: "8")
                break
            case "numberNine":
                labelMostrar.text = "9"
                llenaArray(valor: "9")
                break
            
            case "numberZero":
                labelMostrar.text = "0"
                llenaArray(valor: "0")
                break
            case "sumar":
                labelMostrar.text = "+"
                llenaArray(valor: "+")
                break
                
            case "restar":
                labelMostrar.text = "-"
                llenaArray(valor: "-")
                break
                           
            case "multiplicar":
                labelMostrar.text = "*"
                llenaArray(valor: "*")
                break
            case "dividir":
                labelMostrar.text = "/"
                llenaArray(valor: "/")
                break
            
            case "resultado":
            
                resultadoFinal()
                
                labelMostrar.text = String(resultadoUltimo)
                
                break
                
            case "borrarNumeros":
                
                borrarNumeros()
                labelMostrar.text = labelMostrar.text ?? "" + String(resultadoUltimo)
               break
                
                
                
            default:
                break
            }
            
        }
        
              
        
        func suma(num1: Int, num2: Int) -> Int {
            let resultado = num1 + num2;
            return resultado;
        }
        
        func resta(num1: Int, num2: Int) -> Int {
            let resultado = num1 - num2;
            return resultado;
        }
        
        func division(num1: Int, num2: Int) -> Float {
            let resultado = num1 / num2;
            return Float(resultado);
        }
        
        func multiplicacion(num1: Int, num2: Int) -> Int {
            let resultado = num1 * num2;
            return resultado;
        }
        
        func modulo(num1: Int, num2: Int) -> Int {
            let resultado = num1 % num2;
            return resultado;
        }
        
        func resultadoFinal() {
            numero1 = Int(numerosArray[0]) ?? 0
            numero2 = Int(numerosArray[2]) ?? 0
            signo = numerosArray[1]
            
            switch signo {
            case "+":
                resultadoUltimo = suma(num1: numero1, num2: numero2)
                break
                
            case "-":
                resultadoUltimo = resta(num1: numero1, num2: numero2)
                break
                
            case "*":
                resultadoUltimo = multiplicacion(num1: numero1, num2: numero2)
                break
                
            case "/":
                resultadoUltimo = Int(division(num1: numero1, num2: numero2))
                break
                
            case "%":
                resultadoUltimo = modulo(num1: numero1, num2: numero2)
                break
            default:
                break
                }
            
            
        }
        
        func llenaArray(valor: String) {
            numerosArray.append(valor);
        }
        
        func borrarNumeros() {
            numerosArray = [String] ();
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
    }

    protocol CalculadoraProtocol {
        
       
        
        func suma(num1: Int, num2: Int) ->Int
        func resta(num1: Int, num2: Int)-> Int
        
        func division(num1: Int, num2:Int)->Float
        
        func multiplicacion(num1: Int, num2: Int)-> Int
        
        func modulo(num1: Int, num2: Int)-> Int
        
        func resultadoFinal()
        
        func llenaArray(valor: String)
        
        func borrarNumeros()
       
    }
