[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/QRvOowGF)
# Fórmula Futura: Entrenamiento de Pilotos de Élite - Parcial Comision 1 (2025s1)

## Contexto
En el centro de simulación de carreras Fórmula Futura, se desarrollan pruebas de manejo con autos experimentales y pilotos de élite. Los autos a disposición poseen características particulares y diferentes, como por ejemplo su año de fabricación, nivel de carga batería, y el nivel de experiencia requerido para poder ser conducido. Al ser conducidos, le otorgan experiencia a los pilotos.

Los autos podrán ser usados o probados por los pilotos dependiendo de si está o no en condiciones. Los pilotos también deberán cumplir ciertos requisitos para poder usarlos. El sistema debe permitir gestionar los entrenamientos, hacer un seguimiento del desempeño de los pilotos y consultar estadísticas clave del circuito de pruebas.

## Autos experimentales disponibles

### **🌀 Vortex**
- Año de fabricación: 1998.
- Nivel de batería inicial: 100.
- Para conducirlo requiere experiencia mínima: 5.
- Puede usarse si la carga de batería es mayor a 10 y si el piloto cumple los requisitos.
- Cada vez que se lo conduce, consume 30 de batería (controlar que la bateria no tenga carga negativa).
- Otorga 2 puntos de experiencia cada vez que se lo conduce.
- Se recarga a razón de 40 por hora.

### **🌌 Nebula**
- Año de fabricación: 2009.
- Nivel de batería inicial: 100.
- Requiere experiencia mínima: 3.
- Puede usarse si la batería es mayor a 20 y si el piloto cumple los requisitos minimos de experiencia.
- El consumo y experiencia que otorga dependen del modo de conducción configurado en el auto que se puede cambiar en cualquier momento y por ahora existen los siguientes:
    - inicial: experiencia 0, consumo 10.
    - intermedio: experiencia 2, consumo 20.
    - avanzado: experiencia 5, consumo 35.
- Se recarga a razón de 30 por hora

### **🔐 Quantum**
- Año de fabricación: 2024.
- Siempre se puede usar (no usa ni consume batería). Su fuente de energía es desconocida.
- No tiene requisitos de experiencia.
- Otorga 1 punto de experiencia cada vez que se lo conduce.


## Pilotos disponibles

### **🏁 Kael Varela**
- Comienza con 3 puntos de experiencia y descansado para poder probar un auto.
- No puede usar más de un auto sin antes descansar (dormir) y debe cumplir el requisito mínimo de experiencia.
- Se considera feliz si logró conducir todos los autos que existen en el circuito al menos 1 vez.

### **🧠 Nova Ishari**
- Comienza con 5 puntos de experiencia.
- Puede usar cualquier auto que esté a su alcance según su experiencia las veces que quiera.
- Está feliz si el último auto que condujo es anterior al 2000.

### **🦾 Axel Draven**
- Comienza con 0 puntos de experiencia
- Puede realizar hasta un máximo de 5 pruebas (de cualquier auto) y no se le exige requisito mínimo de experiencia con ningún auto porque es un piloto cyborg, pero solo prueba autos fabricados a partir del año 2000.
- Cada auto que prueba le otorga experiencia según las características de cada auto.
- Está feliz si probó al menos 1 auto.

## Centro de simulación: Fórmula F
En el centro de simulación se registran los pilotos y los autos disponibles en el circuito para las pruebas. 

### Requisitos:
- Agregar los autos y los pilotos al circuito de pruebas.
- Hacer que un auto pueda ser usado por un piloto (si puede).
- Hacer que se prueben todos los autos que se puedan del circuito por un piloto.

#### Calcular:
- El promedio de experiencia que tienen los pilotos del circuito.
- El piloto con la mayor experiencia conseguida.
- La lista con los años de fabricación de los autos.
- Los autos que no están en condiciones de correr.
- Comprobar que todos los autos del circuito están en condiciones de correr.
- Si un piloto se siente realizado (según su propia expectativa de felicidad).

### ¿Qué se debe comprobar? (test mínimos a realizar)
- El vortex no puede volver a usarse luego de que se utilizó 3 veces consecutivas sin cargar la batería.
- Que en el modo intermedio un piloto obtiene 2 de experiencia al usar el Nebula .
- Que Kael Varela puede al inicio conducir el quantum.
- Que Axel Draven solo puede hacer 5 pruebas con autos como máximo.
- Que el promedio de experiencia de los pilotos se calcula correctamente.
- Que se puede verificar que todos los autos registrados están listos para ser probados.
- Que cada piloto pueda sentirse realizado según su definición personal.

