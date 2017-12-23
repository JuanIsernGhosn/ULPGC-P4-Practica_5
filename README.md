# P5: Practica 5 (Programación lógica)

## Enunciado:

Práctica 5. Programación Lógica: Implementación de funciones en Prolog

## Organización

El objetivo de las prácticas en Prolog es que el alumno tenga experiencia en el uso de un lenguaje que permita la programación lógica.

### A tener en cuenta:
* Mantenga los nombres de las funciones del enunciado, que están en negrita, así como el orden y número de parámetros.
* No use constructores o predicados distintos de los mostrados en las transparencias de clase.

## Uso básico de funciones:

### 1. Fibonacci

1.- Implemente la función recursiva fibo (Fibonacci) que se define como se muestra a continuación. La función no está definida para valores negativos de n. NO pruebe la función para valores grandes ya que crece muy deprisa.
```
F( 0 ) = 0
F( 1 ) = 1
F( n ) = F(n-1) + F(n-2) si n > 1
```

#### Ejemplo:
```
> fibo(7,V)
V = 13
```

### 2. Exponencial

2.- Escriba una función llamada expo para calcular el exponencial (bn) utilizando la definición recursiva que aparece a continuación. La función no está definida para valores negativos de n. No pruebe la función para valores grandes ya que su coste de evaluación es exponencial y crece muy deprisa. 
```
b0 = 1
bn = b * bn-1 (n >= 1)
```

#### Ejemplo:
```
> expo(2, 3, V)
V = 8
```

## Uso de listas:

### 3. Mínimo

3.- Escriba una función denominada minimo que, dada una lista de números enteros, devuelva el número menor de la lista.

#### Ejemplo:
```
> minimo([ 7, 6, 3, 2, 9, 1], M)
M = 1
```

### 4. Inserta

4.- Escriba una función denominada inserta, la cual debe insertar un número dado en una lista numérica simple (ordenada de forma ascendente), dada como segundo argumento. La lista debe seguir ordenada tras la inserción. 

#### Ejemplo:
```
> inserta([5, 6, 30, 60, 90], 40, L)
L = [5, 6, 30, 40, 60, 90]
```
```
> inserta([5, 6, 30, 60, 90], 30, L)
L = [5, 6, 30, 60, 90]
```

### 5. Invierte

5.- Utilizando la función anterior, defina una función invierte que dada una lista (que puede contener a su vez otras listas) devuelva dicha lista con sus elementos en orden inverso. NO se puede utilizar la función de Scheme reverse.

#### Ejemplo:
```
> invierte( [a, [b, c], d, [e, f]], L)
L = [[e, f], d, [b, c], a]
```

### 6. Elimina

6.- Utilizando la función de Scheme equal?, defina una función elimina que dado un elemento (átomo o lista) y una lista, devuelva dicha lista en la cual se han eliminado todas las apariciones del elemento dado.

#### Ejemplos:
```
> elimina([f, e, d, [a, h], a, d, a], a, L)
L = [f, e, d, [a, h], d]
```
```
> elimina([f, e, d, [ a, h], a, [d, a]], [a, h], L)
L = [f, e, d, a, [d, a]]
```

### 7. Repetidos

7.- Escriba una función repetidos que recibe como único argumento una lista y retorna otra lista en que se han eliminado los elementos repetidos de la lista de entrada (dejando únicamente la última aparición). Puede utilizar para ello una función auxiliar.

#### Ejemplo:
```
> repetidos([a, b, c, d, a, f, g, d, c, c, h])
[ b, a, f, g, d, c, h]
```

## Authors
* **Juan Isern** - *Initial work* - [JuanIsernGhosn](https://github.com/JuanIsernGhosn/)
