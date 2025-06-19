# fakestoreapi-testing-karate
Proyecto Automatización en Karate DSL

Para la ejecución via Maven, agregar en consola el siguiente comando:
mvn clean test -Dkarate.env=cert

-> El siguiente código apuntará al ambiente "cert" configurado en karate-config.js
-> Este a su vez correrá todo lo que esté dentro de la clase testRunner.java configurado en el plugin Maven Surfire Plugin
-> Configurar la ubicación del feature a probar en el testRunner.java
