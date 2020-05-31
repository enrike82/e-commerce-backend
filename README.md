# e-commerce-backend

Este proyecto hace parte del [proyecto e-commerce](https://github.com/users/davidauza-engineer/projects/1) realizado para la materia Desarrollo de Software en Equipo TSP del Politécnico Grancolombiano.

El presente repositorio contiene un proyecto realizado en Ruby on Rails, que sirve como API para el proyecto descrito.

Se implementaron los siguientes módulos:

## Módulo de registro

Se implementó un API que responde de la siguiente manera:

| Ruta | Método | Parámetros | Efecto |
-------|--------|------------|--------|
https://ecommercetsp.herokuapp.com/api/users | POST | {"api_user":{"name":"James Bond","email":"jbond@mi6.org","password":"vesper","password_confirmation":"vesper"}} | Con los parámetros adecuados crea un nuevo usuario. |
https://ecommercetsp.herokuapp.com/api/authenticate | POST | {"email":"jbond@mi6.org","password":"vesper"} | Con credenciales válidas devuelve un JSON Web Token usado para autenticar al usuario.
