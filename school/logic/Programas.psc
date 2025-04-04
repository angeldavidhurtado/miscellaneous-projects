Proceso Programas
	Escribir "Bienvenido."
	Escribir "El presente programa esta formado por 24 subprogramas, los cuales fueron desarrollados por Ángel David Hurtado García y esto gracias a todas las personas que han contribuido al desarrollo del hardware y software."
	Escribir "Oprima enter para continuar."
	Esperar Tecla
	Limpiar pantalla
	respuesta<-'s'
	Dimension Aj(3),Bj(3)
	Mientras respuesta = 's' Hacer
		Escribir '¿Cuál de los siguientes programas desea ejecutar?:'
		Escribir '1) Saber si un número es par.'
		Escribir '2) Saber si un número es múltiplo de 3.'
		Escribir '3) Saber si un número es múltiplo de 5.'
		Escribir '4) Saber si un número es múltiplo de 7.'
		Escribir '5) Saber si un ángulo es obtuso.'
		Escribir '6) Saber si un ángulo es agudo.'
		Escribir '7) Saber el área de un círculo.'
		Escribir '8) Saber el área de un cuadrado.'
		Escribir '9) Saber el área de un triángulo.'
		Escribir '10) Saber el périmetro de una circunferencia.'
		Escribir '11) Saber el périmetro de un triángulo.'
		Escribir '12) Saber el périmetro de un cuadrado.'
		Escribir '13) Saber el ángulo faltante de un paralelogramao.'
		Escribir '14) Saber el tercer ángulo de un triángulo.'
		Escribir '15) Saber el valor de un número elevado al cuadrado.'
		Escribir '16) Dividir.'
		Escribir '17) Ordenar cuatro números negativos de menor a mayor.'
		Escribir '18) Arreglo (3).'
		Escribir '19) Arreglo global.'
		Escribir '20) Acróstico.'
		Escribir '21) Determinar si una cadena de caracteres contiene el simbolo @'
		Escribir '22) Ordenar tantos números como desee.'
		Escribir '23) Multiplicación.'
		Escribir '24) Publik.'
		Escribir 'Ingrese el número correspondiente al programa que desee ejecutar, para ejecutarlo.'
		Leer respuesta
		Limpiar Pantalla
		Segun respuesta Hacer
			'1':
				Escribir 'Ingrese un numero natural'
				Leer A
				H<-1
				Para i<-0 Hasta A Con Paso H Hacer
				FinPara
				Z<-i-1
				Mientras A<=0 O  NO A-Z=0 Hacer
					Escribir 'El número debe ser natural'
					Leer A
					H<-1
					Para i<-0 Hasta A Con Paso H Hacer
					FinPara
					Z<-i-1
				FinMientras
				Ñ<-A/2
				F<-1
				Para K<-0 Hasta Ñ Con Paso F Hacer
				FinPara
				E<-K-1
				Si Ñ-E=0 Entonces
					Escribir 'El número es par'
				Sino
					Escribir 'El número es impar'
				FinSi
			'2':
				Escribir 'Ingrese un número natural'
				Leer A
				H<-1
				Para i<-0 Hasta A Con Paso H Hacer
				FinPara
				Z<-i-1
				Mientras A<=0 O  NO A-Z=0 Hacer
					Escribir 'El número debe ser natural'
					Leer A
					H<-1
					Para i<-0 Hasta A Con Paso H Hacer
					FinPara
					Z<-i-1
				FinMientras
				Ñ<-A/3
				F<-1
				Para K<-0 Hasta Ñ Con Paso F Hacer
				FinPara
				E<-K-1
				Si Ñ-E=0 Entonces
					Escribir 'El número es multiplo de 3'
				Sino
					Escribir 'El número no es múltiplo de 3'
				FinSi
			'3':
				Escribir 'Ingrese un número natural'
				Leer A
				H<-1
				Para i<-0 Hasta A Con Paso H Hacer
				FinPara
				Z<-i-1
				Mientras A<=0 O  NO A-Z=0 Hacer
					Escribir 'El número debe ser natural'
					Leer A
					H<-1
					Para i<-0 Hasta A Con Paso H Hacer
					FinPara
					Z<-i-1
				FinMientras
				Ñ<-A/5
				F<-1
				Para K<-0 Hasta Ñ Con Paso F Hacer
				FinPara
				E<-K-1
				Si Ñ-E=0 Entonces
					Escribir 'El número es múltiplo de 5'
				Sino
					Escribir 'El número no es múltiplo de 5'
				FinSi
			'4':
				Escribir 'Ingrese un número natural'
				Leer A
				H<-1
				Para i<-0 Hasta A Con Paso H Hacer
				FinPara
				Z<-i-1
				Mientras A<=0 O  NO A-Z=0 Hacer
					Escribir 'El número debe ser natural'
					Leer A
					H<-1
					Para i<-0 Hasta A Con Paso H Hacer
					FinPara
					Z<-i-1
				FinMientras
				Ñ<-(A/7)
				F<-1
				Para K<-0 Hasta Ñ Con Paso F Hacer
				FinPara
				E<-K-1
				Si Ñ-E=0 Entonces
					Escribir 'El número es múltiplo de 7'
				Sino
					Escribir 'El número no es múltiplo de 7'
				FinSi
			'5':
				Escribir 'Ingrese la medida del ángulo en grados, sin el símbolo de grado'
				Leer A
				Si 180>A Y A>90 Entonces
					Escribir 'El ángulo es obtuso'
				Sino
					Escribir 'El ángulo no es obtuso'
				FinSi
			'6':
				Escribir 'Ingrese la medida del ángulo en grados, sin el simbolo de grado'
				Leer A
				Si 90>A y A>0 Entonces
					Escribir 'El ángulo es agudo'
				Sino
					Escribir 'El ángulo no es agudo'
				FinSi
			'7':
				Escribir 'Ingrese el radio'
				Leer A
				Si A > 0 Entonces
					Escribir 'El área del círculo es ',A^2*PI
				Sino
					Escribir 'No existe'
				FinSi
			'8':
				Escribir 'Ingrese el lado de un cuadrado'
				Leer A
				Si A > 0 Entonces
					Escribir 'El área del cuadrado es ',A*A
				Sino
					Escribir 'No existe'
				FinSi
			'9':
				Escribir 'Ingrese la basé de un triángulo'
				Leer A
				Escribir 'Ingrese la altura del triángulo'
				Leer B
				Si A > 0 y B > 0 Entonces
					Escribir 'El área del triángulo es ',(A*B)/2
				Sino
					Escribir 'No existe'
				FinSi
			'10':
				Escribir 'Ingrese el radio de una circunferencia'
				Leer A
				Si A<=0 Entonces
					Escribir 'No existe'
				Sino
					Escribir 'El perímetro de la circunferencia es ',2*PI*A
				FinSi
			'11':
				Escribir 'Ingrese el perímer lado del triangulo'
				Leer A
				Escribir 'Ingrese el segundo lado del triángulo'
				Leer B
				Escribir 'Ingrese el tercer lado del triángulo'
				Leer C
				Si A<B+C y B<A+C y C<A+B Entonces
					Escribir 'El perímetro del triángulo es ', A+B+C
				Sino
					Escribir 'El triángulo no existe'
				FinSi
			'12':
				Escribir 'Ingrese un lado de un cuadrado'
				Leer A
				Si A<=0 Entonces
					Escribir 'No existe'
				Sino
					Escribir 'El perímetro del cuadrado es ', A*4
				FinSi
			'13':
				Escribir 'Ingrese un ángulo de un paralegramo en grados sin el signo de grados'
				Leer A
				Si 0<A y A<180 Entonces
					B<-(360-2*A)/2
					Escribir 'Los demas angulos son ',B,', ',A,', ',B
				Sino
					Escribir 'Error'
				FinSi
			'14':
				Escribir 'Ingrese el primer ángulo del triángulo en grados sin el simbolo de grados'
				Leer A
				Escribir 'Ingrese el segundo ángulo del triángulo en grados sin el simbolo de grados'
				Leer B
				Si A>0 y B>0 Entonces
					Si A+B<180 Entonces
						Escribir 'El tercer ángulo es de ', 180-(A+B), ' grados.'
					Sino
						Escribir 'No existe el triángulo'
					FinSi
				Sino
					Escribir 'No existe el triángulo'
				FinSi
			'15':
				Escribir 'Ingrese un número'
				Leer A
				Escribir 'El número ingresado al cuadrado es ' A^2
			'16':	
				Escribir 'Ingrese el dividendo, debe ser un número natural'
				Leer a
				Para b<-0 Hasta a-1 Hacer
				FinPara
				Mientras a-b<>0 Hacer
					Escribir 'El dividendo debe ser un número natural'
					Leer a
					Para b<-0 Hasta a-1 Hacer
					FinPara
				FinMientras
				Escribir 'Ingrese el divisor, debe ser un número natural'
				Leer c
				Para b<-0 Hasta c-1 Hacer
				FinPara
				Mientras c-b<>0 Hacer
					Escribir 'El dividendo debe ser un número natural'
					Leer c
					Para b<-0 Hasta c-1 Hacer
					FinPara
				FinMientras
				Para b<-0 Hasta a Con Paso c Hacer
					d<-d+1
				FinPara
				Escribir d-1, ' veces naturales esta ', c, ' en ', a
			'17':	
				Escribir 'Ingrese un número negativo'
				Leer a
				Mientras a>=0 Hacer
					Escribir 'El número debe ser negativo'
					Leer a
				FinMientras
				Escribir 'Ingrese un segundo número negativo'
				Leer b
				Mientras b>=0 Hacer
					Escribir 'El número debe ser negativo'
					Leer b
				FinMientras
				Escribir 'Ingrese un tercer número negativo'
				Leer c
				Mientras c>=0 Hacer
					Escribir 'El número debe ser negativo'
					Leer c
				FinMientras
				Escribir 'Ingrese un cuarto número negativo'
				Leer d
				Mientras d>=0 Hacer
					Escribir 'El número debe ser negativo'
					Leer d
				FinMientras
				Si a<=b Y a<=c Y a<=d Entonces
					Si b>=c Y b>=d Entonces
						Si c<d Entonces
							Escribir a,', ',c,', ',d,', ',b
						Sino
							Escribir a,', ',d,', ',c,', ',b
						FinSi
					Sino
						Si c>=d Entonces
							Si b<d Entonces
								Escribir a,', ',b,'. ',d,', ',c
							Sino
								Escribir a,', ',d,', ',b,', ',c
							FinSi
						Sino
							Si b<=c Entonces
								Escribir a,', ',b,', ',c,', ',d
							Sino
								Escribir a,', ',c,', ',b,', ',d
							FinSi
						FinSi
					FinSi
				Sino
					Si b<=c Y b<=d Entonces
						Si a>=c Y a>=d Entonces
							Si c<d Entonces
								Escribir b,', ',c,', ',d,', ',a
							Sino
								Escribir b,', ',d,', ',c,', ',a
							FinSi
						Sino
							Si c>=d Entonces
								Si a<d Entonces
									Escribir b,', ',a,', ',d,', ',c
								Sino
									Escribir b,', ',d,', ',a,', ',c
								FinSi
							Sino
								Si a<=c Entonces
									Escribir b,', ',a,', ',c,', ',d
								Sino
									Escribir b,', ',c,', ',a,', ',d
								FinSi
							FinSi
						FinSi
					Sino
						Si c<=d Entonces
							Si a>=b Y a>=d Entonces
								Si b<d Entonces
									Escribir c,', ',b,', ',d,', ',a
								Sino
									Escribir c,', ',d,', ',b,', ',a
								FinSi
							Sino
								Si b>=d Entonces
									Si a<d Entonces
										Escribir c,', ',a,', ',d,', ',b
									Sino
										Escribir c,', ',d,', ',a,', ',b
									FinSi
								Sino
									Si a<=b Entonces
										Escribir c,', ',a,', ',b,', ',d
									Sino
										Escribir c,', ',b,', ',a,', ',d
									FinSi
								FinSi
							FinSi
						Sino
							Si a>=b Y a>=c Entonces
								Si b<c Entonces
									Escribir d,', ',b,', ',c,', ',a
								Sino
									Escribir d,', ',c,', ',b,', ',a
								FinSi
							Sino
								Si b>c Entonces
									Si a<c Entonces
										Escribir d,', ',a,', ',c,', ',b
									Sino
										Escribir d,', ',c,', ',a,', ',b
									FinSi
								Sino
									Si a<b Entonces
										Escribir d,', ',a,', ',b,', ',c
									Sino
										Escribir d,', ',b,', ',a,', ',c
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			'18':
				Para i<-1 Hasta 3 Con Paso 1 Hacer
					Escribir 'Digite un valor'
					Leer Aj(i)
					Bj(i)<-(Aj(i)*2)
				FinPara
				Escribir 'Bj=[',Bj(1),', ',Bj(2),', ',Bj(3),']'
			'19':
				Mostrar "¿Cuantas palabras desea ingresar?"
				Leer Res
				Dimension Arr[Res]
				Para i <- 1 Hasta Res Con Paso 1 Hacer
					Mostrar "Ingrese el nombre ", i
					Leer Nombre
					Arr[i] <- Nombre
				FinPara
				Limpiar Pantalla
				Mostrar "Las palabras ingresadas son:"
				Para i <- 1 Hasta Res Con Paso 1 Hacer
					Mostrar "Palabra ", i, ": ", Arr[i]
				FinPara
			'20':
				Decicion <- Verdadero
				Mientras Decicion Hacer
					Mostrar 'Ingrese texto'
					Leer tex
					tex <- Minusculas(tex)
					lon <- Longitud(tex)
					Operacion <- Verdadero
					Para i <- 1 Hasta lon Con Paso 1
						sub <- Subcadena(tex,i,i)
						Si sub = 'a' o sub = 'b' o sub = 'c' o sub = 'd' o sub = 'e' o sub = 'f' o sub = 'g' o sub = 'h' o sub = 'i' o sub = 'j' o sub = 'k' o sub = 'l' o sub = 'm' o sub = 'n' o sub = 'ñ' o sub = 'o' o sub = 'p' o sub = 'q' o sub = 'r' o sub = 's' o sub = 't' o sub = 'u' o sub = 'v' o sub = 'w' o sub = 'x' o sub = 'y' o sub = 'z' o sub = ' ' o sub = 'á' o sub = 'é' o sub = 'í' o sub = 'ó' o sub = 'ú' Entonces
							Respu <- Verdadero
						Sino
							Respu <- Falso
						FinSi
						Operacion <- Respu y Operacion
					FinPara
					Si Operacion Entonces
						para i <- 1 Hasta lon Con Paso 1
							sub <- SubCadena(tex,i,i)
							Segun sub Hacer
								'a':
									a <- azar(4)
									Segun a Hacer
										0:
											Mostrar 'Abundante'
										1:
											Mostrar 'Alto'
										2:
											Mostrar 'Apetitoso'
										De Otro Modo:
											Mostrar 'Aprensivo'
									FinSegun
								'b':
									b <- azar(6)
									Segun a Hacer
										0:
											Mostrar 'Bajo'
										1:
											Mostrar 'Bello'
										2:
											Mostrar 'Blanco'
										De Otro Modo:
											Mostrar 'Bueno'
									FinSegun
								'c':
									c <- azar(6)
									Segun c Hacer
										0:
											Mostrar 'Caliente'
										1:
											Mostrar 'Cándido'
										2:
											Mostrar 'Cansado'
										3:
											Mostrar 'Capaz'
										4:
											Mostrar 'Claro'
										De otro Modo:
											Mostrar 'Corts'
									FinSegun
								'd':
									d <- azar(4)
									Segun d Hacer
										0:
											Mostrar 'Dadivoso'
										1:
											Mostrar 'Delgado'
										2:
											Mostrar 'Divertido'
										De Otro Modo:
											Mostrar 'Docil'
									FinSegun
								'e':
									e <- azar(2)
									Segun e Hacer
										0:
											Mostrar 'Espontáneo'
										De Otro Modo:
											Mostrar 'Educado'
									Fin Segun
								'f':
									f <- azar(5)
									Segun f Hacer
										0:
											Mostrar 'Fácil'
										1:
											Mostrar 'Feliz'
										2:
											Mostrar 'Fino'
										3:
											Mostrar 'Firme'
										De otro Modo:
											Mostrar 'Fuerte'
									FinSegun
								'g':
									g <- azar(3)
									Segun g Hacer
										0:
											Mostrar 'Gentil'
										1:
											Mostrar 'Gracioso'
										De Otro Modo:
											Mostrar 'Grande'
									FinSegun
								'h':
									h <- azar(2)
									Segun h Hacer
										0:
											Mostrar 'Harto'
										De Otro Modo:
											Mostrar 'Hermoso'
									FinSegun
								'i':
									hi <- azar(3)
									Segun hi Hacer
										0:
											Mostrar 'Igual'
										1:
											Mostrar 'Inteligente'
										De Otro Modo:
											Mostrar 'Interesante'
									FinSegun
								'j':
									j <- azar(5)
									Segun j Hacer
										0:
											Mostrar 'Jovial'
										1:
											Mostrar 'Jubiloso'
										2:
											Mostrar 'Justo'
										De Otro Modo:
											Mostrar 'Juvenil'
									FinSegun
								'k':
									Mostrar 'karatico'
								'l':
									l <- azar(5)
									Segun l Hacer
										0:
											Mostrar 'Leal'
										1:
											Mostrar 'Lejano'
										2:
											Mostrar 'Libre'
										3:
											Mostrar 'Liso'
										De Otro Modo:
											Mostrar 'Liviano'
									FinSegun
								'm':
									Mostrar 'Majestuoso'
								'n':
									n <- azar(3)
									Segun n Hacer
										0:
											Mostrar 'Natural'
										1:
											Mostrar 'Noble'
										De Otro Modo:
											Mostrar 'Novedoso'
									FinSegun
								'ñ':
									Mostrar 'Ñoño'
								'o':
									ho <- azar(4)
									Segun ho Hacer
										0:
											Mostrar 'Obediente'
										2:
											Mostrar 'Ordenado'
										De Otro Modo:
											Mostrar 'Original'
									FinSegun
								'p':
									p <- azar(5)
									Segun p Hacer
										0:
											Mostrar 'Parcial'
										1:
											Mostrar 'Pequeño'
										2:
											Mostrar 'Perfecto'
										3:
											Mostrar 'Posible'
										De Otro Modo:
											Mostrar 'Puntual'
									FinSegun
								'q':
									q <- azar(3)
									Segun q Hacer
										0:
											Mostrar 'Quebradizo'
										1:
											Mostrar 'Quieto'
										De Otro Modo:
											Mostrar 'Quisquilloso'
									FinSegun
								'r':
									r <- azar(3)
									Segun r Hacer
										0:
											Mostrar 'Respetuoso'
										1:
											Mostrar 'Responsable'
										De Otro Modo:
											Mostrar 'Rojo'
									FinSegun
								's':
									s <- azar(6)
									Segun s Hacer
										0:
											Mostrar 'Sabroso'
										1:
											Mostrar 'Sano'
										2:
											Mostrar 'Santo'
										3:
											Mostrar 'Seguro'
										4:
											Mostrar 'Simple'
										De Otro Modo:
											Mostrar 'Solo'
									FinSegun
								't':
									t <- azar(3)
									Segun t Hacer
										0:
											Mostrar 'Tolerante'
										1:
											Mostrar 'Transferible'
										De Otro Modo:
											Mostrar 'Triste'
									FinSegun
								'u':
									u <- azar(2)
									Segun u Hacer
										0:
											Mostrar 'Uniforme'
										De Otro Modo:
											Mostrar 'Universal'
									FinSegun
								'v':
									v <- azar(4)
									Segun v Hacer
										0:
											Mostrar 'Vacío'
										1:
											Mostrar 'Valiente'
										2:
											Mostrar 'Veraz'
										De Otro Modo:
											Mostrar 'Vigoroso'
									FinSegun
								'w':
									Mostrar 'Wageneriano'
								'x':
									Mostrar 'Xenofobico'
								'y':
									Mostrar 'Yoquipierdista'
								'z':
									z <- azar(5)
									Segun z Hacer
										0:
											Mostrar 'Zafio'
										1:
											Mostrar 'Zangano'
										2:
											Mostrar 'Zoquete'
										3:
											Mostrar 'Zarrapastroso'
										4:
											Mostrar 'zalamero'
									De Otro Modo:
										Mostrar 'Zozobrozo'
								FinSegun
							De Otro Modo:
								Mostrar sub
							FinSegun
						FinPara
						Decicion <- Falso
					Sino
						Mostrar 'Solo se aceptan letras'
						Decicion <- Verdadero
					Fin Si
				Fin Mientras
			'21':
				Mostrar 'Ingrese texto'
				Leer te
				as <- longitud(te)
				op <- falso
				Para i <- 1 Hasta as Con Paso 1
					bs <- SubCadena(te,i,i)
					Si bs='@' Entonces
						rs=Verdadero
					Sino
						rs=Falso
					Fin Si
					op <- rs o op
				FinPara
				Si op Entonces
					Mostrar 'La cadena de caracteres ingresada contiene el simbolo @'
				Sino
					Mostrar 'La cadena de caracteres ingresada no contiene el simbolo @'
				Fin Si
			'22':
				Mostrar '¿Cuantos números desea que se ordenen?'
				Leer Cant_Num
				Dimension Dim[Cant_Num]
				Para i <- 1 Hasta Cant_Num Con Paso 1
					Mostrar 'Ingrese el elemento ', i
					Leer Dim[i]
				FinPara
				t <- 0
				Para i <- 1 Hasta Cant_Num Con Paso 1
					di <- Dim[i]
					Si di < 0 Entonces
						di <- -Dim[i]
					Fin Si
					t <- t + di
				FinPara
				Para h <- 1 Hasta Cant_Num Con Paso 1 Hacer
					Para i <- 1 Hasta Cant_Num Con Paso 1
						ja <- Verdadero
						Para u <- 1 Hasta Cant_Num Con Paso 1
							ja <- ja y Dim[i] <= Dim[u]
						FinPara
						Si ja y Dim[i] < t Entonces
							Mostrar Dim[i]
							Dim[i] <- t
						Fin Si
					FinPara
				Fin Para
			'23':
				Leer a
				Leer b
				
				contador <- 1
				resultado <- a
				
				Mientras contador < b Hacer
					
					resultado <- resultado + a
					contador <- contador + 1
					
				Fin Mientras
				
				Escribir "El resultado es: ", resultado
			'24':
				letrero <- '          Hola Mundo, como estamos :)          '
				leng <- Longitud(letrero)
				Mientras verdadero Hacer
					Para i<-1 Hasta leng-10 Hacer
						sub_str <- SubCadena(letrero,i,i+10)
						Borrar Pantalla
						Escribir '***************'
						Escribir '* ',sub_str,' *'
						Escribir '***************'
						Esperar 200 MiliSegundo
					FinPara
				FinMientras
			Fin Segun
		Escribir 'Si desea continuar ingrese s, ó si desea salir ingrese otro caracter'
		Leer respuesta
		Limpiar Pantalla
	FinMientras
FinProceso