# Comtel

Instrucciones para ejecutar **ComTel**.

## Instrucciones para ejecutar el proyecto en VS Code:

## 1. Clona este repositorio en la terminal de vs code:

git clone https://github.com/Pichi29/ComTel.git

## 2. Instalar las dependencias, flutter y dart

Luego hay que asegurarnos de tener instalado flutter y dart en las extensiones de VS Code

Navegar a la carpeta del proyecto:

cd comtel

Y se instalan con el siguiente comando:

flutter pub get 

3. ## Ejecutar el proyecto usando:

flutter run

Y dependiendo si usas windows, entonces puede que el mismo windows lo pueda ejecutar, si no tambien se puede usar android studio, en caso de tener una Mac, usando el simulador Xcode y poner el siguiente comando:

open -a Simulator

y conectar el iphone a la Mac y lo ejecutas con el mismo comando que se uso anteriormente:
flutter run. 

Y si se quiere ejecutar en android se puede simplemente conectar el telefono a la computadora pero antes, tenemos que activar en las opciones del desarrollador la depuracion por USB para que este pueda ejecutar la app y una vez hecho eso, en la terminar vemos que dispositivos podemos correr con el siguiente comando:

flutter devices 

y se tendra que visualizar nuestro telefono y una vez hecho eso, procedemos a ejecutar 

flutter run 

y seleccionamos nuestro telefono y listo, estara listo para ejecutarlo desde ahi.

Otra opcion es ejecutar el comando 

flutter build apk --release

y se genera el apk que esta en la carpeta build/app/outputs/flutter-apk/app-release.apk y con el apk se puede descargar y usar en el telefono android.