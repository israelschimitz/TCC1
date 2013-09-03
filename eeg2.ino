
// EEG

#include "pins_arduino.h"
#include "avr/io.h"
#include "stdint.h"
#include "avr/interrupt.h"
#include "LiquidCrystal.h"

// Set Display
LiquidCrystal lcd( 8, 9, 4, 5, 6, 7 );


void EstabeleceContato();

/// VARIAVEIS ///
long EEG = 0;
float TempoInicial = 0;
float TempoFinal = 0;
float DeltaT = 0;


int LeituraEEG;
int PosicaoGraus;
/// Variaveis para serial  ///
int   RecebidosSerial[3];          // Vetor de dados recebidos da serial
int   ReadByteLow = 0;             // Byte Low de leitura
int   ReadByteHigh = 0;            // Byte High de leitura
int   BotaoLigado = 0;             // Variavel ON/OFF do GUI Matlab
long  TransporteDados = 0;         // Variavel a ser mandada via serial
float Referencia = 0;              // Referencia de motor;
int   WriteByteLow = 0;            // Byte Low de escrita
int   WriteByteHigh = 0;           // Byte High de escrita


/// Setup ///
void setup() {
  
  //Inicia a serial	
  Serial.begin(256000);
  
    
  // Inicia comunicação com o Matlab
  EstabeleceContato();

//  Inicia o LCD
  //lcd.begin(16, 2);       // LCD - configura o número de colunas e linhas 
  //lcd.clear();            // limpa display LCD
  //delay(200);
}

/// Loop ///
void loop() {
   
      //TempoInicial = millis()/1000;
      LeituraEEG = analogRead(A8);                          // Leitura EEG
      //EEG = map(LeituraEEG,0,1023,0,5);                   // Ajuste de escala 
      
        
      // atualiza a serial    
      //TransporteDados = (long)LeituraEEG; //WriteByteHigh;
      //TransporteDados = TransporteDados<<8;                          // Valor de temperatura e potencia
      //TransporteDados += TempoInicial; //WriteByteLow;                               // São unidos numa única variável.
      Serial.println(LeituraEEG);                               // Envio de dados para o Matlab.


      //lcd.clear();
      //lcd.setCursor(0,0);                   //Posição do cursor
      //lcd.print(LeituraEEG);
      
      //lcd.setCursor(0,1);                   //Posição do cursor
      //lcd.print(DeltaT);
      //lcd.setCursor(9,1);                   //Posição do cursor
      //lcd.print(TempoFinal); 
      
      delay(10);
      //TempoFinal = millis ();
      //DeltaT = TempoFinal - TempoInicial;
}

//Inicia comunicacao com o Matlab
void EstabeleceContato() {
    while(Serial.available() <= 0) {
        Serial.println('A');
        delay(50);
    }
    while(Serial.available()>0){
        char q = Serial.read();
    }
}

