import processing.serial.*;
Serial miaporta = new Serial(this,"COM3",9600);
void setup()
{
background(240);
size(1080,920);
}
void testi()
{
fill(0);
textSize(15);
text("10°C",850,522);
text("20°C",850,479);
text("30°C",850,436);
text("40°C",850,393);
text("50°C",850,350);
text("60°C",850,307);
text("70°C",850,264);
text("80°C",850,221);
text("90°C",850,178);
text("100°C",850,135);

}
void Termometro()
{
fill(#F4A460);
stroke(60);
strokeWeight(10);
rect(700,40,230,700);
fill(255);

stroke(255);
strokeWeight(60);
line(815,90,815,560);
stroke(255);
strokeWeight(10);
ellipse(815,600,100,80);



}
void Igrometro()
{
fill(#F4A460);
strokeWeight(10);
stroke(60);
rect(265,250,300,250);
textSize(15);

}
void draw()
{
  Igrometro();
Termometro();
testi();
text("50°F",740,522);
text("68°F",740,479);
text("86°F",740,436);
text("104°F",740,393);
text("122°F",740,350);
text("140°F",740,307);
text("158°F",740,264);
text("176°F",740,221);
text("194°F",740,178);
text("212°F",740,135);
String Temperatura=miaporta.readStringUntil(13);
if(Temperatura!=null)
{
 try
 {
 String message[]= splitTokens(Temperatura);

int Umidita=int(message[0]);
int i= int(message[1]);
float t=float(message[2]);
float f=(t*9/5)+32;
strokeWeight(40);
stroke(255,0,0);
line(815,i,815,565);
noStroke();
fill(255,0,0);
ellipse(815,600,92,80);
fill(60);
textSize(30);
text(nfc(t,1)+" °C",770,700);
text(nfc(Umidita,1)+" % Rh",285,310);
text(nfc(t,1)+" °C",285,375);
text(nfc(f,1)+" °F",285,435);
println(mouseY);
 }
catch (ArrayIndexOutOfBoundsException e) {
}
}
}
