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
int jugador_i, jugador_x, jugador_y;

bool jugador_vivo = true;
bool continuar = true;
int puntos = -1;

const int filas_predeterminadas = 300;
const int columnas_predeterminadas = 300;
int tablero[filas_predeterminadas][columnas_predeterminadas];
int tablero_jugador[filas_predeterminadas][columnas_predeterminadas];
//int tiempo = 700;
int tiempo = 5000;

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
void portada();
void pedir_dimensiones();
void jugador();
int bit_aleatoreo();
void disposicion_inicial_aleatorea();
void reiniciar_tablero_jugador();
void imprimir_tablero();
void imprimir_tablero_jugador();
void siguiente_estado();

int main() {
    color(); // Configura el color de la terminal en windows

    portada();
    system("pause");

    srand( time(NULL) ); // Inicializa los números aleatoreos
    pedir_dimensiones();
    disposicion_inicial_aleatorea();

    limpiar_pantalla();
    cout << "Modo" << endl;
    cout << "1. Chucho" << endl;
    cout << "2. Angel\n";

    int opcion;
    cin >> opcion;

    if (opcion == 1) {
        jugador();

        while (jugador_vivo) {
            imprimir_tablero();
            siguiente_estado();
            limpiar_pantalla();

            if (tablero[jugador_y][jugador_x] == 0)
                jugador_vivo = false;
        }
    } else if (opcion == 2) {
        while (jugador_vivo) {
            puntos++;
            continuar = true;
            reiniciar_tablero_jugador();

            while (continuar) {
                imprimir_tablero_jugador();
                jugador();

                if (jugador_x > -1) {
                    if (tablero_jugador[jugador_y][jugador_x] == 0)
                        tablero_jugador[jugador_y][jugador_x] = 1;
                    else
                        tablero_jugador[jugador_y][jugador_x] = 0;
                } else
                    continuar = false;
            }

            siguiente_estado();

            for (int y = 0; y < filas; y++) {
                for (int x = 0; x < columnas; x++) {
                    if ( tablero[y][x] != tablero_jugador[y][x] ) {
                        jugador_vivo = false;
                        x = columnas;
                        y = filas;
                    }
                }
            }
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

void portada() {
    limpiar_pantalla();
    cout << "\n                     dP    oo M\"\"MMMMM\"\"M" << endl;
    cout << "                     88       M  MMMMM  M" << endl;
    cout << "            .d8888b. 88    dP M  MMMMM  M .d8888b. .d8888b. .d8888b." << endl;
    cout << "            88ooood8 88    88 M  MMMMM  M 88ooood8 88'  `88 88'  `88" << endl;
    cout << "            88.  ... 88    88 M  `MMM'  M 88.  ... 88.  .88 88.  .88" << endl;
    cout << "            `88888P' dP    88 Mb       dM `88888P' `8888P88 `88888P'" << endl;
    cout << "                           88 MMMMMMMMMMM               .88" << endl;
    cout << "                          dP                        d8888P\n" << endl;

    cout << "                          dP             M\"\"MMMMMMMM" << endl;
    cout << "                          88             M  MMMMMMMM" << endl;
    cout << "                    .d888b88 .d8888b.    M  MMMMMMMM .d8888b." << endl;
    cout << "                    88'  `88 88ooood8    M  MMMMMMMM 88'  `88" << endl;
    cout << "                    88.  .88 88.  ...    M  MMMMMMMM 88.  .88" << endl;
    cout << "                    `88888P8 `88888P'    M         M `88888P8" << endl;
    cout << "                                         MMMMMMMMMMM\n" << endl;

    cout << "                        M\"\"M M\"\"\"\"\"\"'YMM MMP\"\"\"\"\"\"\"MM" << endl;
    cout << "                        M  M M  mmmm. `M M' .mmmm  MM" << endl;
    cout << "               dP   .dP M  M M  MMMMM  M M         `M" << endl;
    cout << "               88   d8' M  M M  MMMMM  M M  MMMMM  MM" << endl;
    cout << "               88 .88'  M  M M  MMMM' .M M  MMMMM  MM" << endl;
    cout << "               8888P'   M  M M       .MM M  MMMMM  MM" << endl;
    cout << "                        MMMM MMMMMMMMMMM MMMMMMMMMMMM\n" << endl;

    /*
    http://www.network-science.de/ascii/

    > el jUego de La vIDA
    nancyj-fancy

    > Por Ángel D. Hurtado
    smkeyboard
    ____ ____ ____ _________ ____ ____ ____ ____ ____
    ||P |||o |||r |||       |||A |||n |||g |||e |||l ||
    ||__|||__|||__|||_______|||__|||__|||__|||__|||__||
    |/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/__\|
    ____ ____ _________ ____ ____ ____ ____ ____ ____ ____
    ||D |||. |||       |||H |||u |||r |||t |||a |||d |||o ||
    ||__|||__|||_______|||__|||__|||__|||__|||__|||__|||__||
    |/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|
    */
}

void pedir_dimensiones() {
    limpiar_pantalla();

    // Lee la cantidad de columnas
    cout << "Columnas\n> ";
    cin >> columnas;

    // Lee la cantidad de filas
    cout << "\nFilas\n> ";
    cin >> filas;
}

void jugador() {
    // Lee la posición en X del jugador
    cout << "X\n> ";
    cin >> jugador_x;

    // Lee la posicion en Y del jugador
    cout << "\nY\n> ";
    cin >> jugador_y;

    jugador_i = 2 * jugador_x + jugador_y * (2 * columnas + 4);

    jugador_x -= 1;
    jugador_y -= 1;
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

void reiniciar_tablero_jugador() {
    for (int y = 0; y < filas; y++) {
        for (int x = 0; x < columnas; x++)
            tablero_jugador[y][x] = 0;
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

    impresion[jugador_i] = 'j';

    cout << impresion;

    sleep_for( milliseconds(tiempo) );
}

void imprimir_tablero_jugador() {
    limpiar_pantalla();

    string impresion = "Puntos: ";

    impresion += to_string(puntos);

    // Marco superior
    impresion = impresion + "\n\n" + esquina0;
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

    impresion = impresion + esquina2 + "\n\n";

    impresion += esquina0;
    impresion += horizontal;

    for (int i = 0; i < columnas; i++)
        impresion += horizontal_doble;

    impresion = impresion + esquina1 + "\n";

    // Tablero jugador
    for (int y = 0; y < filas; y++) {
        impresion = impresion + vertical + " ";

        for (int x = 0; x < columnas; x++) {
            if (tablero_jugador[y][x] == 0)
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

    impresion = impresion + esquina2 + "\n\n";

    cout << impresion;
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
