# Capítulo IV: Product Design

<p align="justify">
El Capítulo IV representa la transición técnica desde la fase de descubrimiento hacia la materialización visual y arquitectónica de Nexa. En este apartado se documentan los criterios estéticos, las estructuras de información y las decisiones de diseño que permiten transformar los Bounded Contexts identificados en el dominio en una solución digital de grado empresarial (Enterprise B2B).
</p>

---

## 4.1. Style Guidelines

### 4.1.1. General Style Guidelines

<p align="justify">
A nivel de marca, Nexa se rige por un conjunto de principios visuales diseñados para transmitir confianza técnica y control operativo. El sistema de diseño se basa en una estética "calm-tech", donde la información es la protagonista y la interfaz actúa como un soporte invisible pero robusto.
</p>

- **Percepción Objetivo:** Confiable, Ordenada, Enterprise Premium, Técnica y Resiliente.
- **Palabras Clave:** Claridad, Control, Trazabilidad, Precisión, Modularidad y Ejecución B2B.
- **Lenguaje Visual:** Priorización de datos crudos (SKU, lotes, grados de temperatura) sobre ilustraciones decorativas. Se utilizan micro-interacciones sutiles para reforzar la retroalimentación del sistema sin distraer al operario.

### 4.1.2. Web Style Guidelines

<p align="justify">
El ecosistema digital de Nexa está construido bajo el estándar <strong>HTML5/CSS3 Modular</strong> y <strong>JavaScript Vanilla</strong>. El sistema utiliza una arquitectura de <strong>Tokens CSS</strong> para garantizar consistencia en todo el despliegue multipágina, incluyendo soporte nativo para <strong>i18n</strong> y una estructura de URLs basada en soluciones comerciales.
</p>

#### Sistema de Color (HSL Baseline)
<p align="justify">
La paleta se gestiona mediante variables HSL, permitiendo ajustes finos de contraste y legibilidad:
</p>

- **Primary & Brand:** `--c-primary` (`hsl(221 72% 45%)`). Es el núcleo de la marca, aplicado a acciones críticas y estados activos.
- **Surface & Base:** `--c-base` (`hsl(221 72% 99%)`) y `--c-white` (`#FFFFFF`). Generan un entorno de lectura limpio y aireado.
- **Chaos & Status:** Sistema semántico para alertas:
  - **Optimal (Success):** `--c-success` (`hsl(160 80% 32%)`).
  - **Alert (Warning):** `--c-warning` (`hsl(38 92% 50%)`).
  - **Critical (Danger):** `--c-danger` (`hsl(2 70% 49%)`).

#### Tipografía Académica y Técnica
<p align="justify">
Se ha estandarizado el uso de <strong>Inter</strong> como familia única para garantizar máxima legibilidad en entornos operativos y compatibilidad total con el hardware de campo.
</p>

- **Display / Headings:** **Inter Bold** (Weights 700-800). Con un `letter-spacing` negativo (`-0.06em`) para dar un aspecto compacto y profesional.
- **Body:** **Inter Regular/Medium** (Weights 400-500). Tamaño base de `16px` con un interlineado generoso de `1.68` para reducir la fatiga visual.
- **Mono:** **SF Mono / Fira Code.** Exclusivo para datos técnicos, códigos SKU y telemetría de temperatura.

#### Sistema de Layout y Elevación
- **Contenedores:** Se utiliza un ancho estándar de `1400px` (`--container-std`) para maximizar el aprovechamiento de pantallas de escritorio, con una variante de `1560px` para vistas de datos densos.
- **Grilla:** Sistema basado en múltiplos de 4px. El ritmo entre secciones se define por un padding de `96px` (`--space-24`).
- **Sombras (Elevation levels):**
  - **Soft (Rest):** `--shadow-sm`.
  - **Interactive (Hover):** `--shadow-md`.
  - **Modal (Focus):** `--shadow-lg`.
- **Radios:** Bordes suavizados desde `10px` (sm) hasta `28px` (xl) para suavizar la naturaleza industrial de la aplicación.

---

## 4.2. Information Architecture

### 4.2.1. Organization Systems

<p align="justify">
La arquitectura de información de Nexa se organiza en dos capas complementarias. La primera corresponde al <strong>sitio público multipágina</strong>, cuya función es comunicar la propuesta de valor, enrutar por segmentos comerciales y captar solicitudes de demo. La segunda corresponde a la <strong>aplicación transaccional</strong>, cuyo objetivo es ordenar el flujo del pedido B2B desde la captura hasta la entrega. Esta separación evita mezclar navegación comercial con operación interna, pero mantiene una sola tesis de producto para todo el ecosistema.
</p>

<p align="justify">
En términos de experiencia, el sitio público se organiza por segmentos comerciales del landing page; la aplicación se organiza por tareas del dominio y por los arquetipos operativos del proyecto: Valeria, Hilda y Pedro. En términos de modelado técnico, la solución se apoya en bounded contexts delimitados y coherentes con el backlog funcional.
</p>

**Bounded Contexts de la plataforma Nexa**

| Bounded Context | Responsabilidad | Recursos REST principales |
|-----------------|-----------------|---------------------------|
| **Catalog** | Publicación, clasificación y detalle de productos | `/products`, `/products/{id}` |
| **Customer Management** | Gestión de clientes comerciales y su información base | `/customers`, `/customers/{id}` |
| **Commercial Conditions** | Crédito, listas de precio, morosidad y condiciones de pago | `/customers/{id}/commercial-conditions` |
| **Inventory** | Disponibilidad, stock comprometido, lotes y vencimientos | `/inventory`, `/inventory/{skuId}` |
| **Orders** | Ciclo de vida del pedido asistido o autoservicio | `/orders`, `/orders/{id}` |
| **Traceability** | Tracking, incidencias, ETA y prueba de entrega | `/shipments`, `/shipments/{id}/events`, `/shipments/{id}/pod` |
| **Identity** | Autenticación, autorización y recuperación de acceso | `/auth`, `/users`, `/users/{id}` |

**Organización del sitio público**

| Página | Función principal | Segmentos dominantes |
|--------|-------------------|----------------------|
| `index.html` (Home) | Propuesta de valor, problema operativo, capacidades y CTA de demo | Distribuidores refrigerados |
| `pages/platform.html` (Platform) | Explicación de módulos, flujo operativo y relación entre MVP y expansión | Distribuidores refrigerados |
| `pages/solutions/index.html` (Solutions) | Enrutamiento comercial por tipo de empresa | Distribuidores, importadores/mayoristas, operadores de cámaras frías |
| `pages/company.html` (Company) | Narrativa institucional, confianza, soporte humano y formulario de contacto | Comprador del SaaS |
| `pages/faq.html` (FAQ) | Resolución de objeciones, categorías de ayuda y acceso a soporte | Todos los visitantes públicos |

**Organización de la aplicación transaccional**

| Módulo | Actor principal | Propósito |
|--------|-----------------|-----------|
| Catálogo B2B | Hilda / cliente comercial | Consultar productos, disponibilidad y fichas técnicas |
| Captura asistida | Valeria / coordinación comercial | Registrar pedidos para clientes con condiciones cargadas |
| Portal de pedidos | Hilda / cliente comercial | Crear, guardar y revisar pedidos propios |
| Seguimiento y entrega | Pedro / despacho e internos autorizados | Visualizar estados, ETA, incidencias y cierre con POD |
| Inventario y control | Operación / supervisión | Revisar stock, vencimientos, reservas y bloqueos |
| Condiciones comerciales | Supervisión comercial | Mantener clientes, listas de precio, crédito y morosidad |

### 4.2.2. Labeling Systems

<p align="justify">
El sistema de etiquetado de Nexa combina consistencia de negocio con claridad comercial. El sitio público utiliza una terminología comprensible para visitantes y ofrece navegación bilingüe <strong>EN/ES</strong>. La aplicación transaccional prioriza términos del dominio en español, manteniendo siglas ampliamente aceptadas cuando resultan más precisas, como SKU, FEFO, ETA y POD.
</p>

**Reglas de etiquetado**

- **Bilingüismo en el sitio público:** Los labels principales del landing page deben mantenerse disponibles en inglés y español sin alterar la ruta actual del visitante.
- **Claridad del dominio:** En la aplicación se priorizan términos de negocio como catálogo, condiciones comerciales, saldo vencido, stock comprometido, pedido asistido y prueba de entrega.
- **Siglas aceptadas:** Se conservan `SKU`, `FEFO`, `ETA`, `POD`, `RUC` y `DNI` cuando aportan precisión operativa.
- **Estados explícitos:** Los estados del pedido se comunican como `draft`, `submitted`, `confirmed`, `in_preparation`, `dispatched`, `delivered` y `cancelled`, evitando etiquetas ambiguas.
- **Separación entre MVP y expansión:** Cuando el sitio público menciona funcionalidades futuras, debe etiquetarlas o contextualizarlas como expansión y no como capacidad ya implementada.

### 4.2.3. SEO Tags and Meta Tags

<p align="justify">
El posicionamiento del sitio público busca captar principalmente a distribuidores refrigerados que gestionan pedidos B2B, inventario y entregas. La arquitectura SEO debe reforzar la propuesta de valor comercial del landing page sin sobreprometer capacidades que todavía pertenecen al roadmap.
</p>

**Lineamientos SEO**

- **Title tags:** `[Page Name] | Nexa - Cold-Chain B2B Operations`
- **Meta descriptions:** Deben mencionar catálogo, pedidos, inventario, seguimiento y operación refrigerada con lenguaje breve y verificable.
- **Open Graph:** Debe priorizar claims compatibles con el MVP, por ejemplo visibilidad del pedido, coordinación operativa y control comercial.
- **Segment routing:** Las páginas de Solutions deben usar palabras clave conectadas con distribuidores refrigerados y segmentos adyacentes, sin romper la tesis principal del producto.

### 4.2.4. Searching Systems

<p align="justify">
El sistema de búsqueda opera de forma distinta según la capa del ecosistema. En el sitio público prima la exploración guiada; en la aplicación transaccional prima la búsqueda operativa y la recuperación rápida de información crítica.
</p>

**En la aplicación transaccional**

- El cliente comercial puede buscar por nombre o código de producto dentro de su catálogo habilitado.
- La coordinación comercial puede identificar clientes por `RUC` o `DNI` para iniciar el flujo asistido.
- La supervisión puede consultar productos por disponibilidad, bloqueo, lote o vencimiento.

**En el sitio público**

- El FAQ utiliza navegación por categorías y anclas para resolver preguntas frecuentes sin una barra de búsqueda compleja.
- El panel flotante de soporte funciona como acceso directo a ayuda y contacto.
- El dropdown de Solutions actúa como mecanismo de búsqueda comercial por segmento.

### 4.2.5. Navigation Systems

<p align="justify">
El sistema de navegación pública adopta una estructura plana, visible y consistente, mientras que la navegación de la aplicación se organiza por módulos de trabajo. En ambos casos, la prioridad es reducir ambigüedad y sostener continuidad de contexto.
</p>

**Navbar del sitio público**

- Enlaces visibles: `Home`, `Platform`, `Solutions`, `Company`, `FAQ`, `Request a demo`, `Log in`.
- Selector de idioma: `EN / ES`.
- El enlace activo debe reflejar la página actual.

**Dropdown de Solutions**

- Se activa por clic.
- Muestra tres rutas comerciales: distribuidores refrigerados, importadores y mayoristas, operadores de cámaras frías.
- Debe poder cerrarse sin perder el contexto de la página.

**FAQ y soporte**

- El FAQ usa categorías navegables y acordeones expandibles.
- El panel flotante de soporte debe permanecer accesible desde páginas públicas relevantes.

**Portal y aplicación**

- La navegación transaccional debe separar catálogo, pedido, tracking, inventario y condiciones comerciales.
- Cada rol ve únicamente los módulos necesarios para su tarea.

*Nota.* La arquitectura de información de Nexa queda alineada con la taxonomía definitiva del informe: personas operativas primarias para investigación y backlog, y segmentos comerciales del sitio público para adquisición y comunicación. Elaboración propia.
