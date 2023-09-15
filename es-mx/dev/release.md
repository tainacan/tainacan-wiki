# Publicar una nueva versión

Esta es una documentación en progreso sobre cómo publicar una nueva versión.

Suponiendo:

- `$CURRENT_VERSION` es la versión "antigua" actual (e.g. 0.10)
- `$NEW_VERSION` es la versión que estamos publicando (e.g. 0.11)
- `$GIT_PATH` es donde se clona nuestro repositorio
- `$BUILD_PATH` es donde el plugin está configurado para construir, dentro de su carpeta de plugins de WordPress
- `$SVN_PATH` es donde está el repositorio SVN de WordPress.org

## Pre-lanzamiento

Antes de publicar una nueva versión, siempre lanzamos uno o más Release Candidates para que la comunidad tenga tiempo de probar y asegurarse que la nueva versión de Tainacan está limpia y lista para llegar al mundo.

### Empezar en el repositorio git

```
cd $GIT_PATH
git checkout develop
git pull
```

### Crear una nueva rama Release

Crear una nueva rama `release/$NEW_VERSION`. Si utiliza git flow:

```
git flow release start $NEW_VERSION
```

### Editar los números de versión

Edite `src/tainacan.php` y cambie los números de versión a `$NEW_VERSION`. Además, cambie la constante `TAINACAN_VERSION` después de la sección de comentarios.

Cuando publique una versión RC, añada RC (número) a la versión.

Aumente también la versión `Tested Up`, si procede.

### Construir en modo de producción

Es extremadamente importante compilar la versión de lanzamiento en modo _producción_. Tómese su tiempo para comparar los tamaños finales de los paquetes, que deberían ser considerablemente más pequeños que en modo _desarrollo_.

```
./build.sh --prod
cd $BUILD_PATH
```


### Commit y push

Commit y push de esta rama de lanzamiento.

```
git commit -am"version $NEW_VERSION"
git push
```

### Actualizar trunk en SVN

Cuando lanzamos la RC es un buen momento para actualizar el tronco SVN. Esto permitirá a la comunidad trabajar en las traducciones antes del lanzamiento final.

Tenga en cuenta que la etiqueta `Stable` en el archivo `readme.txt` no debe ser editada y debe seguir apuntando a \$CURRENT_VERSION.

1. Vaya a la carpeta SVN

```
cd $SVN_PATH
```

2. Asegúrese de que su SVN local está actualizado

```
svn cleanup
svn update
```

1. Limpiar el trunk.

```
rm -rf trunk/*
```

2. Copiar nuevos archivos

```
cp -R $BUILD_PATH/* trunk/
```

4. `svn rm` todos los ficheros eliminados

```
svn st | grep '^!' | awk '{print $2}' | xargs svn rm
```

?> Note: when using this `svn rm` or `svn add` commands listed here, you may receive a warning message of "insufficient input parameters". This will happen if you haven't added or removed any file, only modified, which should be ok.

5. `svn add` cada nuevos archivos

```
svn st | grep '^?' | awk '{print $2}' | xargs svn add
```

6. Commit!

```
svn ci
```

### Publicar el RC

Crea un paquete ZIP con el plugin creado y publica una entrada en el blog solicitando pruebas.

Utiliza entradas anteriores del blog como plantillas, manteniendo todo el contenido que explica qué es un RC y cómo contribuir.

### Prueba

Utilizando la guía de pruebas como recurso, prueba todas las funciones del complemento, incluidos los importadores y exportadores. Con el tiempo, podemos construir scripts de prueba más detallados y distribuir las pruebas entre la gente de la comunidad.

### Corregir y publicar nueva RC, o terminar

Si se encuentran errores, corríjalos y envíelos a la rama de publicación. Publica una nueva RC, siguiendo los pasos anteriores, hasta que tengamos una versión estable que podamos publicar.

## Lanzamiento

El plugin está listo para funcionar. Hemos publicado uno o más RCs y la comunidad lo ha probado. ¡Lancémoslo al mundo!

### Número de versión final

De vuelta al repositorio git, asegúrate de que todo está actualizado:

```
cd $GIT_PATH
git checkout release/$NEW_VERSION
git pull
```

Edita `src/readme.txt` y `src/tainacan.php` y cambia los números de versión a `$NEW_VERSION`.

En `src/readme.txt`:

- Edit `Stable tag` to \$NEW_VERSION
- If applicable, edit `Tested up to`

En `src/tainacan.php`:

- Edit `Version`
- Edit the `TAINACAN_VERSION` constant

Commit y push.

### Limpie su carpeta para asegurarse de que todo está construido

```
rm last-*
```

### Construir en modo producción

Es extremadamente importante construir la versión de lanzamiento en modo _producción_. Tómese su tiempo para comparar los tamaños finales de sus paquetes, que deberían ser considerablemente más pequeños que en modo _desarrollo_.

```
./build.sh --prod
```


### Preparar repositorio SVN

limpiar el trunk

```
rm -rf $SVN_PATH/trunk/*
```

### Copiar nuevos archivos

```
cp -R $BUILD_PATH/* $SVN_PATH/trunk/
```

Actualizar recursos(assets)

```
cp $GIT_PATH/wp-repo-assets/* $SVN_PATH/assets/
```

### Confirmar (Commit)

Antes de confirmar, verifique la salida de `svn st` y compruebe que no hay archivos o carpetas no deseados. También, verifique el tamaño total de la carpeta trunk para ver que se ve bien.

1. Vaya a la carpeta SVN

```
cd $SVN_PATH
```

2. `svn rm` todos los ficheros que han sido eliminados

```
svn st | grep '^!' | awk '{print $2}' | xargs svn rm
```

?> Note: when using this `svn rm` or `svn add` commands listed here, you may receive a warning message of "insufficient input parameters". This will happen if you haven't added or removed any file, only modified, which should be ok.

3. `svn add` cada nuevos archivos

```
svn st | grep '^?' | awk '{print $2}' | xargs svn add
```

4. Confirmado (commit)!

```
svn ci
```

### Crear la carpeta de etiquetas

```
svn cp https://plugins.svn.wordpress.org/tainacan/trunk https://plugins.svn.wordpress.org/tainacan/tags/$NEW_VERSION
```

### Comprobar

En unos minutos, la nueva versión debería estar disponible en el directorio de WordPress.

Comprueba que todo está bien.

### Confirmar y crear la etiqueta en git

Una vez probada y confirmada la versión, confirma y crea la etiqueta en git.

Fusiona la rama release con las ramas master y develop y crea una etiqueta.

Usando git flow:

```
cd $GIT_PATH

git flow release finish $NEW_VERSION
git push --all
git push --tags
```

## ¡Actualiza este wiki!

Los archivos `/_coverpage.md` y `/es-mx/_coverpage.md` de esta Wiki tienen el número de versión, que se muestra en [home page](/). ¡Asegúrate de mantenerlo actualizado siguiendo nuestras [directrices de contribución](es-mx/dev/CONTRIBUTING.md)!
