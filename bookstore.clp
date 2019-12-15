; Sat Nov 9 18:58:10 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 663")

;;--------------------------------------------------------------------------------------------------------------------------
;; Ontologia
;;--------------------------------------------------------------------------------------------------------------------------
(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot NombreTematica
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ha_escrito
;+		(comment "Relacion de los libros que ha escrito.")
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot KB_191360_Class8
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Escrito_por
;+		(comment "Relacion con el autor que ha escrito el libro.")
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot KB_191360_Class7
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Es_nacionalidad
		(type INSTANCE)
;+		(allowed-classes Nacionalidad)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Escribe_genero
;+		(comment "Relacion de los generos que ha escrito.")
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot Es_tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
		(create-accessor read-write))
	(single-slot Dificultad
		(type INTEGER)
		(range 0 10)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Libros_genero
;+		(comment "Relacion de los libros que forman este genero.")
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(multislot Es_genero
;+		(comment "Relacion con el genero que es.")
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot NombreGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Juvenil
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Bestseller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Anyo
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Valoracion
		(type INTEGER)
		(range 0 10)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Autores_genero
;+		(comment "Relacion de los autores que escriben libros de este genero.")
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(multislot inverse_of_Es_genero
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot NombreAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Libros_tematica
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(multislot Autores_nacionalidad
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot NombreNacionalidad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Longitud
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Autor
	(is-a USER)
	(role concrete)
	(multislot Escribe_genero
;+		(comment "Relacion de los generos que ha escrito.")
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot NombreAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ha_escrito
;+		(comment "Relacion de los libros que ha escrito.")
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot Es_nacionalidad
		(type INSTANCE)
;+		(allowed-classes Nacionalidad)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(multislot Autores_genero
;+		(comment "Relacion de los autores que escriben libros de este genero.")
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot NombreGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Libros_genero
;+		(comment "Relacion de los libros que forman este genero.")
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(multislot Es_tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
		(create-accessor read-write))
	(single-slot Anyo
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Dificultad
		(type INTEGER)
		(range 0 10)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Es_genero
;+		(comment "Relacion con el genero que es.")
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot Juvenil
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Bestseller
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Valoracion
		(type INTEGER)
		(range 0 10)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Escrito_por
;+		(comment "Relacion con el autor que ha escrito el libro.")
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Longitud
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Nacionalidad
	(is-a USER)
	(role concrete)
	(multislot Autores_nacionalidad
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot NombreNacionalidad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tematica
	(is-a USER)
	(role concrete)
	(multislot Libros_tematica
		(type INSTANCE)
;+		(allowed-classes Libro)
		(create-accessor read-write))
	(single-slot NombreTematica
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))



		
;;--------------------------------------------------------------------------------------------------------------------------
;; Instancias
;;--------------------------------------------------------------------------------------------------------------------------
(definstances instancias
; Sat Nov 9 18:58:10 CET 2019
; 
;+ (version "3.5")
;+ (build "Build 663")
([KB_191360_Class20] of  Genero

	(Autores_genero
		[KB_191360_Class28]
		[KB_191360_Class26]
		[KB_191360_Class25])
	(Libros_genero
		[KB_191360_Class39]
		[KB_191360_Class41]
		[KB_191360_Class40]
		[ontology_Class30033]
		[ontology_Class30034]
		[ontology_Class30035]
		[ontology_Class30037])
	(NombreGenero "Horror"))

([KB_191360_Class21] of  Genero

	(Autores_genero
		[KB_191360_Class32]
		[KB_191360_Class29])
	(Libros_genero
		[KB_191360_Class43]
		[KB_191360_Class42])
	(NombreGenero "Western"))

([KB_191360_Class22] of  Genero

	(Autores_genero
		[ontology_Class20003]
		[ontology_Class10024]
		[ontology_Class10038]
		[KB_191360_Class36]
		[ontology_Class10034]
		[KB_191360_Class34]
		[KB_191360_Class33]
		[ontology_Class10000]
		[ontology_Class10030]
		[ontology_Class10028]
		[ontology_Class30003]
		[ontology_Class30005]
		[ontology_Class30009]
		[ontology_Class30019]
		[ontology_Class30021])
	(Libros_genero
		[ontology_Class10029]
		[ontology_Class20004]
		[ontology_Class10025]
		[KB_191360_Class47]
		[KB_191360_Class46]
		[KB_191360_Class45]
		[KB_191360_Class44]
		[ontology_Class10039]
		[ontology_Class10035]
		[ontology_Class10002]
		[ontology_Class10031]
		[ontology_Class30004]
		[ontology_Class30006]
		[ontology_Class30010]
		[ontology_Class30020]
		[ontology_Class30022])
	(NombreGenero "Historical"))

([KB_191360_Class23] of  Genero

	(Autores_genero
		[KB_191360_Class25]
		[KB_191360_Class38]
		[KB_191360_Class37]
		[KB_191360_Class36]
		[KB_191360_Class28]
		[ontology_Class30023])
	(Libros_genero
		[KB_191360_Class49]
		[KB_191360_Class48]
		[KB_191360_Class50]
		[ontology_Class30024]
		[ontology_Class30035]
		[ontology_Class30037])
	(NombreGenero "Thriller"))

([KB_191360_Class24] of  Genero

	(Autores_genero
		[ontology_Class10028]
		[KB_191360_Class33]
		[ontology_Class20000]
		[ontology_Class30025])
	(Libros_genero
		[KB_191360_Class44]
		[ontology_Class10029]
		[KB_191360_Class45]
		[ontology_Class20002]
		[ontology_Class30026])
	(NombreGenero "War"))

([KB_191360_Class25] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[KB_191360_Class23]
		[KB_191360_Class20]
		[ontology_Class10008]
		[ontology_Class10012]
		[ontology_Class10007])
	(Ha_escrito
		[KB_191360_Class39]
		[ontology_Class30033]
		[ontology_Class30034]
		[ontology_Class30035]
		[ontology_Class30037])
	(NombreAutor "Stephen King"))

([KB_191360_Class26] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero [KB_191360_Class20])
	(Ha_escrito [KB_191360_Class40])
	(NombreAutor "Mary Shelley"))

([KB_191360_Class28] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[KB_191360_Class20]
		[KB_191360_Class23])
	(Ha_escrito [KB_191360_Class41])
	(NombreAutor "Thomas Harris"))

([KB_191360_Class29] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [KB_191360_Class21])
	(Ha_escrito [KB_191360_Class42])
	(NombreAutor "N Scott Momaday"))

([KB_191360_Class32] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [KB_191360_Class21])
	(Ha_escrito [KB_191360_Class43])
	(NombreAutor "Larry McMurtry"))

([KB_191360_Class33] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero
		[KB_191360_Class22]
		[KB_191360_Class24])
	(Ha_escrito
		[KB_191360_Class45]
		[KB_191360_Class44])
	(NombreAutor "Bernard Cornwell"))

([KB_191360_Class34] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [KB_191360_Class22])
	(Ha_escrito [KB_191360_Class46])
	(NombreAutor "Kristin Hannah"))

([KB_191360_Class36] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[KB_191360_Class23]
		[KB_191360_Class22])
	(Ha_escrito
		[KB_191360_Class48]
		[KB_191360_Class47])
	(NombreAutor "Leonard Goldberg"))

([KB_191360_Class37] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [KB_191360_Class23])
	(Ha_escrito [KB_191360_Class49])
	(NombreAutor "Ruth Ware"))

([KB_191360_Class38] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [KB_191360_Class23])
	(Ha_escrito [KB_191360_Class50])
	(NombreAutor "Josh Grisham"))

([KB_191360_Class39] of  Libro

	(Anyo 2019)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero [KB_191360_Class20])
	(Es_tematica [ontology_Class18])
	(Escrito_por [KB_191360_Class25])
	(Longitud 576)
	(Titulo "The Institute")
	(Valoracion 9))

([KB_191360_Class40] of  Libro

	(Anyo 2015)
	(Bestseller FALSE)
	(Dificultad 5)
	(Es_genero [KB_191360_Class20])
	(Es_tematica [ontology_Class13])
	(Escrito_por [KB_191360_Class26])
	(Longitud 160)
	(Titulo "Frankenstein")
	(Valoracion 8))

([KB_191360_Class41] of  Libro

	(Anyo 1991)
	(Dificultad 7)
	(Es_genero [KB_191360_Class20])
	(Es_tematica [ontology_Class9])
	(Escrito_por [KB_191360_Class28])
	(Longitud 384)
	(Titulo "The Silence of the Lambs")
	(Valoracion 8))

([KB_191360_Class42] of  Libro

	(Anyo 2010)
	(Dificultad 6)
	(Es_genero [KB_191360_Class21])
	(Es_tematica [ontology_Class14])
	(Escrito_por [KB_191360_Class29])
	(Juvenil FALSE)
	(Longitud 185)
	(Titulo "House Made of Dawn")
	(Valoracion 6))

([KB_191360_Class43] of  Libro

	(Anyo 2010)
	(Dificultad 6)
	(Es_genero [KB_191360_Class21])
	(Es_tematica [ontology_Class14])
	(Escrito_por [KB_191360_Class32])
	(Longitud 864)
	(Titulo "Lonesome Dove")
	(Valoracion 8))

([KB_191360_Class44] of  Libro

	(Anyo 2019)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero
		[KB_191360_Class24]
		[KB_191360_Class22])
	(Es_tematica [ontology_Class16])
	(Escrito_por [KB_191360_Class33])
	(Longitud 352)
	(Titulo "Sword of Kings: A Novel")
	(Valoracion 8))

([KB_191360_Class45] of  Libro

	(Anyo 2008)
	(Dificultad 6)
	(Es_genero
		[KB_191360_Class24]
		[KB_191360_Class22])
	(Es_tematica [ontology_Class16])
	(Escrito_por [KB_191360_Class33])
	(Longitud 352)
	(Titulo "Lords of the North")
	(Valoracion 8))

([KB_191360_Class46] of  Libro

	(Anyo 2017)
	(Dificultad 6)
	(Es_genero [KB_191360_Class22])
	(Es_tematica [ontology_Class19])
	(Escrito_por [KB_191360_Class34])
	(Longitud 608)
	(Titulo "The Nightingale")
	(Valoracion 8))

([KB_191360_Class47] of  Libro

	(Anyo 2018)
	(Dificultad 7)
	(Es_genero [KB_191360_Class22])
	(Es_tematica [ontology_Class17])
	(Escrito_por [KB_191360_Class36])
	(Longitud 320)
	(Titulo "The Daughter of Sherlock Holmes: A Mystery")
	(Valoracion 7))

([KB_191360_Class48] of  Libro

	(Anyo 2001)
	(Dificultad 7)
	(Es_genero [KB_191360_Class23])
	(Es_tematica
		[ontology_Class8]
		[ontology_Class12])
	(Escrito_por [KB_191360_Class36])
	(Longitud 416)
	(Titulo "Fatal Care")
	(Valoracion 7))

([KB_191360_Class49] of  Libro

	(Anyo 2019)
	(Dificultad 7)
	(Es_genero [KB_191360_Class23])
	(Es_tematica [ontology_Class6])
	(Escrito_por [KB_191360_Class37])
	(Longitud 352)
	(Titulo "The Turn of the Key")
	(Valoracion 7))

([KB_191360_Class50] of  Libro

	(Anyo 2019)
	(Bestseller TRUE)
	(Es_genero [KB_191360_Class23])
	(Es_tematica [ontology_Class8])
	(Escrito_por [KB_191360_Class38])
	(Longitud 384)
	(Titulo "The Guardians")
	(Valoracion 9))

([ontology_Class0] of  Nacionalidad

	(Autores_nacionalidad [ontology_Class30009])
	(NombreNacionalidad "Canadiense"))

([ontology_Class1] of  Nacionalidad

	(Autores_nacionalidad
		[ontology_Class10026]
		[ontology_Class30029])
	(NombreNacionalidad "Francesa"))

([ontology_Class10000] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[ontology_Class10009]
		[ontology_Class10007]
		[KB_191360_Class22])
	(Ha_escrito
		[ontology_Class10002]
		[ontology_Class10001])
	(NombreAutor "George Orwell"))

([ontology_Class10001] of  Libro

	(Anyo 1945)
	(Bestseller TRUE)
	(Dificultad 4)
	(Es_genero
		[ontology_Class10009]
		[ontology_Class10007])
	(Es_tematica
		[ontology_Class10022]
		[ontology_Class10016])
	(Escrito_por [ontology_Class10000])
	(Juvenil TRUE)
	(Longitud 112)
	(Titulo "Animal Farm")
	(Valoracion 8))

([ontology_Class10002] of  Libro

	(Anyo 1949)
	(Bestseller TRUE)
	(Dificultad 8)
	(Es_genero
		[ontology_Class10009]
		[KB_191360_Class22])
	(Es_tematica
		[ontology_Class10023]
		[ontology_Class10016])
	(Escrito_por [ontology_Class10000])
	(Juvenil TRUE)
	(Longitud 328)
	(Titulo "1984")
	(Valoracion 9))

([ontology_Class10003] of  Nacionalidad

	(Autores_nacionalidad [ontology_Class30007])
	(NombreNacionalidad "Japonesa"))

([ontology_Class10004] of  Nacionalidad

	(Autores_nacionalidad
		[ontology_Class20009]
		[ontology_Class30027])
	(NombreNacionalidad "Rusa"))

([ontology_Class10005] of  Nacionalidad

	(Autores_nacionalidad [ontology_Class10042])
	(NombreNacionalidad "Checa"))

([ontology_Class10006] of  Nacionalidad

	(Autores_nacionalidad [ontology_Class10028])
	(NombreNacionalidad "Sueca"))

([ontology_Class10007] of  Genero

	(Autores_genero
		[ontology_Class20009]
		[ontology_Class20007]
		[ontology_Class20005]
		[ontology_Class20003]
		[ontology_Class10026]
		[ontology_Class10038]
		[ontology_Class10036]
		[ontology_Class10032]
		[ontology_Class10000]
		[ontology_Class10030]
		[ontology_Class10042]
		[ontology_Class10040]
		[ontology_Class20000]
		[ontology_Class20009]
		[ontology_Class30003]
		[ontology_Class30007]
		[ontology_Class30009]
		[ontology_Class30013]
		[ontology_Class30017]
		[ontology_Class30019]
		[ontology_Class30027]
		[ontology_Class30029]
		[ontology_Class30031]
		[KB_191360_Class25])
	(Libros_genero
		[ontology_Class10039]
		[ontology_Class10037]
		[ontology_Class10033]
		[ontology_Class20010]
		[ontology_Class10001]
		[ontology_Class10031]
		[ontology_Class10043]
		[ontology_Class10041]
		[ontology_Class20008]
		[ontology_Class20006]
		[ontology_Class10027]
		[ontology_Class20004]
		[ontology_Class20001]
		[ontology_Class20002]
		[ontology_Class30004]
		[ontology_Class30008]
		[ontology_Class30012]
		[ontology_Class30014]
		[ontology_Class30018]
		[ontology_Class30020]
		[ontology_Class30028]
		[ontology_Class30030]
		[ontology_Class30032]
		[ontology_Class30037])
	(NombreGenero "Classics"))

([ontology_Class10008] of  Genero

	(Autores_genero
		[ontology_Class10026]
		[ontology_Class20007]
		[ontology_Class20000]
		[ontology_Class30015]
		[ontology_Class30025]
		[KB_191360_Class25])
	(Libros_genero
		[ontology_Class10027]
		[ontology_Class20008]
		[ontology_Class20001]
		[ontology_Class20002]
		[ontology_Class30016]
		[ontology_Class30026]
		[ontology_Class30033])
	(NombreGenero "Fantasy"))

([ontology_Class10009] of  Genero

	(Autores_genero
		[ontology_Class10000]
		[ontology_Class30029])
	(Libros_genero
		[ontology_Class10002]
		[ontology_Class10001]
		[ontology_Class30030])
	(NombreGenero "Humor"))

([ontology_Class10010] of  Genero

	(Autores_genero
		[ontology_Class10028]
		[ontology_Class10042]
		[ontology_Class30009]
		[ontology_Class30029])
	(Libros_genero
		[ontology_Class10029]
		[ontology_Class10043]
		[ontology_Class30010]
		[ontology_Class30011]
		[ontology_Class30030])
	(NombreGenero "Philosophical"))

([ontology_Class10011] of  Genero

	(Autores_genero
		[ontology_Class10032]
		[ontology_Class30003]
		[ontology_Class30021]
		[ontology_Class30023]
		[ontology_Class30025])
	(Libros_genero
		[ontology_Class10033]
		[ontology_Class30004]
		[ontology_Class30022]
		[ontology_Class30024]
		[ontology_Class30026])
	(NombreGenero "Romance"))

([ontology_Class10012] of  Genero

	(Autores_genero
		[ontology_Class20009]
		[ontology_Class30023]
		[ontology_Class30025]
		[KB_191360_Class25])
	(Libros_genero
		[ontology_Class20010]
		[ontology_Class30024]
		[ontology_Class30026]
		[ontology_Class30034])
	(NombreGenero "Suspense"))

([ontology_Class10014] of  Tematica

	(Libros_tematica
		[ontology_Class20006]
		[ontology_Class10041]
		[ontology_Class10027]
		[ontology_Class20001]
		[ontology_Class20002]
		[ontology_Class30014]
		[ontology_Class30016]
		[ontology_Class30026]
		[ontology_Class30030])
	(NombreTematica "Adventures"))

([ontology_Class10015] of  Tematica

	(Libros_tematica
		[ontology_Class10031]
		[ontology_Class10039]
		[ontology_Class20004]
		[ontology_Class30006])
	(NombreTematica "Contemporary"))

([ontology_Class10016] of  Tematica

	(Libros_tematica
		[ontology_Class10002]
		[ontology_Class10037]
		[ontology_Class10001]
		[ontology_Class30008]
		[ontology_Class30012]
		[ontology_Class30018]
		[ontology_Class30026]
		[ontology_Class30032])
	(NombreTematica "Dystopia"))

([ontology_Class10017] of  Tematica

	(Libros_tematica
		[ontology_Class30011]
		[ontology_Class30012])
	(NombreTematica "Feminism"))

([ontology_Class10018] of  Tematica

	(Libros_tematica [ontology_Class30022])
	(NombreTematica "LGBT"))

([ontology_Class10019] of  Tematica

	(Libros_tematica
		[ontology_Class10033]
		[ontology_Class30026])
	(NombreTematica "Love"))

([ontology_Class10020] of  Tematica

	(Libros_tematica
		[ontology_Class20008]
		[ontology_Class20002])
	(NombreTematica "Mythology"))

([ontology_Class10021] of  Tematica

	(Libros_tematica
		[ontology_Class30035]
		[ontology_Class30037])
	(NombreTematica "Paranormal"))

([ontology_Class10022] of  Tematica

	(Libros_tematica [ontology_Class10001])
	(NombreTematica "Political"))

([ontology_Class10023] of  Tematica

	(Libros_tematica
		[ontology_Class20010]
		[ontology_Class10002]
		[ontology_Class10037]
		[ontology_Class10035]
		[ontology_Class30004]
		[ontology_Class30008]
		[ontology_Class30011]
		[ontology_Class30016]
		[ontology_Class30018]
		[ontology_Class30026]
		[ontology_Class30028]
		[ontology_Class30033])
	(NombreTematica "ScienceFiction"))

([ontology_Class10024] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [KB_191360_Class22])
	(Ha_escrito [ontology_Class10025])
	(NombreAutor "Ann Patchett"))

([ontology_Class10025] of  Libro

	(Anyo 2019)
	(Dificultad 7)
	(Es_genero [KB_191360_Class22])
	(Es_tematica [ontology_Class19])
	(Escrito_por [ontology_Class10024])
	(Juvenil TRUE)
	(Longitud 352)
	(Titulo "The Dutch House")
	(Valoracion 8))

([ontology_Class10026] of  Autor

	(Es_nacionalidad [ontology_Class1])
	(Escribe_genero
		[ontology_Class10008]
		[ontology_Class10007])
	(Ha_escrito [ontology_Class10027])
	(NombreAutor "Antoine de Saint Exupery"))

([ontology_Class10027] of  Libro

	(Anyo 1943)
	(Bestseller TRUE)
	(Dificultad 6)
	(Es_genero
		[ontology_Class10008]
		[ontology_Class10007])
	(Es_tematica [ontology_Class10014])
	(Escrito_por [ontology_Class10026])
	(Juvenil TRUE)
	(Longitud 120)
	(Titulo "The Little Prince")
	(Valoracion 9))

([ontology_Class10028] of  Autor

	(Es_nacionalidad [ontology_Class10006])
	(Escribe_genero
		[KB_191360_Class24]
		[KB_191360_Class22]
		[ontology_Class10010])
	(Ha_escrito [ontology_Class10029])
	(NombreAutor "Art Spiegelman"))

([ontology_Class10029] of  Libro

	(Anyo 1991)
	(Dificultad 6)
	(Es_genero
		[ontology_Class10010]
		[KB_191360_Class24]
		[KB_191360_Class22])
	(Es_tematica [ontology_Class19])
	(Escrito_por [ontology_Class10028])
	(Longitud 296)
	(Titulo "Maus")
	(Valoracion 10))

([ontology_Class10030] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero
		[ontology_Class10007]
		[KB_191360_Class22])
	(Ha_escrito [ontology_Class10031])
	(NombreAutor "Charles Dickens"))

([ontology_Class10031] of  Libro

	(Anyo 1859)
	(Bestseller TRUE)
	(Dificultad 9)
	(Es_genero
		[ontology_Class10007]
		[KB_191360_Class22])
	(Es_tematica [ontology_Class10015])
	(Escrito_por [ontology_Class10030])
	(Juvenil TRUE)
	(Longitud 341)
	(Titulo "A Tale Of  Two Cities")
	(Valoracion 7))

([ontology_Class10032] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero
		[ontology_Class10011]
		[ontology_Class10007])
	(Ha_escrito [ontology_Class10033])
	(NombreAutor "Charlotte Bronte"))

([ontology_Class10033] of  Libro

	(Anyo 1847)
	(Bestseller TRUE)
	(Dificultad 9)
	(Es_genero
		[ontology_Class10007]
		[ontology_Class10011])
	(Es_tematica [ontology_Class10019])
	(Escrito_por [ontology_Class10032])
	(Longitud 600)
	(Titulo "Jane Eyre")
	(Valoracion 8))

([ontology_Class10034] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [KB_191360_Class22])
	(Ha_escrito [ontology_Class10035])
	(NombreAutor "Colson Whitehead"))

([ontology_Class10035] of  Libro

	(Anyo 2019)
	(Dificultad 6)
	(Es_genero [KB_191360_Class22])
	(Es_tematica [ontology_Class10023])
	(Escrito_por [ontology_Class10034])
	(Longitud 224)
	(Titulo "The Nickel Boys")
	(Valoracion 8))

([ontology_Class10036] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [ontology_Class10007])
	(Ha_escrito [ontology_Class10037])
	(NombreAutor "Comac McCarthy"))

([ontology_Class10037] of  Libro

	(Anyo 2006)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero [ontology_Class10007])
	(Es_tematica
		[ontology_Class10023]
		[ontology_Class10016])
	(Escrito_por [ontology_Class10036])
	(Longitud 241)
	(Titulo "The Road")
	(Valoracion 8))

([ontology_Class10038] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[KB_191360_Class22]
		[ontology_Class10007])
	(Ha_escrito [ontology_Class10039])
	(NombreAutor "Elizabeth Strout"))

([ontology_Class10039] of  Libro

	(Anyo 2019)
	(Dificultad 7)
	(Es_genero
		[ontology_Class10007]
		[KB_191360_Class22])
	(Es_tematica [ontology_Class10015])
	(Escrito_por [ontology_Class10038])
	(Longitud 304)
	(Titulo "Olive, Again")
	(Valoracion 9))

([ontology_Class10040] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [ontology_Class10007])
	(Ha_escrito [ontology_Class10041])
	(NombreAutor "Ernest Hemingway"))

([ontology_Class10041] of  Libro

	(Anyo 1952)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero [ontology_Class10007])
	(Es_tematica [ontology_Class10014])
	(Escrito_por [ontology_Class10040])
	(Juvenil TRUE)
	(Longitud 127)
	(Titulo "The Old Man And The Sea")
	(Valoracion 8))

([ontology_Class10042] of  Autor

	(Es_nacionalidad [ontology_Class10005])
	(Escribe_genero
		[ontology_Class10010]
		[ontology_Class10007])
	(Ha_escrito [ontology_Class10043])
	(NombreAutor "Franz Kafka"))

([ontology_Class10043] of  Libro

	(Anyo 1925)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero
		[ontology_Class10007]
		[ontology_Class10010])
	(Es_tematica [ontology_Class8])
	(Escrito_por [ontology_Class10042])
	(Longitud 255)
	(Titulo "The Trial")
	(Valoracion 8))

([ontology_Class12] of  Tematica

	(Libros_tematica [KB_191360_Class48])
	(NombreTematica "Medical"))

([ontology_Class13] of  Tematica

	(Libros_tematica [KB_191360_Class40])
	(NombreTematica "Monsters"))

([ontology_Class14] of  Tematica

	(Libros_tematica
		[KB_191360_Class43]
		[KB_191360_Class42]
		[ontology_Class30020])
	(NombreTematica "NativeAmerican"))

([ontology_Class16] of  Tematica

	(Libros_tematica
		[KB_191360_Class44]
		[KB_191360_Class45])
	(NombreTematica "Medieval"))

([ontology_Class17] of  Tematica

	(Libros_tematica
		[KB_191360_Class47]
		[ontology_Class30024])
	(NombreTematica "Detective"))

([ontology_Class18] of  Tematica

	(Libros_tematica [KB_191360_Class39])
	(NombreTematica "Superpowers"))

([ontology_Class19] of  Tematica

	(Libros_tematica
		[ontology_Class10029]
		[KB_191360_Class46]
		[ontology_Class10025])
	(NombreTematica "WorldWar"))

([ontology_Class2] of  Nacionalidad

	(Autores_nacionalidad [ontology_Class20007])
	(NombreNacionalidad "Griega"))

([ontology_Class20000] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero
		[ontology_Class10007]
		[ontology_Class10008]
		[KB_191360_Class24])
	(Ha_escrito
		[ontology_Class20001]
		[ontology_Class20002])
	(NombreAutor "JRR Tolkien"))

([ontology_Class20001] of  Libro

	(Anyo 1937)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero
		[ontology_Class10007]
		[ontology_Class10008])
	(Es_tematica [ontology_Class10014])
	(Escrito_por [ontology_Class20000])
	(Juvenil TRUE)
	(Longitud 310)
	(Titulo "The Hobbit")
	(Valoracion 9))

([ontology_Class20002] of  Libro

	(Anyo 1954)
	(Bestseller TRUE)
	(Dificultad 9)
	(Es_genero
		[ontology_Class10007]
		[ontology_Class10008]
		[KB_191360_Class24])
	(Es_tematica
		[ontology_Class10014]
		[ontology_Class10020])
	(Escrito_por [ontology_Class20000])
	(Juvenil TRUE)
	(Longitud 1200)
	(Titulo "The Lord of the Rings")
	(Valoracion 10))

([ontology_Class20003] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[ontology_Class10007]
		[KB_191360_Class22])
	(Ha_escrito [ontology_Class20004])
	(NombreAutor "Harper Lee"))

([ontology_Class20004] of  Libro

	(Anyo 1960)
	(Bestseller TRUE)
	(Dificultad 5)
	(Es_genero
		[ontology_Class10007]
		[KB_191360_Class22])
	(Es_tematica [ontology_Class10015])
	(Escrito_por [ontology_Class20003])
	(Juvenil TRUE)
	(Longitud 281)
	(Titulo "To Kill a Mockingbird")
	(Valoracion 9))

([ontology_Class20005] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [ontology_Class10007])
	(Ha_escrito [ontology_Class20006])
	(NombreAutor "Herman Melville"))

([ontology_Class20006] of  Libro

	(Anyo 1851)
	(Bestseller TRUE)
	(Dificultad 8)
	(Es_genero [ontology_Class10007])
	(Es_tematica [ontology_Class10014])
	(Escrito_por [ontology_Class20005])
	(Juvenil TRUE)
	(Longitud 585)
	(Titulo "Moby Dick")
	(Valoracion 7))

([ontology_Class20007] of  Autor

	(Es_nacionalidad [ontology_Class2])
	(Escribe_genero
		[ontology_Class10008]
		[ontology_Class10007])
	(Ha_escrito [ontology_Class20008])
	(NombreAutor "Homer"))

([ontology_Class20008] of  Libro

	(Anyo 1892)
	(Bestseller TRUE)
	(Dificultad 8)
	(Es_genero
		[ontology_Class10008]
		[ontology_Class10007])
	(Es_tematica [ontology_Class10020])
	(Escrito_por [ontology_Class20007])
	(Juvenil TRUE)
	(Longitud 384)
	(Titulo "The Odyssey")
	(Valoracion 8))

([ontology_Class20009] of  Autor

	(Es_nacionalidad [ontology_Class10004])
	(Escribe_genero
		[ontology_Class10012]
		[ontology_Class10007])
	(Ha_escrito [ontology_Class20010])
	(NombreAutor "Isaac Azimov"))

([ontology_Class20010] of  Libro

	(Anyo 1950)
	(Dificultad 8)
	(Es_genero
		[ontology_Class10012]
		[ontology_Class10007])
	(Es_tematica [ontology_Class10023])
	(Escrito_por [ontology_Class20009])
	(Juvenil TRUE)
	(Longitud 253)
	(Titulo "I, Robot")
	(Valoracion 9))

([ontology_Class3] of  Nacionalidad

	(Autores_nacionalidad
		[ontology_Class10032]
		[KB_191360_Class26]
		[ontology_Class10030]
		[KB_191360_Class33]
		[ontology_Class20000]
		[ontology_Class30003]
		[ontology_Class30005]
		[ontology_Class30021]
		[ontology_Class30031])
	(NombreNacionalidad "Britanica"))

([ontology_Class30003] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero
		[ontology_Class10007]
		[ontology_Class10011]
		[KB_191360_Class22])
	(Ha_escrito [ontology_Class30004])
	(NombreAutor "Jane Austen"))

([ontology_Class30004] of  Libro

	(Anyo 1813)
	(Bestseller TRUE)
	(Dificultad 10)
	(Es_genero
		[ontology_Class10007]
		[KB_191360_Class22]
		[ontology_Class10011])
	(Es_tematica [ontology_Class10023])
	(Escrito_por [ontology_Class30003])
	(Longitud 378)
	(Titulo "Pride and Perjudice")
	(Valoracion 9))

([ontology_Class30005] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero [KB_191360_Class22])
	(Ha_escrito [ontology_Class30006])
	(NombreAutor "Jojo Moyes"))

([ontology_Class30006] of  Libro

	(Anyo 2019)
	(Dificultad 7)
	(Es_genero [KB_191360_Class22])
	(Es_tematica [ontology_Class10015])
	(Escrito_por [ontology_Class30005])
	(Juvenil TRUE)
	(Longitud 374)
	(Titulo "The Giver of Stars")
	(Valoracion 8))

([ontology_Class30007] of  Autor

	(Es_nacionalidad [ontology_Class10003])
	(Escribe_genero [ontology_Class10007])
	(Ha_escrito [ontology_Class30008])
	(NombreAutor "Kazuo Ishiguro"))

([ontology_Class30008] of  Libro

	(Anyo 2005)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero [ontology_Class10007])
	(Es_tematica
		[ontology_Class10016]
		[ontology_Class10023])
	(Escrito_por [ontology_Class30007])
	(Juvenil TRUE)
	(Longitud 288)
	(Titulo "Never Let Me Go")
	(Valoracion 7))

([ontology_Class30009] of  Autor

	(Es_nacionalidad [ontology_Class0])
	(Escribe_genero
		[ontology_Class10007]
		[KB_191360_Class22]
		[ontology_Class10010])
	(Ha_escrito
		[ontology_Class30010]
		[ontology_Class30011]
		[ontology_Class30012])
	(NombreAutor "Margaret Atwood"))

([ontology_Class30010] of  Libro

	(Anyo 1979)
	(Dificultad 8)
	(Es_genero
		[KB_191360_Class22]
		[ontology_Class10010])
	(Es_tematica [ontology_Class6])
	(Escrito_por [ontology_Class30009])
	(Longitud 427)
	(Titulo "Life Before Man")
	(Valoracion 6))

([ontology_Class30011] of  Libro

	(Anyo 2019)
	(Bestseller TRUE)
	(Dificultad 9)
	(Es_genero [ontology_Class10010])
	(Es_tematica
		[ontology_Class10017]
		[ontology_Class10023])
	(Escrito_por [ontology_Class30009])
	(Longitud 432)
	(Titulo "The Testaments")
	(Valoracion 7))

([ontology_Class30012] of  Libro

	(Anyo 1985)
	(Dificultad 7)
	(Es_genero [ontology_Class10007])
	(Es_tematica
		[ontology_Class10016]
		[ontology_Class10017])
	(Escrito_por [ontology_Class30009])
	(Longitud 311)
	(Titulo "The Handmaind's Tale")
	(Valoracion 8))

([ontology_Class30013] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [ontology_Class10007])
	(Ha_escrito [ontology_Class30014])
	(NombreAutor "Mark Twain"))

([ontology_Class30014] of  Libro

	(Anyo 1884)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero [ontology_Class10007])
	(Es_tematica [ontology_Class10014])
	(Escrito_por [ontology_Class30013])
	(Juvenil TRUE)
	(Longitud 366)
	(Titulo "The Adventures of Huckleberry Finn")
	(Valoracion 7))

([ontology_Class30015] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [ontology_Class10008])
	(Ha_escrito [ontology_Class30016])
	(NombreAutor "Orson Scott"))

([ontology_Class30016] of  Libro

	(Anyo 1985)
	(Bestseller TRUE)
	(Dificultad 8)
	(Es_genero [ontology_Class10008])
	(Es_tematica
		[ontology_Class10014]
		[ontology_Class10023])
	(Escrito_por [ontology_Class30015])
	(Juvenil TRUE)
	(Longitud 324)
	(Titulo "Ender's Game")
	(Valoracion 9))

([ontology_Class30017] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero [ontology_Class10007])
	(Ha_escrito [ontology_Class30018])
	(NombreAutor "Philip K Dick"))

([ontology_Class30018] of  Libro

	(Anyo 1968)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero [ontology_Class10007])
	(Es_tematica
		[ontology_Class10016]
		[ontology_Class10023])
	(Escrito_por [ontology_Class30017])
	(Juvenil TRUE)
	(Longitud 210)
	(Titulo "Do Androids Dream Od Electric Sheep?")
	(Valoracion 8))

([ontology_Class30019] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[ontology_Class10007]
		[KB_191360_Class22])
	(Ha_escrito [ontology_Class30020])
	(NombreAutor "Richard Wright"))

([ontology_Class30020] of  Libro

	(Anyo 1940)
	(Dificultad 7)
	(Es_genero
		[ontology_Class10007]
		[KB_191360_Class22])
	(Es_tematica [ontology_Class14])
	(Escrito_por [ontology_Class30019])
	(Juvenil TRUE)
	(Longitud 504)
	(Titulo "Native Son")
	(Valoracion 8))

([ontology_Class30021] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero
		[KB_191360_Class22]
		[ontology_Class10011])
	(Ha_escrito [ontology_Class30022])
	(NombreAutor "Sarah Waters"))

([ontology_Class30022] of  Libro

	(Anyo 2014)
	(Dificultad 10)
	(Es_genero
		[KB_191360_Class22]
		[ontology_Class10011])
	(Es_tematica [ontology_Class10018])
	(Escrito_por [ontology_Class30021])
	(Juvenil TRUE)
	(Longitud 576)
	(Titulo "The Paying Guest")
	(Valoracion 7))

([ontology_Class30023] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[KB_191360_Class23]
		[ontology_Class10012]
		[ontology_Class10011])
	(Ha_escrito [ontology_Class30024])
	(NombreAutor "Sidney Sheldon"))

([ontology_Class30024] of  Libro

	(Anyo 1985)
	(Dificultad 9)
	(Es_genero
		[KB_191360_Class23]
		[ontology_Class10012]
		[ontology_Class10011])
	(Es_tematica [ontology_Class17])
	(Escrito_por [ontology_Class30023])
	(Juvenil TRUE)
	(Longitud 416)
	(Titulo "If Tomorrow Comes")
	(Valoracion 7))

([ontology_Class30025] of  Autor

	(Es_nacionalidad [ontology_Class4])
	(Escribe_genero
		[ontology_Class10008]
		[KB_191360_Class24]
		[ontology_Class10012]
		[ontology_Class10011])
	(Ha_escrito [ontology_Class30026])
	(NombreAutor "Susanne Collins"))

([ontology_Class30026] of  Libro

	(Anyo 2008)
	(Bestseller TRUE)
	(Dificultad 6)
	(Es_genero
		[KB_191360_Class24]
		[ontology_Class10012]
		[ontology_Class10008]
		[ontology_Class10011])
	(Es_tematica
		[ontology_Class10014]
		[ontology_Class10019]
		[ontology_Class10016]
		[ontology_Class10023])
	(Escrito_por [ontology_Class30025])
	(Juvenil TRUE)
	(Longitud 374)
	(Titulo "The Hunger Games")
	(Valoracion 9))

([ontology_Class30027] of  Autor

	(Es_nacionalidad [ontology_Class10004])
	(Escribe_genero [ontology_Class10007])
	(Ha_escrito [ontology_Class30028])
	(NombreAutor "Vladimir Nabokov"))

([ontology_Class30028] of  Libro

	(Anyo 1955)
	(Dificultad 7)
	(Es_genero [ontology_Class10007])
	(Es_tematica [ontology_Class10023])
	(Escrito_por [ontology_Class30027])
	(Juvenil TRUE)
	(Longitud 336)
	(Titulo "Lolita")
	(Valoracion 8))

([ontology_Class30029] of  Autor

	(Es_nacionalidad [ontology_Class1])
	(Escribe_genero
		[ontology_Class10007]
		[ontology_Class10010]
		[ontology_Class10009])
	(Ha_escrito [ontology_Class30030])
	(NombreAutor "Voltaire"))

([ontology_Class30030] of  Libro

	(Anyo 1759)
	(Dificultad 6)
	(Es_genero
		[ontology_Class10007]
		[ontology_Class10009]
		[ontology_Class10010])
	(Es_tematica [ontology_Class10014])
	(Escrito_por [ontology_Class30029])
	(Juvenil TRUE)
	(Longitud 129)
	(Titulo "Candide")
	(Valoracion 7))

([ontology_Class30031] of  Autor

	(Es_nacionalidad [ontology_Class3])
	(Escribe_genero [ontology_Class10007])
	(Ha_escrito [ontology_Class30032])
	(NombreAutor "William Golding"))

([ontology_Class30032] of  Libro

	(Anyo 1954)
	(Bestseller TRUE)
	(Dificultad 7)
	(Es_genero [ontology_Class10007])
	(Es_tematica [ontology_Class10016])
	(Escrito_por [ontology_Class30031])
	(Juvenil TRUE)
	(Longitud 248)
	(Titulo "Lord of the Files")
	(Valoracion 7))

([ontology_Class30033] of  Libro

	(Anyo 1978)
	(Bestseller TRUE)
	(Dificultad 10)
	(Es_genero
		[ontology_Class10008]
		[KB_191360_Class20])
	(Es_tematica [ontology_Class10023])
	(Escrito_por [KB_191360_Class25])
	(Longitud 823)
	(Titulo "The Stand")
	(Valoracion 8))

([ontology_Class30034] of  Libro

	(Anyo 1992)
	(Dificultad 8)
	(Es_genero
		[ontology_Class10012]
		[KB_191360_Class20])
	(Es_tematica [ontology_Class6])
	(Escrito_por [KB_191360_Class25])
	(Longitud 332)
	(Titulo "Gerald's Game")
	(Valoracion 7))

([ontology_Class30035] of  Libro

	(Anyo 1977)
	(Bestseller TRUE)
	(Dificultad 10)
	(Es_genero
		[KB_191360_Class20]
		[KB_191360_Class23])
	(Es_tematica
		[ontology_Class6]
		[ontology_Class10021])
	(Escrito_por [KB_191360_Class25])
	(Longitud 652)
	(Titulo "The Shinning")
	(Valoracion 9))

([ontology_Class30037] of  Libro

	(Anyo 1974)
	(Bestseller TRUE)
	(Dificultad 6)
	(Es_genero
		[ontology_Class10007]
		[KB_191360_Class20]
		[KB_191360_Class23])
	(Es_tematica [ontology_Class10021])
	(Escrito_por [KB_191360_Class25])
	(Longitud 199)
	(Titulo "Carrie")
	(Valoracion 8))

([ontology_Class4] of  Nacionalidad

	(Autores_nacionalidad
		[ontology_Class10040]
		[KB_191360_Class29]
		[ontology_Class20005]
		[KB_191360_Class28]
		[ontology_Class20003]
		[KB_191360_Class25]
		[ontology_Class10024]
		[ontology_Class10038]
		[KB_191360_Class38]
		[KB_191360_Class37]
		[ontology_Class10036]
		[KB_191360_Class36]
		[ontology_Class10034]
		[KB_191360_Class34]
		[KB_191360_Class32]
		[ontology_Class10000]
		[ontology_Class30013]
		[ontology_Class30015]
		[ontology_Class30017]
		[ontology_Class30019]
		[ontology_Class30023]
		[ontology_Class30025])
	(NombreNacionalidad "Estadounidense"))

([ontology_Class6] of  Tematica

	(Libros_tematica
		[KB_191360_Class49]
		[ontology_Class30010]
		[ontology_Class30034]
		[ontology_Class30035])
	(NombreTematica "Psychological"))

([ontology_Class8] of  Tematica

	(Libros_tematica
		[KB_191360_Class50]
		[ontology_Class10043]
		[KB_191360_Class48])
	(NombreTematica "Crime"))

([ontology_Class9] of  Tematica

	(Libros_tematica [KB_191360_Class41])
	(NombreTematica "SerialKiller")))





;;--------------------------------------------------------------------------------------------------------------------------
;; NUEVAS CLASES
;;--------------------------------------------------------------------------------------------------------------------------
(defclass Recomendacion
	(is-a USER)
	(role concrete)
	(slot nombre_libro_recomendado (type INSTANCE) (create-accessor read-write))
	(slot puntuacion (type INTEGER) (create-accessor read-write))
	(slot bestseller (type SYMBOL) (allowed-values FALSE TRUE) (create-accessor read-write))
	(multislot justificaciones (type STRING) (create-accessor read-write)))

(defclass ListaLibrosRecomendados
	(is-a USER)
	(role concrete)
	(multislot libros_recomendados (type INSTANCE) (create-accessor read-write)))



;;--------------------------------------------------------------------------------------------------------------------------
;; MODULOS
;;--------------------------------------------------------------------------------------------------------------------------
(defmodule MAIN 
	(export ?ALL))

(defmodule recopilacion-datos-lector
	(import MAIN ?ALL)
	(export ?ALL))
	
(defmodule recopilacion-datos-preferencias
	(import MAIN ?ALL)
	(import recopilacion-datos-lector ?ALL)
	(export ?ALL))
	
(defmodule recopilacion-datos-libros-leidos
	(import MAIN ?ALL)
	(import recopilacion-datos-lector ?ALL)
	(import recopilacion-datos-preferencias ?ALL)
	(export ?ALL))
	
(defmodule procesado-datos
	(import MAIN ?ALL)
	(import recopilacion-datos-lector deftemplate ?ALL)
	(import recopilacion-datos-preferencias deftemplate ?ALL)
	(import recopilacion-datos-libros-leidos deftemplate ?ALL)
	(export ?ALL))
	
(defmodule generacion-soluciones
	(import MAIN ?ALL)
	(export ?ALL))
	
(defmodule presentar-resultados
	(import MAIN ?ALL)
	(export ?ALL))
	

;;--------------------------------------------------------------------------------------------------------------------------
;; TEMPLATES
;;--------------------------------------------------------------------------------------------------------------------------
(deftemplate MAIN::datos_perfil_lector
	(slot edad (type INTEGER) (default -1)) ;edad del lector
	(slot frecuencia (type SYMBOL) (allowed-symbols Diariamente Habitualmente Esporadicamente Nunca nulo) (default nulo)) ;frecuencia con la que lee
	(slot lugar (type SYMBOL) (allowed-symbols Casa Biblioteca AireLibre TransportePublico Indiferente nulo) (default nulo)) ; lugar donde suele leer
	(slot bestseller (type SYMBOL) (allowed-symbols Si No nulo) (default nulo)) ;le gustan los libros populares
	(slot valoracion (type SYMBOL) (allowed-symbols Si No nulo) (default nulo)) ;se deja llevar por las valoraciones del libro
	(slot autor_extranjero (type SYMBOL) (allowed-symbols Si No Indiferente nulo) (default nulo))
	(slot nacionalidad (type STRING) (default "nulo"))) ;nacionalidad del lector
	
(deftemplate MAIN::datos_preferencias_lector
	(multislot generos_preferidos (type INSTANCE))
	(multislot autores_preferidos (type INSTANCE))
	(multislot tematicas_preferidas (type INSTANCE)))
	
(deftemplate MAIN::datos_libros_leidos_lector
	(multislot libros_leidos (type INSTANCE)))

(deftemplate MAIN::lista_recomendaciones_desordenada
	(multislot recomendaciones (type INSTANCE)))
	
(deftemplate MAIN::lista_recomendaciones_ordenada_por_bestseller
	(multislot recomendaciones (type INSTANCE)))
	
(deftemplate MAIN::lista_recomendaciones_ordenada_por_puntuacion
	(multislot recomendaciones (type INSTANCE)))


;;--------------------------------------------------------------------------------------------------------------------------
;; FUNCTIONS
;;--------------------------------------------------------------------------------------------------------------------------
(deffunction MAIN::pregunta-libre-numerica (?pregunta ?rango-inicial ?rango-final)
	(format t "%s (Valor desde %d hasta %d): " ?pregunta ?rango-inicial ?rango-final)
	(bind ?respuesta (read))
	(while (not (and (>= ?respuesta ?rango-inicial) (<= ?respuesta ?rango-final))) do
		(format t "%s (Valor desde %d hasta %d: )" ?pregunta ?rango-inicial ?rango-final)
		(bind ?respuesta (read)))
	?respuesta)
	
(deffunction MAIN::pregunta-respuesta-unica (?pregunta $?posibles-valores)
	(bind ?linea (format nil "%s" ?pregunta))
	(printout t ?linea crlf)
	(progn$ (?valor ?posibles-valores)
		(bind ?linea (format nil " %d. %s" ?valor-index ?valor))
		(printout t ?linea crlf))
	(bind ?respuesta (pregunta-libre-numerica "Escoge una opcion:" 1 (length$ ?posibles-valores)))
	?respuesta)

(deffunction MAIN::pregunta-multirespuesta (?pregunta $?posibles-valores)
	(bind ?linea (format nil "%s" ?pregunta))
	(printout t ?linea crlf)
	(progn$ (?valor ?posibles-valores)
		(bind ?linea (format nil " %d. %s" ?valor-index ?valor))
		(printout t ?linea crlf))
	(format t "%s" "Indica los numeros referentes a las preferencias separados por un espacio: ")
	(bind ?respuesta (readline))
	(bind ?numeros (str-explode ?respuesta))
	(bind $?lista (create$))
	(progn$ (?valor ?numeros)
		(if (and (integerp ?valor) (and (>= ?valor 0) (<= ?valor (length$ ?posibles-valores))))
			then (if (not (member$ ?valor ?lista))
				then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?valor)))
		))
	(if (or (member$ 0 ?lista) (= (length$ ?lista) 0))
		then (bind ?lista (create$ 0)))
	?lista)
	
(deffunction maxima-puntuacion ($?lista)
	(bind ?maximo -999)
	(bind ?elemento nil)
	(progn$ (?curr-rec $?lista)
		(bind ?curr-cont (send ?curr-rec get-nombre_libro_recomendado))
		(bind ?curr-punt (send ?curr-rec get-puntuacion))
		(if (> ?curr-punt ?maximo)
			then (bind ?maximo ?curr-punt) (bind ?elemento ?curr-rec)))
	?elemento)

(deffunction ordenacion-bestseller ($?lista)
	(bind ?elemento (nth$ 1 $?lista))
	(progn$ (?curr-rec $?lista)
		(bind ?curr-best (send ?curr-rec get-bestseller))
		(if (eq ?curr-best TRUE)
			then (bind ?elemento ?curr-rec)))
	?elemento)



;;--------------------------------------------------------------------------------------------------------------------------
;; MENSAJES
;;--------------------------------------------------------------------------------------------------------------------------
(defmessage-handler MAIN::Libro mostrar-libro ()
	(format t "Titulo: %s %n" ?self:Titulo)
	(printout t crlf)
	(format t "Anyo: %d" ?self:Anyo)
	(printout t crlf)
	(format t "Longitud: %d" ?self:Longitud)
	(printout t crlf)
	(format t "Dificultad: %d" ?self:Dificultad)
	(printout t crlf)
	(format t "Juvenil: %s" ?self:Juvenil)
	(printout t crlf)
	(format t "Bestseller: %s" ?self:Bestseller)
	(printout t crlf)
	(format t "Valoracion: %d" ?self:Valoracion)
	(printout t crlf)
	(format t "Escrito por: %s" (send ?self:Escrito_por get-NombreAutor))
	(printout t crlf)
	(bind ?i 1)
	(progn$ (?curr-gen ?self:Es_genero)
		(format t "Genero %d: %s" ?i (send ?curr-gen get-NombreGenero))
		(printout t crlf)
		(bind ?i (+ ?i 1))
	)
	(bind ?j 1)
	(progn$ (?curr-tem ?self:Es_tematica)
		(format t "Tematica %d: %s" ?j (send ?curr-tem get-NombreTematica))
		(printout t crlf)
		(bind ?j (+ ?j 1))
	)
)

(defmessage-handler MAIN::Recomendacion mostrar-recomendacion ()
	(printout t "---------------------" crlf)
	(printout t (send ?self:nombre_libro_recomendado mostrar-libro))
	(printout t crlf)
	(format t "Nivel de recomendacion: %d %n" ?self:puntuacion)
	(printout t "Justificacion de la eleccion: " crlf)
	(progn$ (?curr-just ?self:justificaciones)
		(printout t ?curr-just crlf))
	(printout t crlf)
	(printout t "---------------------" crlf))


;;--------------------------------------------------------------------------------------------------------------------------
;; INICIO
;;--------------------------------------------------------------------------------------------------------------------------
(defrule MAIN::init "Regla inicial"
	(declare(salience 10))
	=>
	(printout t"-------------------------------------------" crlf)
	(printout t"     Bookstore Project     " crlf)
	(printout t"-------------------------------------------" crlf)
	(printout t crlf)
	(printout t"Bienvenido! Primero debe responder algunas preguntas:")
	(printout t crlf)
	(focus recopilacion-datos-lector))
	
	

;;--------------------------------------------------------------------------------------------------------------------------
;; RECOPILACION DATOS LECTOR
;;--------------------------------------------------------------------------------------------------------------------------	
(defrule recopilacion-datos-lector::create-hecho-perfil-lector "Crea un hecho con valores por defecto"
	(not (datos_perfil_lector))
	=>
	(assert (datos_perfil_lector)))

(defrule recopilacion-datos-lector::init-edad "Inicializa la edad del lector"
	?a <- (datos_perfil_lector (edad ?edad))
	(test (< ?edad 0))
	=>
	(bind ?edad (pregunta-libre-numerica "Que edad tiene?" 1 100))
	(modify ?a (edad ?edad)))
	
(defrule recopilacion-datos-lector::init-frecuencia "Inicializa la frecuencia con que lee el lector"
	?f <- (datos_perfil_lector (frecuencia ?frec))
	(test (eq ?frec nulo))
	=>
	(bind ?frec (pregunta-respuesta-unica "Con que frecuencia lee?" Diariamente Habitualmente Esporadicamente Nunca))
	(modify ?f (frecuencia ?frec)))
	
(defrule recopilacion-datos-lector::init-lugar "Inicializa el lugar donde suele leer el lector"
	?l <- (datos_perfil_lector (lugar ?lugar))
	(test (eq ?lugar nulo))
	=>
	(bind ?lugar (pregunta-respuesta-unica "En que lugar suele leer?" Casa Biblioteca AireLibre TransportePublico Indiferente))
	(modify ?l (lugar ?lugar)))
	
(defrule recopilacion-datos-lector::init-bestseller "Inicializa si le gustan los libros populares al lector"
	?b <- (datos_perfil_lector (bestseller ?best))
	(test (eq ?best nulo))
	=>
	(bind ?best (pregunta-respuesta-unica "Le gustan los libros populares (bestseller)?" Si No Indiferente))
	(modify ?b (bestseller ?best)))
	
(defrule recopilacion-datos-lector::init-valoracion "Inicializa si se deja llevar por las valoraciones el lector"
	?v <- (datos_perfil_lector (valoracion ?val))
	(test (eq ?val nulo))
	=>
	(bind ?val (pregunta-respuesta-unica "A la hora de escoger un libro se deja llevar por las valoraciones?" Si No))
	(modify ?v (valoracion ?val)))
	
(defrule recopilacion-datos-lector::init-autor-extranjero "Inicializa si prefiere autores extranjeros el lector"
	?a <- (datos_perfil_lector (autor_extranjero ?autor))
	(test (eq ?autor nulo))
	=>
	(bind ?autor (pregunta-respuesta-unica "Prefiere autores extranjeros?" Si No Indiferente))
	(modify ?a (autor_extranjero ?autor)))
	
(defrule recopilacion-datos-lector::init-nacionalidad "Inicializa la nacionalidad del lector"
	?n <- (datos_perfil_lector (nacionalidad ?nac))
	(test (eq ?nac "nulo"))
	=>
	(bind $?obj-nacionalidades (find-all-instances ((?inst Nacionalidad)) TRUE))
	(bind $?nombre-nacionalidades (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-nacionalidades)) do
		(bind ?curr-obj (nth$ ?i ?obj-nacionalidades))
		(bind ?curr-nom (send ?curr-obj get-NombreNacionalidad))
		(bind $?nombre-nacionalidades (insert$ $?nombre-nacionalidades (+ (length$ $?nombre-nacionalidades) 1) ?curr-nom)))
	(bind ?escogido (pregunta-respuesta-unica "De que nacionalidad eres?" $?nombre-nacionalidades))
	(bind ?curr-nacionalidad (nth$ ?escogido ?obj-nacionalidades))
	(modify ?n (nacionalidad (send ?curr-nacionalidad get-NombreNacionalidad))))

(defrule recopilacion-datos-lector::cambiar-recopilacion-preferencias "Cambia el foco al modulo de recopilacion de preferencias"
	(declare (salience 10))
	?jump <- (datos_perfil_lector (edad ?edad) (frecuencia ?frec) (lugar ?lugar) (bestseller ?best) (valoracion ?val) (autor_extranjero ?autor) (nacionalidad ?nac))
	(test (> ?edad 0))
	(test (neq ?frec nulo))
	(test (neq ?lugar nulo))
	(test (neq ?best nulo))
	(test (neq ?val nulo))
	(test (neq ?autor nulo))
	(test (neq ?nac "nulo"))
	=>
	(focus recopilacion-datos-preferencias))



;;--------------------------------------------------------------------------------------------------------------------------
;; RECOPILACION DATOS PREFERENCIAS
;;--------------------------------------------------------------------------------------------------------------------------
(deffacts recopilacion-datos-preferencias::init-hechos "Inicializa hechos para poder recopilar datos"
	(generos_pref ask)
	(autores_pref ask)
	(tematicas_pref ask)
	(datos_preferencias_lector ))

(defrule recopilacion-datos-preferencias::init-generos-preferidos "Inicializa los generos preferidos del lector"
	?hecho <- (generos_pref ask)
	?pref <- (datos_preferencias_lector)
	=>
	(bind $?obj-generos (find-all-instances ((?inst Genero)) TRUE))
	(bind $?nombre-generos (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-generos)) do
		(bind ?curr-obj (nth$ ?i ?obj-generos))
		(bind ?curr-nom (send ?curr-obj get-NombreGenero))
		(bind $?nombre-generos (insert$ $?nombre-generos (+ (length$ $?nombre-generos) 1) ?curr-nom)))
	(bind ?escogido (pregunta-multirespuesta "Escoja sus generos preferidos (o 0 en el caso contrario): " $?nombre-generos))
	(assert (generos_pref TRUE))
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(if (= ?curr-index 0)
			then (assert (generos_pref FALSE)))
		(bind ?curr-genero (nth$ ?curr-index ?obj-generos))
		(bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-genero))
	)
	(retract ?hecho)
	(modify ?pref (generos_preferidos $?respuesta)))
	
(defrule recopilacion-datos-preferencias::init-tematicas-preferidas "Inicializa las tematicas preferidas del lector"
	?hecho <- (tematicas_pref ask)
	?pref <- (datos_preferencias_lector)
	=>
	(bind $?obj-tematicas (find-all-instances ((?inst Tematica)) TRUE))
	(bind $?nombre-tematicas (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-tematicas)) do
		(bind ?curr-obj (nth$ ?i ?obj-tematicas))
		(bind ?curr-nom (send ?curr-obj get-NombreTematica))
		(bind $?nombre-tematicas (insert$ $?nombre-tematicas (+ (length$ $?nombre-tematicas) 1) ?curr-nom)))
	(bind ?escogido (pregunta-multirespuesta "Escoja sus tematicas preferidas (o 0 en el caso contrario): " $?nombre-tematicas))
	(assert (tematicas_pref TRUE))
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(if (= ?curr-index 0)
			then (assert (tematicas_pref FALSE)))
		(bind ?curr-tematica (nth$ ?curr-index ?obj-tematicas))
		(bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-tematica))
	)
	(retract ?hecho)
	(modify ?pref (tematicas_preferidas $?respuesta)))

(defrule recopilacion-datos-preferencias::init-autores-preferidos "Inicializa los autores preferidos del lector"
	?hecho <- (autores_pref ask)
	?pref <- (datos_preferencias_lector)
	=>
	(bind $?obj-autores (find-all-instances ((?inst Autor)) TRUE))
	(bind $?nombre-autores (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-autores)) do
		(bind ?curr-obj (nth$ ?i ?obj-autores))
		(bind ?curr-nom (send ?curr-obj get-NombreAutor))
		(bind $?nombre-autores (insert$ $?nombre-autores (+ (length$ $?nombre-autores) 1) ?curr-nom)))
	(bind ?escogido (pregunta-multirespuesta "Escoja sus autores preferidos (o 0 en el caso contrario): " $?nombre-autores))
	(assert (autores_pref TRUE))
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(if (= ?curr-index 0)
			then (assert (autores_pref FALSE)))
		(bind ?curr-autor (nth$ ?curr-index ?obj-autores))
		(bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-autor))
	)
	(retract ?hecho)
	(modify ?pref (autores_preferidos $?respuesta)))

(defrule recopilacion-datos-preferencias::cambiar-recopilacion-datos-libros-leidos "Cambia al modulo de recopilacion de datos de libros leidos del lector"
	(declare (salience -1))
	?generos <- (generos_pref TRUE|FALSE)
	?autores <- (autores_pref TRUE|FALSE)
	=>
	(focus recopilacion-datos-libros-leidos))




;;--------------------------------------------------------------------------------------------------------------------------
;; RECOPILACION DATOS LIBROS LEIDOS
;;--------------------------------------------------------------------------------------------------------------------------
(deffacts recopilacion-datos-libros-leidos::init-hechos-libros-leidos "Inicializa hechos para poder recopilar datos"
	(libros_leid ask)
	(datos_libros_leidos_lector ))
	
(defrule recopilacion-datos-libros-leidos::init-libros-leidos "Inicializa los libros leidos del lector"
	?hecho <- (libros_leid ask)
	?pref <- (datos_libros_leidos_lector)
	=>
	(bind $?obj-libros (find-all-instances ((?inst Libro)) TRUE))
	(bind $?nombre-libros (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-libros)) do
		(bind ?curr-obj (nth$ ?i ?obj-libros))
		(bind ?curr-nom (send ?curr-obj get-Titulo))
		(bind $?nombre-libros (insert$ $?nombre-libros (+ (length$ $?nombre-libros) 1) ?curr-nom)))
	(bind ?escogido (pregunta-multirespuesta "Escoja los libros que ha leido (o 0 en el caso contrario): " $?nombre-libros))
	(assert (libros_leid TRUE))
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(if (= ?curr-index 0)
			then (assert (libros_leid FALSE)))
		(bind ?curr-libro (nth$ ?curr-index ?obj-libros))
		(bind $?respuesta (insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-libro))
	)
	(retract ?hecho)
	(modify ?pref (libros_leidos $?respuesta)))

(defrule recopilacion-datos-libros-leidos::cambiar-procesado-datos "Cambia al modulo de procesado de datos"
	(declare (salience -1))
	?libros-leidos <- (libros_leid TRUE|FALSE)
	=>
	(focus procesado-datos))




;;--------------------------------------------------------------------------------------------------------------------------
;; PROCESADO DATOS
;;--------------------------------------------------------------------------------------------------------------------------
(defrule procesado-datos::init-libros-recomendados "Inicializa los libros recomendados con todos los libros"
	(declare (salience 10))
	=>
	(bind $?lista (find-all-instances ((?inst Libro)) TRUE))
	(progn$ (?curr-con ?lista)
		(make-instance (gensym) of Recomendacion (nombre_libro_recomendado ?curr-con) (puntuacion 0) (bestseller (send ?curr-con get-Bestseller))))
	(printout t "..." crlf))
	
(defrule procesado-datos::init-hechos-generos "Inicializa hechos de generos para poder procesarlos"
	(datos_preferencias_lector (generos_preferidos $?gen))
	?hecho <- (generos_pref ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)
		then (progn$ (?curr-gen $?gen)
			(assert (generos ?curr-gen))))
	(printout t "..." crlf))
	
(defrule procesado-datos::init-hechos-tematicas "Inicializa hechos de tematicas para poder procesarlas"
	(datos_preferencias_lector (tematicas_preferidas $?tem))
	?hecho <- (tematicas_pref ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)
		then (progn$ (?curr-tem $?tem)
			(assert (tematicas ?curr-tem))))
	(printout t "..." crlf))

(defrule procesado-datos::init-hechos-autores "Inicializa hechos de autores para poder procesarlos"
	(datos_preferencias_lector (autores_preferidos $?gen))
	?hecho <- (autores_pref ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)
		then (progn$ (?curr-gen $?gen)
			(assert (autores ?curr-gen))))
	(printout t "..." crlf))
	
(defrule procesado-datos::init-hechos-libros-leidos "Inicializa hechos de libros leidos para poder procesarlos"
	(datos_libros_leidos_lector (libros_leidos $?lib))
	?hecho <- (libros_leid ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)
		then (progn$ (?curr-lib $?lib)
			(assert (libros-leidos ?curr-lib))))
	(printout t "..." crlf))


(defrule procesado-datos::valorar-libros-dificultad-dificil "Se puntuan los libros con dificultad alta segun perfil lector"
	?cont <- (object (is-a Libro) (Dificultad ?dificultad))
	(test (> ?dificultad 6))
	?frec <- (datos_perfil_lector (frecuencia ?curr-frec))
	(test (or (eq ?curr-frec 1) (eq ?curr-frec 2)))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libros-dificultad ?cont))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text "Esta acostumbrado a leer, por lo que los libros dificiles no son un problema -> +50")
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libros-dificultad ?cont))
	(printout t "Comprobando perfil lector..." crlf))
	
(defrule procesado-datos::valorar-libros-dificultad-facil "Se puntuan los libros con dificultad baja segun perfil lector"
	?cont <- (object (is-a Libro) (Dificultad ?dificultad))
	(test (< ?dificultad 7))
	?frec <- (datos_perfil_lector (frecuencia ?curr-frec))
	(test (or (eq ?curr-frec 3) (eq ?curr-frec 4)))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libros-dificultad ?cont))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text "No esta acostumbrado a leer, por lo que los libros faciles son una mejor opcion -> +50")
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libros-dificultad ?cont))
	(printout t "Comprobando perfil lector..." crlf))

(defrule procesado-datos::valorar-libros-longitud-larga "Se puntuan los libros con longitud alta segun perfil lector"
	?cont <- (object (is-a Libro) (Longitud ?longitud))
	(test (> ?longitud 400))
	?lug <- (datos_perfil_lector (lugar ?curr-lug))
	(test (or (eq ?curr-lug 1) (eq ?curr-lug 2)))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libros-longitud ?cont))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text "Se encuentra en un lugar comodo para leer libros largos -> +50")
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libros-longitud ?cont))
	(printout t "Comprobando perfil lector..." crlf))
	
(defrule procesado-datos::valorar-libros-longitud-corta "Se puntuan los libros con longitud corta segun perfil lector"
	?cont <- (object (is-a Libro) (Longitud ?longitud))
	(test (< ?longitud 401))
	?lug <- (datos_perfil_lector (lugar ?curr-lug))
	(test (or (eq ?curr-lug 3) (eq ?curr-lug 4)))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libros-longitud ?cont))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text "Se encuentra en un lugar incomodo para leer libros largos. Mejor leer libros cortos -> +50")
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libros-longitud ?cont))
	(printout t "Comprobando perfil lector..." crlf))

(defrule procesado-datos::valorar-libros-bestseller "Se puntuan los libros populares segun perfil lector"
	?cont <- (object (is-a Libro) (Bestseller ?bestseller))
	(test (eq ?bestseller TRUE))
	?best <- (datos_perfil_lector (bestseller ?curr-best))
	(test (eq ?curr-best 1))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libros-bestseller ?cont))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text "Se deja llevar por libros populares -> +50")
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libros-bestseller ?cont))
	(printout t "Comprobando perfil lector..." crlf))
	
(defrule procesado-datos::valorar-libros-valoraciones "Se puntuan los libros con buenas valoraciones segun perfil lector"
	?cont <- (object (is-a Libro) (Valoracion ?valoracion))
	(test (> ?valoracion 4))
	?val <- (datos_perfil_lector (valoracion ?curr-val))
	(test (eq ?curr-val 1))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libros-valoraciones ?cont))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text "Se deja llevar por las valoraciones -> +50")
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libros-valoraciones ?cont))
	(printout t "Comprobando perfil lector..." crlf))
	
(defrule procesado-datos::valorar-autor-extranjero "Se puntuan los libros de autores extranjeros segun perfil lector"
	?aut <- (object (is-a Autor) (Es_nacionalidad ?nacionalidad))
	?cont <- (object (is-a Libro) (Escrito_por ?escrito))
	(test (eq (instance-name ?aut) (instance-name ?escrito)))
	?val <- (datos_perfil_lector (nacionalidad ?curr-nac))
	(test (neq (str-compare ?curr-nac (send ?nacionalidad get-NombreNacionalidad)) 0))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libros-autor-extranjero ?cont))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text "Prefiere autores extranjeros -> +50")
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libros-autor-extranjero ?cont))
	(printout t "Comprobando perfil lector..." crlf))
	
(defrule procesado-datos::valorar-edad "Se puntuan los libros juveniles segun perfil lector"
	?cont <- (object (is-a Libro) (Juvenil ?juvenil))
	(test (eq ?juvenil 1))
	?val <- (datos_perfil_lector (edad ?curr-juv))
	(test (< ?curr-juv 18))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libros-juvenil ?cont))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text "Es un libro para jovenes -> +50")
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libros-juvenil ?cont))
	(printout t "Comprobando perfil lector..." crlf))

(defrule procesado-datos::valorar-generos-preferidos "Se puntuan los libros de los generos preferidos del lector"
	?hecho <- (generos ?gen)
	?cont <- (object (is-a Libro) (Es_genero ?genero))
	(test (eq (instance-name ?gen) ?genero))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-genero-preferido ?cont ?gen))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text (str-cat "Pertenece al genero preferido: " (send ?gen get-NombreGenero) " -> +50"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-genero-preferido ?cont ?gen))
	(printout t "Comprobando generos preferidos..." crlf))
	
(defrule procesado-datos::valorar-tematicas-preferidas "Se puntuan los libros de las tematicas preferidas del lector"
	?hecho <- (tematicas ?tem)
	?cont <- (object (is-a Libro) (Es_tematica ?tematica))
	(test (eq (instance-name ?tem) ?tematica))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-tematica-preferida ?cont ?tem))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text (str-cat "Pertenece a la tematica preferida: " (send ?tem get-NombreTematica) " -> +50"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-tematica-preferida ?cont ?tem))
	(printout t "Comprobando generos preferidos..." crlf))

(defrule procesado-datos::valorar-autores-preferidos "Se puntuan los libros de los autores preferidos del lector"
	?hecho <- (autores ?auto)
	?cont <- (object (is-a Libro) (Escrito_por ?autor))
	(test (eq (instance-name ?auto) ?autor))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-autor-preferido ?cont ?auto))
	=>
	(bind ?p (+ ?p 50))
	(bind ?text (str-cat "Pertenece al autor preferido: " (send ?auto get-NombreAutor) " -> +50"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-autor-preferido ?cont ?auto))
	(printout t "Comprobando autores preferidos..." crlf))

(defrule procesado-datos::valorar-libros-leidos "Se puntuan negativamente los libros leidos por el lector"
	?hecho <- (libros-leidos ?lib)
	?cont <- (object (is-a Libro))
	(test (eq (instance-name ?lib) (instance-name ?cont)))
	?rec <- (object (is-a Recomendacion) (nombre_libro_recomendado ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-libro-leido ?cont ?lib))
	=>
	(bind ?p (- ?p 500))
	(bind ?text (str-cat "Es un libro ya leido: " (send ?lib get-Titulo) " -> -500"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-libro-leido ?cont ?lib))
	(printout t "Comprobando generos preferidos..." crlf))

(defrule procesado-datos::cambiar-generacion-soluciones "Cambia al modulo de generacion de soluciones"
	(declare (salience -1))
	=>
	(printout t "Generando solucion..." crlf)
	(focus generacion-soluciones))



;;--------------------------------------------------------------------------------------------------------------------------
;; GENERACION SOLUCIONES
;;--------------------------------------------------------------------------------------------------------------------------
(defrule generacion-soluciones::init-lista-recomendaciones-desordenada "Inicializa una lista de recomendaciones para ordenarlas"
	(not (lista_recomendaciones_desordenada))
	=>
	(printout t "Inicializando lista desordenada de recomendaciones..." crlf)
	(assert (lista_recomendaciones_desordenada)))

(defrule generacion-soluciones::anyadir-recomendacion "Anyade una recomendacion a la lista de recomendaciones"
	(declare (salience 10))
	?rec <- (object (is-a Recomendacion))
	?hecho <- (lista_recomendaciones_desordenada (recomendaciones $?lista))
	(test (not (member$ ?rec $?lista)))
	=>
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) ?rec))
	(printout t "Anyadiendo recomendacion..." crlf)
	(modify ?hecho (recomendaciones $?lista)))
	
(defrule generacion-soluciones::init-lista-recomendaciones-ordenada-por-bestseller "Inicializa una lista ordenada de recomendaciones por bestseller"
	(not (lista_recomendaciones_ordenada_por_bestseller))
	(lista_recomendaciones_desordenada (recomendaciones $?lista))
	=>
	(bind $?resultado (create$ ))
	(while (not (eq (length$ $?lista) 0)) do
		(bind ?curr-rec (ordenacion-bestseller $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec)))
	(assert (lista_recomendaciones_ordenada_por_bestseller (recomendaciones $?resultado)))
	(printout t "Ordenando libros por bestseller..." crlf))
	
(defrule generacion-soluciones::init-lista-recomendaciones-ordenada-por-puntuacion "Inicializa una lista ordenada de recomendaciones por puntuacion"
	(not (lista_recomendaciones_ordenada_por_puntuacion))
	(lista_recomendaciones_ordenada_por_bestseller (recomendaciones $?lista))
	=>
	(printout t "Entrada ordenacion por puntuacion..." crlf)
	(format t "Tamanyo lista %d" (length$ $?lista))
	(bind $?resultado (create$ ))
	(while (not (eq (length$ $?lista) 0)) do
		(bind ?curr-rec (maxima-puntuacion $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec)))
	(assert (lista_recomendaciones_ordenada_por_puntuacion (recomendaciones $?resultado)))
	(printout t "Ordenando libros por puntuacion..." crlf))

(defrule generacion-soluciones::cambiar-presentar-resultados "Cambia el modulo a presentar resultados"
	(declare (salience -10))
	=>
	(printout t "Presentando respuesta..." crlf)
	(focus presentar-resultados))
	

;;--------------------------------------------------------------------------------------------------------------------------
;; PRESENTAR RESULTADOS
;;--------------------------------------------------------------------------------------------------------------------------
(defrule presentar-resultados::mostrar-resultados "Muestra los libros obtenidos"
	(lista_recomendaciones_ordenada_por_puntuacion (recomendaciones $?lista))
	(not (final))
	=>
	(printout t crlf)
	(format t "Esta es nuestra recomendacion de libros:")
	(printout t crlf)
	(format t "%n")
	(printout t crlf)
	(printout t "===============================" crlf)	
	(bind ?i 0)
	(progn$ (?curr-rec $?lista)
		(bind ?i (+ ?i 1))
		(format t "Libro %d" ?i)
		(printout t crlf)
		(printout t (send ?curr-rec mostrar-recomendacion))
		(if (eq ?i 3)
			then (break)))
	(assert (final)))