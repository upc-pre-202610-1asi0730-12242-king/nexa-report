# Capítulo IV: Product Design

## 4.1. Style Guidelines

### 4.1.1. General Style Guidelines

<p align="justify">

A nivel de marca y percepción general, Nexa se rige por un conjunto de principios visuales y conceptuales diseñados para transmitir confianza técnica y control operativo:

</p>

Percepción objetivo: La marca debe percibirse como confiable, ordenada, limpia, enterprise premium, técnicamente creíble y cercana.

Palabras clave de marca: Claridad, control, trazabilidad, operación, confianza, fluidez, precisión, modularidad, resiliencia, visibilidad térmica y ejecución B2B.

Narrativa: De visibilidad operacional a control. El diseño guía al usuario a través del problema real, los módulos, el protocolo, la trazabilidad, el roadmap y, finalmente, la conversión.

Lenguaje visual: Se priorizan los datos, estados operativos, tablas, chips, cards y mockups de dashboards con información verosímil (SKU, lotes, temperatura, FEFO) por encima de ilustraciones puramente decorativas.

### 4.1.2. Web Style Guidelines

<p align="justify">

El sistema visual web de Nexa está estructurado en un ecosistema estático multipágina, construido con HTML, CSS modular (basado en tokens) y JavaScript vanilla. A continuación, se detallan los lineamientos técnicos de la interfaz web:

</p>

<p align="justify">

Sistema de Color: La paleta de Nexa sigue la regla 60-30-10: 60% para fondos claros, 30% para superficies y tonos neutrales, y 10% para el color azul de marca/acento.

</p>

Colores Principales:

Primary CTA & Brand: --c-primary (#2554DF). Usado en botones principales, links activos y estados seleccionados. Su hover es --c-primary-hover (#1A42BD).

Superficies Claras: Fondo general --c-base (#FBFCFD), bandas y paneles secundarios --c-surface (#F3F5F7), y cards elevadas --c-white (#FFFFFF).

Superficies Oscuras: Reservadas para aportar peso narrativo (ej. roadmap, terminal mockups). Fondo --c-dark-base (#070A10) y cards oscuras --c-dark-surface (#0F1523).

Estados (Status Colors):

Optimal / Active: #22C55E / #16A34A.

Alert / Warning: #F59E0B / #D97706.

Critical / Pain: #EF4444 / #DC2626.

<p align="center">

<img src="../assets/01-colors.png" alt="Paleta de Colores" width="600"/>

</p>

<p align="justify">

Tipografía: La interfaz está en idioma inglés y utiliza tres familias tipográficas específicas que no deben mezclarse:

</p>

Display / Headings (--font-display): Plus Jakarta Sans. Utilizada para el Hero (clamp(44px, 5.5vw, 80px) en peso 800) y headings de secciones.

Body (--font-body): Inter. Usada para párrafos, FAQ, formularios y descripciones. Tamaño base de 16px con line-height de 1.6 - 1.7 (peso 400-500).

Mono (--font-mono): SF Mono o Fira Code. Exclusivo para datos técnicos, IDs, SKU, especificaciones de temperatura y métricas de mockups (10-13px).

<p align="center">

<img src="../assets/02-typography-jakarta.png" alt="Plus Jakarta Sans" width="400"/>

<img src="../assets/03-typography-inter.png" alt="Inter" width="400"/>

<img src="../assets/04-typography-fira.png" alt="Fira Code" width="400"/>

</p>

<p align="justify">

Espaciado, Layout y Componentes:

</p>

Grilla: Todo el sistema se basa en una grilla múltiplo de 4px (ej. --space-4 = 16px para botones; --space-6 = 24px para cards).

Contenedores: El contenedor principal tiene un ancho máximo de 1280px (.container), y el ritmo principal entre secciones está definido por un padding de 96px (.section).

Botones:

.btn-primary: Fondo #2554DF, texto blanco, sombra azul.

.btn-secondary: Blanco, borde medio (rgba(0,0,0,0.08)), sombra suave.

Alturas estandarizadas: .btn-lg (56px), .btn-md (48px) y .btn-sm (40px). Radio de borde (border-radius) predominante de 12px.

Superficies: Las cards principales utilizan surface-elevated (fondo blanco, borde ligero, sombra grande --shadow-lg y radius-xl).

<p align="center">

<img src="../assets/06-textfields.png" alt="Campos de Texto" width="600"/>







<img src="../assets/07-buttons.png" alt="Botones" width="600"/>

</p>

## 4.2. Information Architecture

### 4.2.1. Organization Systems

<p align="justify">

El sistema de organización de Nexa es jerárquico y temático. La información se agrupa según el perfil del usuario (distribuidor vs. cliente comercial) y la funcionalidad de la plataforma B2B.

</p>

<p align="justify">

Organización del Sitio Web (Ecosistema B2B):

</p>

Home (index.html): Propuesta de valor central y visión general (Hero, ecosystem bento grid, trust rows).

Platform (platform.html): Arquitectura técnica del producto (Technical Catalog, Live Inventory, End-to-End Traceability).

Solutions (solutions.html): Casos de uso segmentados (Importers, Distributors/HORECA, Cold Storage Operators).

Company (company.html): Visión de la empresa, principios, roadmap futuro y contacto.

FAQ (faq.html): Resolución de objeciones mediante un sistema de acordes organizado por temas.

<p align="justify">

Organización de la Aplicación (Dashboard):

Organizado en torno a cinco módulos principales: Technical Catalog, Live Inventory, B2B Portal, Mobile Telemetry y End-to-End Traceability.

</p>

### 4.2.2. Labeling Systems

<p align="justify">

El sistema de etiquetado de Nexa mantiene un enfoque corporativo, formal y específico a la logística B2B. Por decisión estratégica (definida en el rebuild-kit), la interfaz (UI) está íntegramente en inglés, utilizando terminología estándar de la industria logística.

</p>

<p align="justify">

Reglas de Etiquetado:

</p>

Claridad Operativa: Se evitan términos genéricos de marketing. En lugar de "Dashboard" o "Features", se utilizan etiquetas precisas como "Technical Catalog", "Mobile Telemetry" o "End-to-End Traceability".

Estados del Sistema (Status Tags): Las etiquetas de estado no dependen solo de colores, sino de texto explícito en mayúsculas (ej. OPTIMAL, ALERT, CRITICAL, LIVE, VERIFIED).

Términos B2B Estándar: Conceptos como "FEFO" (First Expired, First Out), "POD" (Proof of Delivery), "SKU" y "SLA" se mantienen en inglés sin traducción debido a su uso universal en el sector.

Labels UI: Las microetiquetas (eyebrows y tablas) usan la fuente Inter, 12px, negrita (700), todo en mayúsculas (uppercase) y con un espaciado de letras (tracking) de 0.06em.

### 4.2.3. SEO Tags and Meta Tags

<p align="justify">

El posicionamiento de la plataforma está optimizado para captar pymes y grandes distribuidoras de alimentos refrigerados buscando soluciones SaaS. Las etiquetas SEO y Meta Tags deben seguir el sistema de etiquetado (en inglés) y las palabras clave de la marca.

</p>

Title Tags (<title>): Estructurados con la fórmula [Nombre de Página] | Nexa - Cold-Chain Operations Platform.

Ejemplo: <title>Platform | Nexa - Cold-Chain Operations Platform</title>

Meta Descriptions (<meta name="description">): Enfocadas en el problema resuelto (reducción de fricción B2B, control de frío). No superan los 155 caracteres.

Ejemplo: "Your cold chain, finally visible. Nexa is the unified B2B architecture for catalog, inventory, orders, and temperature tracking. Built for cold-chain nodes."

Open Graph (OG Tags): Utilizados para compartir la herramienta en entornos corporativos (LinkedIn, Slack).

og:title prioriza claims fuertes como "Every module connects to a live data layer."

og:image debe enlazar a una imagen del UI shell o dashboard mockup que transmita profesionalismo enterprise.

### 4.2.4. Searching Systems

<p align="justify">

El sistema de búsqueda está diseñado para operar tanto a nivel de adquisición de información (sitio web) como a nivel transaccional (portal de clientes).

</p>

En el portal de clientes (B2B Portal):

Búsqueda predictiva y técnica: Los usuarios (ej. bodegueros) pueden buscar directamente por nombre del producto o identificadores técnicos (SKU o ID).

Filtros lógicos: Se permite filtrar el catálogo por categorías (ej. lácteos, cárnicos) y cruzar resultados por "Disponibilidad Comercial" (In Stock / Out of Stock).

En el sitio web informativo (FAQ):

Se utiliza un patrón de Jump Nav (navegación por anclas) y un sidebar pegajoso (sticky) en desktop (faq-layout: 220px / 1fr) para que el usuario pueda saltar directamente entre categorías de preguntas frecuentes (ej. Pricing, Integrations, Security) sin necesidad de una barra de búsqueda compleja.

### 4.2.5. Navigation Systems

<p align="justify">

El sistema de navegación de Nexa abandona los estilos pesados para adoptar una estructura enterprise plana, sólida y accesible.

</p>

Navbar (Navegación Principal):

Altura fija de 64px, fondo blanco puro (#FFFFFF). Utiliza una transición que añade una ligera sombra (shadow-sm) solo al hacer scroll más de 8px hacia abajo (.scrolled).

Enlaces centrales: Home, Platform, Solutions, Company, FAQ. El enlace activo se destaca mediante peso tipográfico (600) y un color más intenso.

Dropdown "Solutions":

Funciona mediante click-to-open (no hover para garantizar accesibilidad). Despliega un panel de 288px e incluye un recubrimiento (overlay) oscuro al 5% sobre el resto de la página para concentrar el foco. Puede cerrarse haciendo clic fuera de él, presionando Escape, o mediante el mismo botón.

Scroll Strip Horizontal:

Para mostrar la trazabilidad técnica (protocol strip), se utiliza un sistema de navegación horizontal (ScrollBy +/-360px) controlado mediante botones tipo .btn-icon circulares.

Footer:

Funciona como ancla final y directorio. Ubicado en una zona oscura (fondo --c-footer-dark, #0B1120), está estructurado en una grilla asimétrica (1.4fr + 3 columnas), con enlaces en texto blanco a un 50% de opacidad y hover al 90%.

<p align="center">

<img src="../assets/08-navigation.png" alt="Navegación" width="600"/>





Figura 6. Comportamiento del Navbar (estado base vs scrolled) y el Dropdown de Solutions.

</p>
