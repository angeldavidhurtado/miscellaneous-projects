int t_r = 0, t_a = 1, t_v = 3;
int p_r = 4, p_v = 5;
int tiempo = 3000;
volatile int tiempo_variable = tiempo;
volatile bool lugar = false, posicion = false;

boolean estado = false;

void setup() {
  pinMode(t_r, OUTPUT);
  pinMode(t_a, OUTPUT);
  pinMode(t_v, OUTPUT);

  pinMode(p_r, OUTPUT);
  pinMode(p_v, OUTPUT);

  digitalWrite(t_r, LOW);
  digitalWrite(t_a, LOW);
  digitalWrite(t_v, LOW);

  digitalWrite(p_r, LOW);
  digitalWrite(p_v, LOW);

  attachInterrupt( digitalPinToInterrupt(2), reinicio, RISING );
}

void reinicio() {
  tiempo_variable = 9000;
  posicion = lugar;
}

void loop() {
  digitalWrite(t_r, HIGH);
  digitalWrite(p_v, HIGH);
  lugar = true;
  delay(tiempo_variable);
  lugar = false;
  if (posicion == true) {
    posicion = false;
  } else {
    tiempo_variable = tiempo;
  }
  digitalWrite(p_v, LOW);
  
  digitalWrite(t_a, HIGH);
  digitalWrite(p_r, HIGH);
  delay(tiempo);
  digitalWrite(t_r, LOW);
  digitalWrite(t_a, LOW);
  
  digitalWrite(t_v, HIGH);
  delay(tiempo);
  digitalWrite(t_v, LOW);
  
  digitalWrite(t_a, HIGH);
  delay(tiempo);
  digitalWrite(p_r, LOW);
  digitalWrite(t_a, LOW);  
}
