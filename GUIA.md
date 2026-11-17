# Atlas: guía de configuración (todo gratis)

## 1. Publicar en GitHub Pages
1. Conecta GitHub en claude.ai > Ajustes > Conectores (o crea tú el repositorio).
2. Crea un repositorio **público** llamado `atlas` en tu cuenta de GitHub, vacío.
3. Sube todos los archivos de esta carpeta (o pídele a Claude que lo haga).
4. En el repositorio: Settings > Pages > Source: "Deploy from a branch" > rama `main`, carpeta `/ (root)` > Save.
5. En 1–2 minutos queda en: `https://TU-USUARIO.github.io/atlas/`

## 2. Base de datos en Supabase (sincroniza PC y celular)
1. Crea una cuenta gratis en supabase.com y un proyecto nuevo (región: São Paulo o East US).
2. Abre **SQL Editor**, pega el contenido de `supabase.sql` y pulsa **Run**.
3. En **Project Settings > API** copia el **Project URL** y la **anon public key**.
4. En **Authentication > URL Configuration**, pon como Site URL: `https://TU-USUARIO.github.io/atlas/`
5. Abre Atlas > Ajustes > "Conexión con Supabase", pega URL y key y guarda.
6. Pulsa **Crear cuenta** con tu correo y una contraseña; confirma el correo; luego **Entrar**.
7. En el celular abre la misma dirección, haz lo mismo (pegar URL/key y Entrar) y tendrás los mismos datos.

La anon key es pública por diseño: la seguridad la da la regla RLS de `supabase.sql`, que solo deja a cada cuenta leer y escribir sus propias filas.

## 3. IA con Ollama (en tu PC)
1. Descarga un modelo, en una terminal: `ollama pull llama3.2` (o `qwen2.5:7b`, mejor en español si tu PC lo aguanta).
2. Permite que la página hable con Ollama: en Windows, Configuración > Sistema > Información > Configuración avanzada > Variables de entorno > Nueva variable de usuario:
   - Nombre: `OLLAMA_ORIGINS`
   - Valor: `https://TU-USUARIO.github.io`
3. Cierra Ollama desde la bandeja del sistema y ábrelo de nuevo.
4. En Atlas > Ajustes > "Buscar modelos y probar".

En el celular, Ollama no está disponible (corre en tu PC): el asistente usa el modo local, que entiende gastos, comidas, sueño, entrenos, horario, saludos y resúmenes.

## 4. Instalar como app en el celular
Abre la página en Chrome (Android) > menú ⋮ > "Agregar a la pantalla principal". En iPhone: Safari > Compartir > "Agregar a inicio".
