

# Neuro Rush
### refactorización de la aplicación Flutter que se usaba para hacer preguntas sobre TDAH; la versión anterior era [hand in hand](https://github.com/Al-Dos024/Hand_in_Hand).

## ¿Qué es el TDAH?

TDAH son las siglas de trastorno por déficit de atención con hiperactividad. Es una afección médica.
El TDAH puede afectar a un niño en la escuela, en casa y en sus amistades.
A veces, los padres y maestros notan signos de TDAH cuando el niño es muy pequeño. <p>  (Pero es normal que los niños pequeños se distraigan, estén inquietos, sean impacientes o impulsivos: estas cosas no siempre significan que un niño tenga TDAH.) </p>
Una persona con TDAH presenta diferencias en el desarrollo cerebral y la actividad cerebral que afectan la atención, la capacidad de estar quieto y el autocontrol.
<img  src="https://github.com/user-attachments/assets/58111954-7add-45b8-804c-b2ca5b60cc58">
<p> Y así es como nos inspiramos para el icono de la aplicación. </p>

<img width="700" src="https://github.com/user-attachments/assets/830d7be8-8961-4bdb-ad93-5e5329d8fb66">


## ¿Por qué creamos esta aplicación?
Desarrollamos esta aplicación para abordar la creciente necesidad de herramientas accesibles, precisas y prácticas para diagnosticar el TDAH. Los métodos tradicionales pueden ser lentos y estresantes, por lo que diseñamos esta aplicación para hacer el proceso más fácil y accesible para todos los involucrados, y la versión anterior estaba llena de errores (bugs).

## ¿Qué hace la aplicación?
Nuestra aplicación ofrece tres características principales: 
Información detallada sobre el TDAH, 
Prueba de evaluación para niños, 
Prueba de evaluación para adultos. 
<p>Además, los usuarios pueden acceder a resultados anteriores, lo que les permite monitorear cambios y mejoras con el tiempo.</p>

## Tecnologías principales que utilizamos:
MVVM design pattern
ValueNotifier para ambos
  * Flutter localizations (inglés y árabe y cambio entre ellas fácilmente)
  * Light and Dark mode
Firebase with 3 features:
  * Authentication: Using email and password
  * Cloud Firestore: To store the questions and answers for adult and child in both language
  * Realtime Database: To store the result of the data and revel it
Cubit to manage the state of data more efficiently

# onboarding

Primero, iniciamos la aplicación con una pantalla de onboarding que nos da un breve resumen de la misma:

<img width="700" src="https://github.com/user-attachments/assets/e20e6fd4-4a29-4ca4-9007-7ae9927cc7e8">

Puedes avanzar de 3 maneras:
- Deslizar en la pantalla de izquierda a derecha
- Botones Next y skip
- Los puntos en los botones muestran una animación al hacer scroll

<p>aquí tenemos una condición simple: ¿el dispositivo ya ha iniciado sesión? entonces avanzamos a mainView <br> ¿si no? entonces pasamos a la siguiente página, que es...</p>

# Authentication  
<img width="700" src="https://github.com/user-attachments/assets/5a8bfcbf-8d12-4295-b95a-a47c03b3e3ff">

<p>como en un inicio de sesión regular, necesitamos que el usuario ya tenga una cuenta con email & password; ¿si no?<br> bueno, pasamos al sign up donde enviamos datos personales como nombre, edad, email y password <br> después de eso, puede cargar la foto que desee y establecerla como imagen de avatar en Main view </p>
 
## ¿Es necesario crear una cuenta en firebase?
Sí, enviamos los resultados tanto de niños como de adultos a firebase utilizando el Email con el que se registró.

# Main View
<img width="700" src="https://github.com/user-attachments/assets/7c95dbf2-5c02-42e9-91e7-fd1d7e01ceb1">
<p>Aquí está la interfaz principal de la aplicación. Como puedes ver, mostramos los datos personales desde una base de datos en tiempo real <br> foto personal, nombre y email. Dividiremos esto en dos partes principales:</p>

- Drawer
- Cuerpo de la página


## Drawer
Aquí puedes personalizar tu aplicación como desees usando las 2 funciones: modo Dark y light, y los idiomas Árabe e Inglés

<img width="700" src="https://github.com/user-attachments/assets/feabb0c9-9efd-4039-8182-d2af29f87e02">

Mostraremos los resultados anteriores de los niños junto con la página de resultados

## El cuerpo de la página 
Aquí accedemos a las partes principales de la app 
* ¿Qué es el TDAH?
<p> Una página donde discutimos qué es el TDAH y proporcionamos información general sobre él.</p>

<img width="700" src="https://github.com/user-attachments/assets/75a8aab4-10e2-4dea-9f0b-3e52e757c597">

* Child Test

<img width="700" src="https://github.com/user-attachments/assets/f8122bc9-8e0c-4c86-b984-964e9f13f15a">
<p>Esta prueba se basa en Conner's Partent Raiting; puedes ver cómo funciona.</p>

([Conner's Partent Raiting](https://www.youtube.com/watch?v=UqRu2klS50Q&t=63s)).
<p> En primer lugar, comenzamos preguntando quién es el niño: ¿male o female? y su edad; el resultado es diferente según estos factores.
 <br>Tenemos 10 listas creadas por 2 factores:   Gender (Male or Female)  , Age (3-5, 6-8, 9-11, 12-14, 15-17)
 <br>Después de ingresar a la fase del quiz, tenemos muchos widget, 
 <br>comenzando con stack en appbar que muestra la pregunta actual y cuántas preguntas hay
 <br>la lista de preguntas y respuestas está en Firebase Firestore, y la obtenemos según el idioma
 <br>Finalmente, tenemos botones next y back para controlar las preguntas y moverte libremente entre ellas
 <br>Tienes 80 preguntas que deben ser respondidas y no puedes omitir ninguna parte de ellas.
Los puntos son fáciles de calcular: never = 0 , often = 1 , sometimes = 2 y always = 3
 <br>Luego tomamos los puntos de cada uno y comenzamos a separarlos en 14 categorías. Cada pregunta pertenece a una categoría
 <br>Después de eso y con la última pregunta, vemos la edad y el gender del niño y el dataset proporciona el resultado
 <br> Puedes revisar el repo hand in hand para más detalles sobre esta prueba
</p>

* Adult Test
  
<img width="700" src="https://github.com/user-attachments/assets/c704ec1e-2470-4e7a-b514-fd659952b6c1">

Aquí es más fácil que el de niños; solo hay uno; 18 preguntas, y dividimos las preguntas en 2 categorías: overall & detailed 
* Overall: podemos evaluar al paciente con las preguntas 1–6, y es más de carácter general
* detailed: puede evaluar al paciente con las preguntas 7–18, y destaca desafíos específicos en áreas como la gestión de tareas, el control de impulsos y el enfoque, que a menudo se asocian con el TDAH


# Result
Aquí llega la parte final de nuestra aplicación. Podemos dividirla en 3 páginas:
<img width="700" src="https://github.com/user-attachments/assets/35c32f8a-8724-4942-91cd-7f68d81a5c8d">
* previous result:
<p>Esta página se muestra en el drawer. El objetivo principal es ver el resultado anterior del niño y comprobar si está mejorando o no.
<br> Podemos hacer lo mismo para adultos, pero solo muestra 2 categorías, lo cual es fácil de recordar, a diferencia de la prueba para niños.</p>

* Child result:
imágenes aquí
<p>Esta página aparece después de finalizar la prueba para niños; recopila los puntos basándose en los factores de gender y age.
Cada categoría tiene sus propios puntos, por lo que podría obtener alta puntuación en Opposition pero baja en Cognitive problems, y así sucesivamente.</p>

* Adult result:
imágenes aquí
<p>Esta página aparece después de finalizar la prueba para adultos; recopila los puntos basándose en el número de preguntas.
<br> Si es de la 1 a la 6, entonces la agregamos a la categoría overall, y el resto se agrega a la categoría detailed
<br>Solo hay 3 resultados: low , medium y high
</p>

<img width="700" src="https://github.com/user-attachments/assets/1764d942-f1ae-4c3e-a4f4-21ec0e570607">
 
Eso es todo. Pruébala y envía tu reseña. Espero que hayas disfrutado leyendo el repo :)
