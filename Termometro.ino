float prima,Temperatura=0;
#include <DHT.h>
DHT dht(11,DHT11);
void setup() {
  if(!Serial)
 {
 }
 else
 {
Serial.begin(9600);
 }
dht.begin();
}
void loop() {
prima=dht.readTemperature();
int Umidita=dht.readHumidity();
int Temperatura=map(prima,0,100,570,140);
int Igrometro=map(Umidita,0,100,90,560);
Serial.print(Umidita);
Serial.print(" ");
Serial.print(Temperatura);
Serial.print(" ");
Serial.print(prima);
Serial.println("");


}
