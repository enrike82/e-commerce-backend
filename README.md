# e-commerce-backend

Este proyecto hace parte del [proyecto e-commerce](https://github.com/users/davidauza-engineer/projects/1) realizado para la materia Desarrollo de Software en Equipo TSP del Politécnico Grancolombiano.

El presente repositorio contiene un proyecto realizado en Ruby on Rails, que sirve como API para el proyecto descrito.

Se implementaron los siguientes módulos:

## Módulo de registro

Se implementó un API que responde de la siguiente manera:

| Ruta | Método | Parámetros | Efecto |
|------|--------|------------|--------|
https://ecommercetsp.herokuapp.com/api/users | POST | {"api_user":{"name":"James Bond","email":"jbond@mi6.org","password":"vesper","password_confirmation":"vesper"}} | Con los parámetros adecuados crea un nuevo usuario. |
https://ecommercetsp.herokuapp.com/api/authenticate | POST | {"email":"jbond@mi6.org","password":"vesper"} | Con credenciales válidas devuelve un JSON Web Token usado para autenticar al usuario.

## Módulo de búsqueda básica

Se implementó el API para realizar un búsqueda básica por nombre del producto, que responde de la siguiente manera:

| Ruta | Método | Parámetros | Efecto |
|------|--------|------------|--------|
https://ecommercetsp.herokuapp.com/api/products | GET | - | Para que el API responda correctamente se debe enviar el encabezado 'Authorization' con el valor del token de autorización. Devuelve todos los productos almacenados en la base de datos. |
https://ecommercetsp.herokuapp.com/api/products?name= | GET | name=ave | Para que el API responda correctamente se debe enviar el encabezado 'Authorization' con el valor del token de autorización, y un valor para el parámetro name. Devuelve todos los productos almacenados en la base de datos, que contengan en su nombre, el texto especificado en el parámetro name. Para este caso serían todos los productos cuyo nombre contenga la palabra 'ave'. |

### Pruebas unitarias

Se implementaron pruebas unitarias para los `requests` relacionados. Estas pueden encontrarse [aquí](https://github.com/davidauza-engineer/e-commerce-backend/blob/develop/spec/requests/products_spec.rb).

Se probaron los siguientes requests:

- GET sin token de autorización, debe retornar el http status `unauthorized`.
- GET con token de autorización, debe retornar todos los productos almacenados.
- GET con token de autorización y parámetro `ave`, debe retornar los productos en cuyo nombre se encuentre la palabra ave.

Actualizacion

