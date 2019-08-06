# language: es

@Cucumber
Característica: Busquedas en dogpile

  esta feature se trata de hacer una busquda o multiples busquedas en dogpile y revisar
  los resultados obtenidos de esas busquedas.

  @Regresion
  Escenario: Buscar resultados relevantes
    Dado Que Marcelo entra en dogpile
    Cuando Marcelo realiza una busqueda de: rock nacional
    Entonces Marcelo deberia poder ver resultados que contengan la palabra: rock

  Esquema del escenario: Verificar que los resultados con texto relevante al titulo
    Dado Que Marcelo entra en dogpile
    Cuando Marcelo realiza una busqueda de: rock nacional
    Entonces Marcelo deberia ver un texto: <texto>  relevante con el titulo: <titulo>

    Ejemplos:
      | Descripcion         | titulo                         | texto                                           |
      | resultado en ingles | Argentine rock - Wikipedia     | Argentine Rock Nacional is                      |
      | resultado radio     | Nacional Rock – Radio Nacional | NACIONAL ROCK. SOMOS EL ROCK.                   |
      | resultado sitio web | Rock.com.ar                    | Rock.com.ar es el sitio web independiente sobre |
      | resultado amazon    | Amazon.com: rock nacional      | 1-16 of over 1,000 results for "rock nacional"  |