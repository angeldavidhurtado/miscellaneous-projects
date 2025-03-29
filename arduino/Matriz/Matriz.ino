int lista_x[] = {10, 11, 12, 13, 14, 15, 16, 17};
int lista_y[] = {9, 8, 7, 6, 5, 4, 3, 2};

int longitud_x = sizeof(lista_x) / 2;
int longitud_y = sizeof(lista_y) / 2;

boolean a[8][8] = {
  {0, 0, 0, 0, 0, 0, 0, 0},
  {0, 1, 1, 0, 0, 1, 1, 0},
  {0, 1, 1, 0, 0, 1, 1, 0},
  {0, 0, 0, 0, 0, 0, 0, 0},
  {0, 1, 0, 0, 0, 0, 1, 0},
  {0, 0, 1, 1, 1, 1, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0},
};

void setup() {
  Serial.begin(9600);

  for (int i = 2; i < 18; i++) {
    pinMode(i, OUTPUT);
  }

  limpiar();
}

void loop() {
  escribir_matriz(a);
}

void escribir_matriz(boolean matriz[][8]) {
  for (int columnas = 0; columnas < 8; columnas++) {
    boolean columna[8];
    for (int filas = 0; filas < 8; filas++) {
      columna[filas] = matriz[filas][columnas];
    }
    escribir_columna(columnas, columna);
  }
}

void escribir_columna(int columna, boolean filas[]) {
  digitalWrite(lista_x[columna], LOW);

  for (int i = 0; i < longitud_y; i++) {
    digitalWrite(lista_y[i], filas[i]);
  }

  delay(1);

  digitalWrite(lista_x[columna], HIGH);

  for (int i = 0; i < longitud_y; i++) {
    digitalWrite(lista_y[i], LOW);
  }
}

void limpiar() {
  for (int i = 0; i < 8; i++) {
    digitalWrite(lista_x[i], HIGH);
  }

  for (int i = 0; i < 8; i++) {
    digitalWrite(lista_y[i], LOW);
  }
}
