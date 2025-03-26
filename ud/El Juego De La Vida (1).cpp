// Vuernes 2:00 pm Escribirle

#include<iostream>  // std::cout, std::endl
#include<stdlib.h>  // srand y rand - números aleatoreos
#include<time.h>    // time - semilla (números aleatores)
#include<thread>    // std::this_thread::sleep_for
#include<chrono>    // std::chrono::milliseconds

// Define el SO
#ifdef _WIN32
    #define clear "cls"
#else
    #define clear "clear"
#endif

using namespace std;
using namespace this_thread;
using namespace chrono;

int filas, columnas;

const int filas_predeterminadas = 300;
const int columnas_predeterminadas = 300;
int tablero[filas_predeterminadas][columnas_predeterminadas];

int tiempo = 1000;
int iteraciones = 3;

int jugador_x, jugador_y;

// Define los caracteres del marco del tablero y las celdas vivas
const char celda = 254;         // ■
const char vertical = 186;      // ║
const char esquina1 = 187;      // ╗
const char esquina2 = 188;      // ╝
const char esquina3 = 200;      // ╚
const char esquina0 = 201;      // ╔
const char horizontal = 205;    // ═
const string horizontal_doble = {horizontal, horizontal};

void color();
void limpiar_pantalla();
int leer_numero();
void pedir_dimensiones();
int bit_aleatoreo();
void disposicion_inicial_aleatorea();
void imprimir_tablero();
void siguiente_estado();

int main() {
    color(); // Configura el color de la terminal en windows

    srand( time(NULL) ); // Inicializa los números aleatoreos

    int opcion;

    while (true) {
        limpiar_pantalla();

        cout << "1. Correr" << endl;
        cout << "2. Cantidad iteraciones" << endl;
        cout << "3. Dimensiones" << endl;
        cout << "4. Disposicion inicial" << endl;
        cout << "5. Tiempo de cambio" << endl;
        cout << "6. Posicion Jugador\n> ";

        cin >> opcion;

        if (opcion == 1) {
            tablero[jugador_y][jugador_x] = 1;
            if (iteraciones > 0) {
                for (int i = 0; i < iteraciones; i++) {
                    imprimir_tablero();
                    siguiente_estado();
                }
            } else {
                while (true) {
                    imprimir_tablero();
                    siguiente_estado();
                }
            }
        } else if (opcion == 2) {
            cout << "Cantidad iteraciones\n> ";
            cin >> iteraciones;
        } else if (opcion == 3) {
            pedir_dimensiones();
        } else if (opcion == 4) {
            disposicion_inicial_aleatorea();
        } else if (opcion == 5) {
            cout << "Tiempo en milisegundos\n> ";
            cin >> tiempo;
        } else if (opcion == 6) {
            cout << "X\n> ";
            cin >> jugador_x;

            cout << "Y\n> ";
            cin >> jugador_y;
            //
        }
    }

    return 0;
}

void color() {
    if (clear == "cls")
        system("color a");
}

void limpiar_pantalla() {
    system(clear);
}

/*
int leer_numero() {
    int longitud = 10;
    char texto[longitud];
    bool numero = true;
    char caracter = texto[0];

    cin >> texto;

    for (int i = 0; numero; i++) {
        if (caracter < 48)
            numero = false;
        else if (caracter > 57)
            numero = false;

        if (i)
        caracter = texto[i];
    }

    return atoi(texto);
}
*/

void pedir_dimensiones() {
    limpiar_pantalla();

    // Lee la cantidad de columnas
    cout << "Columnas\n> ";
    cin >> columnas;

    // Lee la cantidad de filas
    cout << "\nFilas\n> ";
    cin >> filas;
}

int bit_aleatoreo() {
    int n_aleatoreo;

    if ( rand() % 10 < 5 ) // Se puede optimizar
        n_aleatoreo = 0;
    else
        n_aleatoreo = 1;

    return n_aleatoreo;
}

void disposicion_inicial_aleatorea() {
    for (int y = 0; y < filas; y++) {
        for (int x = 0; x < columnas; x++)
            tablero[y][x] = bit_aleatoreo();
    }
}

void imprimir_tablero() {
    limpiar_pantalla();

    string impresion = "";

    // Marco superior
    impresion = esquina0;
    impresion += horizontal;

    for (int i = 0; i < columnas; i++)
        impresion += horizontal_doble;

    impresion = impresion + esquina1 + "\n";

    // Tablero
    for (int y = 0; y < filas; y++) {
        impresion = impresion + vertical + " ";

        for (int x = 0; x < columnas; x++) {
            if (tablero[y][x] == 0)
                impresion += "  ";
            else
                impresion = impresion + celda + " ";
        }

        impresion = impresion + vertical + "\n";
    }

    // Marco inferior
    impresion = impresion + esquina3 + horizontal;

    for (int i = 0; i < columnas; i++)
        impresion += horizontal_doble;

    impresion = impresion + esquina2 + "\n";

    int conversion = (jugador_y * (columnas - 1)) + columnas - 1;

    // if ( impresion[conversion] == 254 )
    if (impresion[0] == 201)
        cout << "Igual";
    else
        cout << "Mal";

    cout << impresion;

    sleep_for( milliseconds(tiempo) );
}

void siguiente_estado() {
    int memoria[2][columnas_predeterminadas];

    // (0, 0)
    int n = tablero[0][1] + tablero[1][0] + tablero[1][1];

    if ( n == 3 )
        memoria[0][0] = 1;
    else if ( n == 2 )
        memoria[0][0] = tablero[0][0];
    else
        memoria[0][0] = 0;

    // (segunda a penúltima, 0)
    int limite_x = columnas - 1;
    int limite_y = filas - 1;

    for (int x = 1; x < limite_x; x++) {
        n = tablero[0][x-1] + tablero[0][x+1] + tablero[1][x-1] + tablero[1][x] + tablero[1][x+1];

        if ( n == 3 )
            memoria[0][x] = 1;
        else if ( n == 2 )
            memoria[0][x] = tablero[0][x];
        else
            memoria[0][x] = 0;
    }

    // (final, 0)
    n = tablero[0][limite_x-1] + tablero[1][limite_x-1] + tablero[1][limite_x];

    if ( n == 3 )
        memoria[0][limite_x] = 1;
    else if ( n == 2 )
        memoria[0][limite_x] = tablero[0][limite_x];
    else
        memoria[0][limite_x] = 0;

    // --- ---  --- ---

    int i_memoria = 1;

    for (int y = 1; y < limite_y; y++) {
        // (0, segunda a penúltima)
        n = tablero[y-1][0] + tablero[y-1][1] + tablero[y][1] + tablero[y+1][0] + tablero[y+1][1];

        if (n == 3)
            memoria[i_memoria][0] = 1;
        else if (n == 2)
            memoria[i_memoria][0] = tablero[y][0];
        else
            memoria[i_memoria][0] = 0;

        // (segunda a penúltima, segunda a penúltima)
        for (int x = 1; x < limite_x; x++) {
            n = tablero[y-1][x-1] + tablero[y-1][x] + tablero[y-1][x+1] + tablero[y][x-1] + tablero[y][x+1] + tablero[y+1][x-1] + tablero[y+1][x] + tablero[y+1][x+1];

            if (n == 3)
                memoria[i_memoria][x] = 1;
            else if (n == 2)
                memoria[i_memoria][x] = tablero[y][x];
            else
                memoria[i_memoria][x] = 0;
        }

        // (final, segunda a penúltima)
        n = tablero[y-1][limite_x-1] + tablero[y-1][limite_x] + tablero[y][limite_x-1] + tablero[y+1][limite_x-1] + tablero[y+1][limite_x];

        if (n == 3)
            memoria[i_memoria][limite_x] = 1;
        else if (n == 2)
            memoria[i_memoria][limite_x] = tablero[y][limite_x];
        else
            memoria[i_memoria][limite_x] = 0;

        // Alterna i_memoria para guardar de forma alterna el siguiente estado en memoria
        if (i_memoria == 1)
            i_memoria = 0;
        else
            i_memoria = 1;

        for (int x = 0; x < columnas; x++)
            tablero[y-1][x] = memoria[i_memoria][x];
    }

    // --- ---  --- ---

    // (0, final)
    n = tablero[limite_y-1][0] + tablero[limite_y-1][1] + tablero[limite_y][1];

    if ( n == 3 )
        memoria[i_memoria][0] = 1;
    else if ( n == 2 )
        memoria[i_memoria][0] = tablero[limite_y][0];
    else
        memoria[i_memoria][0] = 0;

    // (segunda a penúltima, final)
    for (int x = 1; x < limite_x; x++) {
        n = tablero[limite_y-1][x-1] + tablero[limite_y-1][x] + tablero[limite_y-1][x+1] + tablero[limite_y][x-1] + tablero[limite_y][x+1];

        if ( n == 3 )
            memoria[i_memoria][x] = 1;
        else if ( n == 2 )
            memoria[i_memoria][x] = tablero[limite_y][x];
        else
            memoria[i_memoria][x] = 0;
    }

    // (final, final)
    n = tablero[limite_y-1][limite_x-1] + tablero[limite_y-1][limite_x] + tablero[limite_y][limite_x-1];

    if ( n == 3 )
        memoria[i_memoria][limite_x] = 1;
    else if ( n == 2 )
        memoria[i_memoria][limite_x] = tablero[limite_y][limite_x];
    else
        memoria[i_memoria][limite_x] = 0;

    // Guarda

    limite_y--;

    for (int y = limite_y; y < filas; y++) {
        if (i_memoria == 1)
            i_memoria = 0;
        else
            i_memoria = 1;

        for (int x = 0; x < columnas; x++)
            tablero[y][x] = memoria[i_memoria][x];
    }
}
