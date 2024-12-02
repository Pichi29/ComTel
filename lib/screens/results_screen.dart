import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class ResultsScreen extends StatefulWidget {
  final String presupuesto;
  final String prioridad;

  const ResultsScreen({
    super.key,
    required this.presupuesto,
    required this.prioridad,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    // Lista de teléfonos disponibles
    final List<Telefono> telefonosDisponibles = [
      Telefono(
        modelo: 'Xiaomi 14',
        precio: 15999.00,
        caracteristicas:
            'Pantalla AMOLED, Procesador Snapdragon 8 Gen 3, Cámara Leica 50 MP, Android 14',
        rutaImagen: 'assets/xiaomi14.jpg',
        urlCompra:
            'https://www.amazon.com.mx/Xiaomi-512gb-Snapdragon-120Hz-Verde/dp/B0CVLHG1LJ/ref=asc_df_B0CVLHG1LJ/?tag=gledskshopmx-20&linkCode=df0&hvadid=709966588538&hvpos=&hvnetw=g&hvrand=13379398270401074333&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1010060&hvtargid=pla-2293613080943&psc=1&mcid=27048447f06436c68fe9372fd12a0191&gad_source=1',
      ),
      Telefono(
        modelo: 'Xiaomi 13 Pro',
        precio: 9999.00,
        caracteristicas:
            'Procesador Snapdragon 8 Gen 2, Pantalla 120Hz, Cámara Leica, Resistente al Agua, Android 14',
        rutaImagen: 'assets/xiaomi13pro.jpg',
        urlCompra: 'https://www.mi.com/mx/product/mi-13-pro/',
      ),
      Telefono(
        modelo: 'Xiaomi 13T Pro',
        precio: 11193.00,
        caracteristicas:
            'Pantalla CrystalRes AMOLED, Procesador MediaTek Dimensity 9200+, Carga Rapida de 120W, Android 14',
        rutaImagen: 'assets/xiaomi13TPro.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/xiaomi-13t-pro-dual-sim-512-gb-negro-12-gb-ram/p/MLM27848697#polycard_client=search-nordic&wid=MLM2822946432&sid=search&searchVariation=MLM27848697&position=4&search_layout=stack&type=product&tracking_id=55b94a33-9893-43e7-8c64-51ad9d533ded',
      ),
      Telefono(
        modelo: 'Xiaomi 13',
        precio: 3499.00,
        caracteristicas:
            'Pantalla AMOLED, Procesador Snapdragon 8 Gen 2, Cámara Leica 50 MP, Resistente al Agua, Android 14',
        rutaImagen: 'assets/xiaomi13.jpg',
        urlCompra:
            'https://articulo.mercadolibre.com.mx/MLM-2190960827-xiaomi-13-dual-sim-256-gb-flora-green-12-gb-de-ram-_JM?searchVariation=182300995828#polycard_client=search-nordic&searchVariation=182300995828&position=44&search_layout=stack&type=item&tracking_id=330e32e1-6c63-424d-8f7e-c505fa066e54',
      ),
      Telefono(
        modelo: 'Redmi Note 13 Pro+ 5G',
        precio: 7849.00,
        caracteristicas:
            'Pantalla AMOLED 120Hz, MediaTek Dimensity 1080, Cámara 200 MP, Android 14',
        rutaImagen: 'assets/redminote13proplus.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/xiaomi-redmi-note-13-pro-5g-dual-sim-256-gb-negro-8-gb-ram/p/MLM34165183#polycard_client=search-nordic&wid=MLM3191214328&sid=search&searchVariation=MLM34165183&position=1&search_layout=stack&type=product&tracking_id=e0e39743-54f0-472b-8049-6d21065bff81',
      ),
      Telefono(
        modelo: 'POCO F6 Pro',
        precio: 11685.00,
        caracteristicas:
            'Pantalla AMOLED, Procesador Snapdragon 8 Gen 2, Carga Rapida 120W, Almacenamiento 1tb 16 Ram, Android 14',
        rutaImagen: 'assets/pocof6pro.jpg',
        urlCompra:
            'https://articulo.mercadolibre.com.mx/MLM-3025534502-xiaomi-poco-f6-pro-16-gb-ram-1-tb-rom-120-hz-120-w-carga-rap-_JM?searchVariation=182544315517#polycard_client=search-nordic&searchVariation=182544315517&position=4&search_layout=stack&type=item&tracking_id=592f236a-c732-4ecf-9c85-2daabaf721de',
      ),
      Telefono(
        modelo: 'Xiaomi Redmi Note 12 Pro 5G',
        precio: 3299.80,
        caracteristicas:
            'Pantalla AMOLED 120Hz, Procesador MediaTek Dimensity 1080, Cámara 50 MP, Android 14',
        rutaImagen: 'assets/redminote12pro5g.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/xiaomi-redmi-note-12-pro-6gb-128gb-108mpx-star-blue/p/MLM27305552#polycard_client=search-nordic&wid=MLM2081656259&sid=search&searchVariation=MLM27305552&position=4&search_layout=stack&type=product&tracking_id=ec67de10-fd52-495c-9fba-c4dadeff9d73',
      ),
      Telefono(
        modelo: 'Xiaomi 12 Pro',
        precio: 6698.23,
        caracteristicas:
            'Pantalla AMOLED 120Hz, Procesador Snapdragon 8 Gen 1, Cámara 50 MP, Android 14',
        rutaImagen: 'assets/xiaomi12pro.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/xiaomi-12-pro-5g-dual-sim-256-gb-azul-12-gb-ram/p/MLM19166977#polycard_client=search-nordic&wid=MLM3445045642&sid=search&searchVariation=MLM19166977&position=14&search_layout=stack&type=product&tracking_id=3ba2507f-8356-4259-aea9-97fc56dea935',
      ),
      Telefono(
        modelo: 'POCO X5 Pro 5G',
        precio: 6499.00,
        caracteristicas:
            'Pantalla AMOLED 120Hz, Procesador Snapdragon 778G, Cámara 108 MP, Android 14',
        rutaImagen: 'assets/pocox5pro5g.jpg',
        urlCompra: 'https://www.mi.com/mx/product/poco-x5-pro-5g/?skupanel=1',
      ),
      Telefono(
        modelo: 'Redmi Note 11 Pro+ 5G',
        precio: 6768.86,
        caracteristicas:
            'Pantalla AMOLED 120Hz, MediaTek Dimensity 920, Carga Rapida de 120W, Android 14',
        rutaImagen: 'assets/redminote11proplus5g.jpg',
        urlCompra:
            'https://www.amazon.com.mx/Xiaomi-Redmi-Note-11-Pro/dp/B09W9Y3QP9',
      ),
      Telefono(
        modelo: 'Samsung Galaxy S22 Ultra',
        precio: 16082.00,
        caracteristicas:
            'Pantalla AMOLED, S Pen, Cámara 108 MP, Almacenamiento 512GB 12 Ram, Procesador Snapdragon 8 Gen 1, Resistente al Agua, Android 14',
        rutaImagen: 'assets/samsungS22ultra.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/samsung-galaxy-s22-ultra-5g-snapdragon-phantom-white-512-gb-12-gb/p/MLM18945382?product_trigger_id=MLM18945400&quantity=1',
      ),
      Telefono(
        modelo: 'Samsung Galaxy Z Fold 4',
        precio: 13223.16,
        caracteristicas:
            'Pantalla Plegable 7.6", Cámara 50 MP, Snapdragon 8+ Gen 1, Resistente al Agua, Android 14, Plegable',
        rutaImagen: 'assets/samsungZFold4.jpg',
        urlCompra:
            'https://www.amazon.com.mx/SAMSUNG-desbloqueado-f%C3%A1brica-SM-F936U1-reacondicionado/dp/B0BLG9DT6Q/ref=asc_df_B0BLG9DT6Q/?tag=gledskshopmx-20&linkCode=df0&hvadid=709884549550&hvpos=&hvnetw=g&hvrand=5564024996139996075&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1010060&hvtargid=pla-1896112665726&mcid=cb052f0043db35acbd79fe266e3b065c&gad_source=1&th=1',
      ),
      Telefono(
        modelo: 'Samsung Galaxy A53 5G',
        precio: 9540.00,
        caracteristicas:
            'Pantalla AMOLED 6.5", Cámara 64 MP, Android 14, Buen Diseño',
        rutaImagen: 'assets/samsungA53.jpg',
        urlCompra:
            'https://www.amazon.com.mx/SAMSUNG-A53-5G-128GB-Black/dp/B09SHV78TN',
      ),
      Telefono(
        modelo: 'Samsung Galaxy S23 Ultra',
        precio: 25999.00,
        caracteristicas:
            'Pantalla AMOLED 6.8", Cámara 200 MP, Procesador Snapdragon 8 Gen 2, Android 14, Resistente al Agua, S Pen',
        rutaImagen: 'assets/samsungS23ultra.jpg',
        urlCompra:
            'https://www.samsung.com/mx/smartphones/galaxy-s23-ultra/buy/',
      ),
      Telefono(
        modelo: 'Samsung Galaxy A54 5G',
        precio: 7346.00,
        caracteristicas: 'Pantalla AMOLED 6.4", Cámara 50 MP, Android 14',
        rutaImagen: 'assets/samsungA54.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/samsung-galaxy-a54-5g-5g-128-gb-awesome-graphite-8-gb-ram/p/MLM22770353#polycard_client=search-nordic&wid=MLM3236923830&sid=search&searchVariation=MLM22770353&position=2&search_layout=stack&type=product&tracking_id=8964d521-e2b3-4b08-b936-cd88d18e4e1c',
      ),
      Telefono(
        modelo: 'Samsung Galaxy S24 Ultra',
        precio: 33999.00,
        caracteristicas:
            'Pantalla AMOLED 6.8", Cámara 200 MP, Procesador Snapdragon 8 Gen 3 Almacenamiento 512gb 12 Ram, Bateria 5000mAh, Android 14',
        rutaImagen: 'assets/samsungS24ultra.jpg',
        urlCompra: '',
      ),
      Telefono(
        modelo: 'Samsung Galaxy Z Flip4',
        precio: 21999.00,
        caracteristicas:
            'Pantalla plegable AMOLED, Snapdragon 8+ Gen 1, Almacenamiento 256gb 8 Ram, Bateria de 3700 mAh, Plegable',
        rutaImagen: 'assets/galaxyZflip4.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/samsung-galaxy-z-flip4-5g-esim-5g-dual-sim-256-gb-silverwhitewhite-8-gb-ram/p/MLM19635112#polycard_client=search-nordic&wid=MLM2192757633&sid=search&searchVariation=MLM19635112&position=8&search_layout=stack&type=product&tracking_id=be77992a-6a14-4d0c-a8e1-4c4a09d0d824',
      ),
      Telefono(
        modelo: 'Samsung Galaxy S23 FE',
        precio: 9855.23,
        caracteristicas:
            'Pantalla AMOLED, Cámara 50 MP, Procesador Snapdragon 8 Gen 1, Resistente al Agua, Android 14',
        rutaImagen: 'assets/galaxyS23fe.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/samsung-galaxy-s23-fe-256gb-8gb-ram-verde/p/MLM27958209?pdp_filters=item_id%3AMLM1983186527&from=gshop&matt_tool=87257214&matt_word=&matt_source=google&matt_campaign_id=15698047849&matt_ad_group_id=160325881391&matt_match_type=&matt_network=g&matt_device=c&matt_creative=686658220962&matt_keyword=&matt_ad_position=&matt_ad_type=pla&matt_merchant_id=735123306&matt_product_id=MLM27958209-product&matt_product_partition_id=2267517247648&matt_target_id=pla-2267517247648&cq_src=google_ads&cq_cmp=15698047849&cq_net=g&cq_plt=gp&cq_med=pla&gad_source=1&gclid=CjwKCAiAjKu6BhAMEiwAx4UsAlal0F8Lz4mBUbnY5bUZ8-YWzoxbLmZ7hbTr0KT3uZX4uXwlj_4mphoCwecQAvD_BwE',
      ),
      Telefono(
        modelo: 'Samsung Galaxy Z Fold5',
        precio: 50000.00,
        caracteristicas:
            'Pantalla AMOLED 7.6", soporte S Pen, Procesador Snapdragon 8 Gen 2, Android 14, Resistente al Agua, Plegable',
        rutaImagen: 'assets/samsungZFold5.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/samsung-galaxy-z-fold5-5g-dual-sim-1-tb-negro-12-gb-ram/p/MLM25171739#polycard_client=search-nordic&wid=MLM2574140670&sid=search&searchVariation=MLM25171739&position=6&search_layout=stack&type=product&tracking_id=e3eaa751-1e57-4cef-9fcc-be46d2300b7a',
      ),
      Telefono(
        modelo: 'Samsung Galaxy Z Flip 5',
        precio: 15260.00,
        caracteristicas:
            'Pantalla AMOLED 7.6", soporte S Pen, Procesador Snapdragon 8 Gen 2, Resistente al Agua, Plegable, Android 14',
        rutaImagen: 'assets/galaxyZflip5.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/samsung-galaxy-z-flip5-5g-dual-sim-512-gb-crema-8-gb-ram/p/MLM25171719#polycard_client=search-nordic&wid=MLM2126497839&sid=search&searchVariation=MLM25171719&position=11&search_layout=stack&type=product&tracking_id=5960f303-c2d5-4dea-b801-6c1bb1b3c2cb',
      ),
      Telefono(
        modelo: 'Samsung Galaxy Z Flip6',
        precio: 24999.00,
        caracteristicas:
            'Pantalla AMOLED plegable, Procesador Snapdragon 8 Gen 3, Bateria 4000 mAh Almacenamiento 256GB 12 RAM, Android 14, Plegable',
        rutaImagen: 'assets/galaxyZflip6.jpg',
        urlCompra:
            'https://www.samsung.com/mx/smartphones/galaxy-z-flip6/buy/?srsltid=AfmBOopic7x0HIbx_dhcVl_Dic4w27Sf6DJUVlmicPbwHaXxjpk-I07C',
      ),
      Telefono(
        modelo: 'Samsung Galaxy Z Fold6',
        precio: 45999.00,
        caracteristicas:
            'Pantalla AMOLED 7.6", soporte S Pen, Procesador Snapdragon 8 Gen 3 Almacenamiento 512gb 12 Ram, Resistente al Agua, Android 14, Plegable',
        rutaImagen: 'assets/galaxyZfold6.jpg',
        urlCompra: 'https://www.samsung.com/mx/smartphones/galaxy-z-fold6/buy/',
      ),
      Telefono(
        modelo: 'OnePlus 10 Pro',
        precio: 6879.00,
        caracteristicas:
            'Pantalla AMOLED, Procesador Snapdragon 8 Gen 1, Carga rapida 80W, Android 14, Resistente al Agua',
        rutaImagen: 'assets/oneplus10pro.jpg',
        urlCompra:
            'https://articulo.mercadolibre.com.mx/MLM-1995947215-oneplus-10-pro-5g-128gb-originales-liberados-a-msi-_JM?searchVariation=181142032003#polycard_client=search-nordic&searchVariation=181142032003&position=2&search_layout=stack&type=item&tracking_id=88b6dd8e-d723-45b1-87c7-d5d5bad71336',
      ),
      Telefono(
        modelo: 'OnePlus Nord 2T',
        precio: 4700.65,
        caracteristicas:
            'Pantalla AMOLED, Procesador Dimensity 1300, Cámara 50 MP, Android 14, Resistente al Agua',
        rutaImagen: 'assets/oneplusnord2t.jpg',
        urlCompra:
            'https://articulo.mercadolibre.com.mx/MLM-2190910137-oneplus-nord-2t-cph2399-5g-256-gb-12-gb-ram-dual-sim-gsm-des-_JM?searchVariation=182301019164#polycard_client=search-nordic&searchVariation=182301019164&position=1&search_layout=stack&type=item&tracking_id=a3547fb3-fc47-4ff7-b4e9-c713ddced20f',
      ),
      Telefono(
        modelo: 'OnePlus 10T',
        precio: 5779.00,
        caracteristicas:
            'Pantalla AMOLED, Procesador Snapdragon 8+ Gen 1, Carga Rapida 150W, Android 14, Resistente al Agua',
        rutaImagen: 'assets/oneplus10t.jpg',
        urlCompra:
            'https://articulo.mercadolibre.com.mx/MLM-3314934922-oneplus-10t-128gb-originales-liberados-a-msi-_JM?searchVariation=181391305602#polycard_client=search-nordic&searchVariation=181391305602&position=3&search_layout=stack&type=item&tracking_id=45f83e2f-c9e2-4e59-b1e0-9c425b335b85',
      ),
      Telefono(
        modelo: 'OnePlus 11',
        precio: 8872.60,
        caracteristicas:
            'Pantalla AMOLED, Procesador Snapdragon 8 Gen 2, Cámara Hasselblad, Android 14, Resistente al Agua',
        rutaImagen: 'assets/oneplus11.jpg',
        urlCompra:
            'https://articulo.mercadolibre.com.mx/MLM-2190922921-oneplus-11-dual-sim-256-gb-negro-16-gb-ram-_JM?searchVariation=186149874791#polycard_client=search-nordic&searchVariation=186149874791&position=3&search_layout=stack&type=item&tracking_id=55041e90-a2dd-4c76-bcd5-b06f0e9a1321',
      ),
      Telefono(
        modelo: 'OnePlus Nord CE 3',
        precio: 5899.00,
        caracteristicas:
            'Pantalla AMOLED, Procesador Snapdragon 782G, Cámara 108 MP, Android 14',
        rutaImagen: 'assets/oneplusnordce3.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/oneplus-nord-ce-3-dual-sim-256-gb-gris-12-gb-ram/p/MLM36318895',
      ),
      Telefono(
        modelo: 'OnePlus Open',
        precio: 30943.31,
        caracteristicas:
            'Pantalla plegable AMOLED, Procesador Snapdragon 8 Gen 2, Carga Rapida 100W, Android 14, Plegable, Resistente al Agua',
        rutaImagen: 'assets/oneplusopen.jpg',
        urlCompra:
            'https://www.amazon.com.mx/Dual-SIM-inteligente-desbloqueado-Hasselblad-visualizaci%C3%B3n/dp/B0CHN7M531/ref=asc_df_B0CHN7M531/?tag=gledskshopmx-20&linkCode=df0&hvadid=709953053693&hvpos=&hvnetw=g&hvrand=15981469499287275416&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1010060&hvtargid=pla-2248055795017&psc=1&mcid=4f3d92d18060399ca2d255d0c8c14f3b&gad_source=1',
      ),
      Telefono(
        modelo: 'OnePlus 12',
        precio: 11999.00,
        caracteristicas:
            'Pantalla AMOLED, Procesador Snapdragon 8 Gen 3, Batería 5400 mAh, Android 14, Resistente al Agua',
        rutaImagen: 'assets/oneplus12.jpg',
        urlCompra:
            'https://www.amazon.com.mx/OnePlus-12R-256GB-Versi%C3%B3n-Mexicana/dp/B0CXN4V8K6/ref=asc_df_B0CXN4V8K6/?tag=gledskshopmx-20&linkCode=df0&hvadid=709893872611&hvpos=&hvnetw=g&hvrand=6760550301958657946&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1010060&hvtargid=pla-2294758022391&mcid=5e8f0773232435c9a2786ad45f4743ee&gad_source=1&th=1',
      ),
      Telefono(
        modelo: 'Google Pixel 6a',
        precio: 7440.57,
        caracteristicas:
            'Pantalla OLED, Procesador Tensor G1, cámara dual 12 MP, Android 14',
        rutaImagen: 'assets/googlePixel6a.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/google-pixel-6a-128-gb-tiza-6-gb-ram/p/MLM19582755#polycard_client=search-nordic&wid=MLM2052001267&sid=search&searchVariation=MLM19582755&position=3&search_layout=stack&type=product&tracking_id=b4defedb-577c-441a-a29e-802c90c51108',
      ),
      Telefono(
        modelo: 'Google Pixel 7',
        precio: 8945.29,
        caracteristicas:
            'Pantalla OLED 90Hz, Procesador Tensor G2, cámara 50 MP, Android 14',
        rutaImagen: 'assets/googlePixel7.jpg',
        urlCompra:
            'https://www.mercadolibre.com.mx/google-pixel-7-dual-sim-128-gb-obsidiana-8-gb-ram/p/MLM21207606#polycard_client=search-nordic&wid=MLM2070043825&sid=search&searchVariation=MLM21207606&position=3&search_layout=stack&type=product&tracking_id=718aaf2c-258d-4c0d-b698-df9365a2476c',
      ),
      Telefono(
        modelo: 'Google Pixel 7 Pro',
        precio: 8499.00,
        caracteristicas:
            'Pantalla OLED 120Hz, Procesador Tensor G2, zoom óptico 5x, Android 14',
        rutaImagen: 'assets/googlePixel7Pro.jpg',
        urlCompra:
            'https://www.amazon.com.mx/Google-Pixel-Pro-Smartphone-Desbloqueado/dp/B0BCQWYR2Z?th=1',
      ),
      Telefono(
        modelo: 'Google Pixel 7a',
        precio: 8140.17,
        caracteristicas:
            'Pantalla OLED 90Hz, Procesador Tensor G2, cámara mejorada, Android 14',
        rutaImagen: 'assets/googlePixel7a.jpg',
        urlCompra:
            'https://store.google.com/es/config/pixel_7a?hl=es&selections=eyJwcm9kdWN0RmFtaWx5IjoiY0dsNFpXeGZOMkU9IiwidmFyaWFudHMiOltbIjIiLCJOZz09Il1dfQ%3D%3D',
      ),
      Telefono(
        modelo: 'Google Pixel Fold',
        precio: 19799.00,
        caracteristicas:
            'Pantalla plegable AMOLED, Procesador Tensor G2, diseño compacto, Android 14, Plegable',
        rutaImagen: 'assets/googlePixelFold.jpg',
        urlCompra:
            'https://articulo.mercadolibre.com.mx/MLM-2185810865-google-pixel-fold-256-gb-negro-12-gb-ram-audifonos-_JM#polycard_client=search-nordic&position=1&search_layout=stack&type=item&tracking_id=78122bf8-298c-4ea2-8eeb-9fb564ca22a9',
      ),
      Telefono(
        modelo: 'Google Pixel 8',
        precio: 10783.76,
        caracteristicas:
            'Pantalla OLED 120Hz, Procesador Tensor G3, batería optimizada, Android 14',
        rutaImagen: 'assets/googlePixel8.jpg',
        urlCompra:
            'https://store.google.com/es/config/pixel_8?hl=es&selections=eyJwcm9kdWN0RmFtaWx5IjoiY0dsNFpXeGZPQT09IiwidmFyaWFudHMiOltbIjIiLCJOZz09Il0sWyIxIiwiTVRJNCJdXX0%3D',
      ),
      Telefono(
        modelo: 'Google Pixel 8 Pro',
        precio: 16750.00,
        caracteristicas:
            'Pantalla AMOLED 120Hz, Procesador Tensor G3, cámara 48 MP ultra gran angular, Android 14, Resistente al Agua',
        rutaImagen: 'assets/googlePixel8Pro.jpg',
        urlCompra:
            'https://www.amazon.com.mx/Google-Unlocked-Nano-SIM-6-7-Inch-Smartphone/dp/B0CGVVVDXW',
      ),
      Telefono(
        modelo: 'Google Pixel 9',
        precio: 19428.06,
        caracteristicas:
            'Pantalla Actua, Procesador Tensor G4, Cámara frontal con enfoque automático, Android 14, Resistente al Agua',
        rutaImagen: 'assets/googlePixel9.jpg',
        urlCompra:
            'https://store.google.com/es/config/pixel_9?hl=es&selections=eyJwcm9kdWN0RmFtaWx5IjoiY0dsNFpXeGZPUT09IiwidmFyaWFudHMiOltbIjIiLCJNUT09Il0sWyIxIiwiTWpVMiJdXX0%3D',
      ),
      Telefono(
        modelo: 'Google Pixel 9 Pro',
        precio: 21589.14,
        caracteristicas:
            'Pantalla AMOLED avanzada, Procesador Tensor G4, IA integrada Gemini, Android 14, Resistente al Agua',
        rutaImagen: 'assets/googlePixel9Pro.jpg',
        urlCompra:
            'https://store.google.com/es/config/pixel_9_pro?hl=es&selections=eyJwcm9kdWN0RmFtaWx5IjoiY0dsNFpXeGZPVjl3Y204PSIsInZhcmlhbnRzIjpbWyI3IiwiTVRFPSJdLFsiMiIsIk1RPT0iXSxbIjEiLCJNVEk0Il1dfQ%3D%3D',
      ),
      Telefono(
        modelo: 'Google Pixel 9 Pro Fold',
        precio: 45999.00,
        caracteristicas:
            'Pantalla plegable, Procesador Tensor G4, soporte para Gemini, Android 14, Resistente al Agua',
        rutaImagen: 'assets/googlePixel9ProFold.jpg',
        urlCompra:
            'https://www.liverpool.com.mx/tienda/pdp/google-pixel-9-pro-fold-oled-6.3-pulgadas-desbloqueado-nuevo/99977638767?gfeed=true&gad_source=1&gclid=CjwKCAiAjKu6BhAMEiwAx4UsAm4kk9sIKP2RWgxkRkvl4d-GqNolBbe8fdj5dHh961BVNXITnW_4IxoCa10QAvD_BwE&gclsrc=aw.ds',
      ),
      Telefono(
        modelo: 'iPhone SE (3ª generación)',
        precio: 10499.00,
        caracteristicas:
            'Procesador Chip A15 Bionic, 5G, pantalla Retina HD de 4.7 pulgadas, IOS 18, Resistente al Agua',
        rutaImagen: 'assets/iphonese2022.jpg',
        urlCompra:
            'https://www.ishopmixup.com/iphone-se-3/p?skuId=7296&srsltid=AfmBOopsCzzrkBeDJD5HanIsJHXSbYMyJ6jHCfWG749JlA0bV74jP0WN',
      ),
      Telefono(
        modelo: 'iPhone 14',
        precio: 14499.00,
        caracteristicas:
            'Pantalla 6.3 pulgadas, Modo Acción, Buena Cámara, Photonic Engine, IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone14.jpg',
        urlCompra: 'https://www.apple.com/mx/shop/buy-iphone/iphone-14',
      ),
      Telefono(
        modelo: 'iPhone 14 Plus',
        precio: 17499.00,
        caracteristicas:
            'Pantalla grande de 6.7 pulgadas Super Retina XDR, Buena Cámara, Bateria de larga duración, IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone14plus.jpg',
        urlCompra: 'https://www.apple.com/mx/shop/buy-iphone/iphone-14',
      ),
      Telefono(
        modelo: 'iPhone 14 Pro',
        precio: 13890.00,
        caracteristicas:
            'Dynamic Island, Pantalla siempre activa, Procesador Chip A16 Bionic, Cámara de 48 MP, IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone14pro.jpg',
        urlCompra:
            'https://www.amazon.com.mx/Apple-iPhone-256-GB-Espacial-Reacondicionado/dp/B0BNM2TM2D',
      ),
      Telefono(
        modelo: 'iPhone 14 Pro Max',
        precio: 16499.00,
        caracteristicas:
            'Dynamic Island, Cámara Modo Cine en 4K, Procesador Chip A16 Bionic, Pantalla de 6.7 pulgadas, IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone14promax.jpg',
        urlCompra:
            'https://www.liverpool.com.mx/tienda/pdp/apple-iphone-14-pro-max-amoled-6.7-pulgadas-desbloqueado-reacondicionado/99967177363',
      ),
      Telefono(
        modelo: 'iPhone 15',
        precio: 17499.00,
        caracteristicas:
            'USB-C, Photonic Engine, pantalla Super Retina XDR, IOS 18, Buen Diseño, Buena Cámara, Resistente al Agua',
        rutaImagen: 'assets/iphone15.jpg',
        urlCompra: 'https://www.apple.com/mx/shop/buy-iphone/iphone-15',
      ),
      Telefono(
        modelo: 'iPhone 15 Plus',
        precio: 19999.00,
        caracteristicas:
            'Pantalla más grande, batería extendida, cámara de 48 MP, IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone15plus.jpg',
        urlCompra: 'https://www.apple.com/mx/shop/buy-iphone/iphone-15',
      ),
      Telefono(
        modelo: 'iPhone 15 Pro',
        precio: 24999.00,
        caracteristicas:
            'Titanio, Procesador chip A17 Pro, Cámara avanzada de 48 MP, IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone15pro.jpg',
        urlCompra:
            'https://www.ishopmixup.com/iphone-15-pro/p?skuId=88232&srsltid=AfmBOopmP8LSFPQBL1eHjo9zjBbV7hUN5dlVVMZmyGE07_lXc06Lst7-',
      ),
      Telefono(
        modelo: 'iPhone 15 Pro Max',
        precio: 28499.00,
        caracteristicas:
            'Teleobjetivo 5x, Procesador chip A17 Pro, diseño ultra ligero, IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone15promax.jpg',
        urlCompra:
            'https://www.macstoreonline.com.mx/apple/iphone-15-pro/iphone673-iphone-15-pro-max-titanio-negro-256gb',
      ),
      Telefono(
        modelo: 'iPhone 16',
        precio: 19999.00,
        caracteristicas:
            'Pantalla de 6.3 pulgadas retina XDR, Procesador Chip A18 con GPU de 5 núcleos, IOS 18, Buen Diseño, Buena Cámara, Resistente al Agua',
        rutaImagen: 'assets/iphone16.jpg',
        urlCompra: 'https://www.apple.com/mx/shop/buy-iphone/iphone-16',
      ),
      Telefono(
        modelo: 'iPhone 16 Plus',
        precio: 22999.00,
        caracteristicas:
            'Pantalla de 6.7 pulgadas retina XDR, Procesador Chip A18 con GPU de 5 núcleos, Buen Diseño, Buena Cámara, Resistente al Agua',
        rutaImagen: 'assets/iphone16.jpg',
        urlCompra: 'https://www.apple.com/mx/shop/buy-iphone/iphone-16',
      ),
      Telefono(
        modelo: 'iPhone 16 Pro',
        precio: 25999.00,
        caracteristicas:
            'Pantalla de retina XDR de 6.3 pulgadas, Procesador Chip A18 Pro con GPU de 6 núcleos, sistema de cámaras pro, 4 Cámaras, IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone16pro.jpg',
        urlCompra: 'https://www.apple.com/mx/shop/buy-iphone/iphone-16-pro',
      ),
      Telefono(
        modelo: 'iPhone 16 Pro Max',
        precio: 30999.00,
        caracteristicas:
            'Pantalla de retina XDR de 6.9 pulgadas, Procesador Chip A18 Pro con GPU de 6 núcleos, sistema de cámaras pro, 4 Cámaras IOS 18, Buen Diseño, Resistente al Agua',
        rutaImagen: 'assets/iphone16promax.jpg',
        urlCompra: 'https://www.apple.com/mx/shop/buy-iphone/iphone-16-pro',
      ),
    ];

    // Filtrar por presupuesto
    final presupuestoRange = widget.presupuesto
        .split(' - ')
        .map((e) => double.tryParse(e) ?? 0)
        .toList();
    final filteredTelefonos = telefonosDisponibles.where((telefono) {
      return telefono.precio >= presupuestoRange[0] &&
          telefono.precio <= presupuestoRange[1];
    }).toList();

    // Filtrar por prioridad (características seleccionadas)
    final featureFilteredTelefonos = filteredTelefonos.where((telefono) {
      // Verificar si el teléfono contiene todas las prioridades seleccionadas
      List<String> prioridades = widget.prioridad.split(', ');
      return prioridades.every((prioridad) {
        return telefono.caracteristicas
            .toLowerCase()
            .contains(prioridad.toLowerCase());
      });
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Presupuesto: ${widget.presupuesto}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Prioridades: ${widget.prioridad}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'Recomendaciones: ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            if (featureFilteredTelefonos.isEmpty)
              const Text(
                'No hay resultados que coincidan con los filtros.',
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.65,
                ),
                itemCount: featureFilteredTelefonos.length,
                itemBuilder: (context, index) {
                  final telefono = featureFilteredTelefonos[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_constructors
                      side: BorderSide(
                          color: Colors.blue, width: 2), // Borde azul
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          telefono.rutaImagen,
                          width: 110,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          telefono.modelo,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '\$${telefono.precio}',
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 14,
                          ),
                        ),
                        // const SizedBox(height: 10),
                        /*ElevatedButton(
                          onPressed: () {
                            _launchURL(telefono.urlCompra);
                          },
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                color: Colors.blue, width: 2), // Borde azul
                          ),
                          child: const Text('Comprar'),
                        ),*/
                        //const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text(
                                    'Características de ${telefono.modelo}'),
                                content: Text(telefono.caracteristicas),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Cerrar'),
                                  ),
                                ],
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                                color: Colors.blue, width: 2), // Borde azul
                          ),
                          child: const Text('Características'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CompararTelefonosScreen(
                telefonosDisponibles: featureFilteredTelefonos,
              ),
            ),
          );
        },
        tooltip: 'Comparar Teléfonos',
        backgroundColor: Colors.blue, // Color del FAB
        child: const Icon(Icons.compare_arrows),
      ),
    );
  }

  /*Future<void> _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'No se pudo abrir la URL: $url';
    }
  }*/
}

// Clase Telefono
class Telefono {
  final String modelo;
  final double precio;
  final String caracteristicas;
  final String rutaImagen;
  final String urlCompra;

  Telefono({
    required this.modelo,
    required this.precio,
    required this.caracteristicas,
    required this.rutaImagen,
    required this.urlCompra,
  });
}

class CompararTelefonosScreen extends StatefulWidget {
  final List<Telefono> telefonosDisponibles;

  const CompararTelefonosScreen({
    super.key,
    required this.telefonosDisponibles,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CompararTelefonosScreenState createState() =>
      _CompararTelefonosScreenState();
}

class _CompararTelefonosScreenState extends State<CompararTelefonosScreen> {
  List<int> selectedTelefonos = [];

  void _compareTelefonos() {
    if (selectedTelefonos.length == 2) {
      final telefono1 = widget.telefonosDisponibles[selectedTelefonos[0]];
      final telefono2 = widget.telefonosDisponibles[selectedTelefonos[1]];

      // Mostrar un diálogo con los dos teléfonos al lado del otro
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Comparar Teléfonos'),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primer teléfono
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        telefono1.rutaImagen,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        telefono1.modelo,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('\$${telefono1.precio}'),
                      const SizedBox(height: 8),
                      Text(
                        'Características: ${telefono1.caracteristicas}',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              // Segundo teléfono
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        telefono2.rutaImagen,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        telefono2.modelo,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('\$${telefono2.precio}'),
                      const SizedBox(height: 8),
                      Text(
                        'Características: ${telefono2.caracteristicas}',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cerrar'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comparar Teléfonos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Selecciona dos teléfonos para comparar',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: widget.telefonosDisponibles.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_constructors
                      side: BorderSide(
                          color: Colors.blue, width: 2), // Borde azul
                    ),
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          if (selectedTelefonos.contains(index)) {
                            selectedTelefonos.remove(index);
                          } else {
                            if (selectedTelefonos.length < 2) {
                              selectedTelefonos.add(index);
                            }
                          }
                        });
                      },
                      leading: Image.asset(
                        widget.telefonosDisponibles[index].rutaImagen,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        widget.telefonosDisponibles[index].modelo,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          '\$${widget.telefonosDisponibles[index].precio}'),
                      trailing: selectedTelefonos.contains(index)
                          ? const Icon(Icons.check_circle, color: Colors.blue)
                          : const Icon(Icons.circle_outlined),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: _compareTelefonos,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text('Comparar'),
            ),
          ],
        ),
      ),
    );
  }
}
