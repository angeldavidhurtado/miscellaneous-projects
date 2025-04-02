Algoritmo Aplicacion
	Borrar Pantalla
	Permiso<-Falso
	a<-20
	Dimension b_d(a,2)
	b_d(1,1)<-'Nintendo wii'
	b_d(1,2)<-'35'
	b_d(2,1)<-'Juegos para PC'
	b_d(2,2)<-'10'
	b_d(3,1)<-'Celulares'
	b_d(3,2)<-'100'
	i<-3
	Mientras i>0 Hacer
		Si i=3 Entonces
			Escribir 'Tiene 3 intentos'
		Sino
			Si i>1 Entonces
				Escribir 'Le quedan ',i,' intentos'
			Sino
				Escribir 'Le queda 1 intento'
			FinSi
		FinSi
		Escribir 'Ingrese su cuenta de usuario'
		sesion<-''
		pass<-''
		Leer sesion
		Escribir 'Ingrese su contraseña'
		Leer pass
		sesion<-sesion+pass
		Segun sesion Hacer
			'administrador******':
				Permiso<-Verdadero
				i<-0
			'Ángel******':
				Permiso<-Verdadero
				i<-0
			'Miguel******':
				Permiso<-Verdadero
				i<-0
			'X':
				Permiso<-Verdadero
				i<-0
		Fin Segun
		i<-i-1
		Borrar Pantalla
	FinMientras
	Si i=0 Entonces
		Escribir 'Agoto los intentos'
		Escribir 'Comuniquese con Multisoft Manager'
		Leer f
	FinSi
	// Termina El Inicio De Sesion
	Mientras Permiso Hacer
		Si Permiso Entonces
			Escribir '¿Que desea hacer?'
			Escribir '1) Control de ventas'
			Escribir '2) Control de inventario'
			Escribir '3) Control de personal'
			Escribir '4) Flujo de mercancia'
			Escribir '5) Chat'
			Escribir '6) Salir de la aplicaion'
			Leer Opc
			Si Opc='6' Entonces
				Permiso<-Falso
			FinSi
			Borrar Pantalla
			Segun Opc  Hacer
				'1':
					Escribir '1'
				'2':
					Escribir '1) Ver el inventario'
					Escribir '2) Modificar el inventario'
					Escribir '3) Volver al menu inicial'
					Leer Opc_Inv
					Segun Opc_Inv  Hacer
						'1':
							Borrar Pantalla
							Para i<-1 Hasta a Hacer
								Para u<-1 Hasta 2 Con Paso 2 Hacer
									Si No b_d(i,u)='' Entonces
										Escribir 'Producto: ',b_d(i,u)
										Escribir 'Cantidad: ',b_d(i,u+1)
										Escribir ''
									Fin Si
								FinPara
							FinPara
							Escribir 'Volver al menu inicial'
							Leer f
						'2':
							Borrar Pantalla
							Escribir '1) Agregar producto'
							Escribir '2) Quitar producto'
							Leer Aoq
							Segun Aoq Hacer
								'1':
									Borrar Pantalla
									Encontro<-Verdadero
									Para i<-1 Hasta a Con Paso 1 Hacer
										Si b_d(i,1)='' Entonces
											Escribir 'Ingrese el nombre del nuevo producto'
											Leer b_d(i,1)
											Escribir 'Ingrese la cantidad'
											Leer b_d(i,2)
											i<-a+1
										Fin Si
									Fin Para
									Borrar Pantalla
									Escribir 'El producto se agrego'
									Escribir 'Volver al menu inicial'
									Leer f
								'2':
									Borrar Pantalla
									Encontro<-Verdadero
									Escribir 'Buscar'
									Leer Buscar
									Borrar Pantalla
									Para i<-1 Hasta a Hacer
										Para u<-1 Hasta 2 Hacer
											Si Buscar=b_d(i,u) Entonces
												Escribir 'Se retiro el producto'
												ii<-i
												uu<-u
												Encontro<-Falso
											Sino
												Encontro<-Encontro Y Verdadero
											FinSi
										FinPara
									FinPara
									Si Encontro Entonces
										Escribir 'No se encontro el producto'
									Sino
										b_d(ii,uu)<-''
									FinSi
									Escribir 'Volver al menu inicial'
									Leer f
							Fin Segun
						'3':
							Escribir 'Menu de opciones'
						De Otro Modo:
							Escribir 'Opcion no valida'
					FinSegun
				'3':
					Escribir '3'
				'4':
					Escribir '4'
				'5':
					Escribir '¿Que chat desea usar?'
					Escribir '1) Soporte tecnico'
					Escribir '2) Garantias'
					Escribir '3) Quejas y reclamos'
					Escribir '4) Pedidos'
					Escribir '5) Volver al menu principal'
					Leer elec
					Borrar Pantalla
					Segun elec  Hacer
						'1':
							ms_st<-''
							Escribir 'Chat de soporte tecnico'
							Mientras ms_st!='quiero salir' Hacer
								Leer ms_st
								Si No ms_st='quiero salir' Entonces
									Escribir ms_st
								Fin Si
							FinMientras
						'2':
							ms_g<-''
							Escribir 'Chat de garantias'
							Mientras ms_g!='quiero salir' Hacer
								Leer ms_g
								Si No ms_g='quiero salir' Entonces
									Escribir ms_g
								Fin Si
							FinMientras
						'3':
							ms_qr<-''
							Escribir 'Chat de quejas y reclamos'
							Mientras ms_qr!='quiero salir' Hacer
								Leer ms_qr
								Si No ms_qr='quiero salir' Entonces
									Escribir ms_qr
								Fin Si
							FinMientras
						'4':
							ms_p<-''
							Escribir 'Chat de pedidos'
							Mientras ms_p!='quiero salir' Hacer
								Leer ms_p
								Si No ms_p='quiero salir' Entonces
									Escribir ms_p
								Fin Si
							FinMientras
					FinSegun
			FinSegun
		FinSi
		Borrar Pantalla
	FinMientras
FinAlgoritmo