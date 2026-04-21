# Capítulo IV: Product Design

<p align="justify">
El Capítulo IV representa la transición técnica desde la fase de descubrimiento hacia la materialización visual y arquitectónica de Nexa. En este apartado se documentan los criterios estéticos, las estructuras de información y las decisiones de diseño que permiten transformar los Bounded Contexts identificados en el dominio en una solución digital de grado empresarial (Enterprise B2B).
</p>

---

## 4.1. Style Guidelines

### 4.1.1. General Style Guidelines

<p align="justify">
Nexa se rige por el principio de <strong>"Calm-Tech"</strong>: la interfaz debe ser un soporte invisible que facilite el control absoluto sobre la cadena de frío sin generar fatiga cognitiva. El diseño prioriza la veracidad de los datos técnicos por encima de la decoración, estableciendo un entorno de trabajo resiliente y preciso.
</p>

- **Percepción Objetivo:** Confiable, Ordenada, Técnica y de grado Enterprise.
- **Lenguaje Visual:** Uso extensivo de espacios en blanco, tipografía de alta legibilidad y una paleta cromática que reduce el estrés visual en jornadas operativas extensas.

---

### 4.1.2. Web Style Guidelines

#### 01. Colorimetry

<p align="justify">
La paleta se fundamenta en un sistema <strong>HSL (Hue, Saturation, Lightness)</strong> que permite una gestión dinámica del contraste. El núcleo es el azul de marca, complementado por una escala de grises azulados para las superficies de datos.
</p>

**Ilustración 3**

*Sistema de Colorimetría Nexa*

![Colorimetry](../assets/images/style-guidelines/Colorimetry.jpeg)

*Nota.* Especificación de Brand Colors y Text Colors. *Elaboración propia.*

- **Brand Primary:** `#2554DF` (HSL 221, 72%, 45%).
- **Interactive States:** `#1A42BD` para hovers tácticos.
- **Surface Palette:** Uso de `#FBFCFD` (Base) y `#F3F5F7` (Surface) para delimitar contextos de información.

#### 02. Typography

<p align="justify">
Se ha estandarizado el uso de <strong>Inter</strong> como familia tipográfica universal para el proyecto. Esta decisión garantiza legibilidad excepcional en pantallas de diversas densidades de píxeles y dispositivos de mano.
</p>

**Ilustración 4**

*Sistema Tipográfico Nexa*

![Typography](../assets/images/style-guidelines/Typography.jpeg)

*Nota.* Definición de jerarquías para Display, Headings, Body y Mono. *Elaboración propia.*

- **Display & Headings:** Uso de **Inter Bold** con un ajuste de `letter-spacing: -0.06em`.
- **Body & Labels:** **Inter Regular/Medium** (14px - 16px) con interlineado de 1.68.
- **Monospace:** **Fira Code** para telemetría térmica y códigos SKU.

#### 03. Iconography

<p align="justify">
El sistema iconográfico utiliza trazos lineales consistentes (Line-type) con un peso de 1.9px a 2.2px para mantener la ligereza visual del portal.
</p>

**Ilustración 5**

*Iconografía Nexa*

![Iconography](../assets/images/style-guidelines/Iconography.jpeg)

*Nota.* Biblioteca de iconos vectoriales para navegación y soporte. *Elaboración propia.*

#### 04. Grid Systems

<p align="justify">
Nexa utiliza una rejilla de **12 columnas** con un ancho de contenedor maestro de **1440px** para alta resolución, adaptándose proporcionalmente a terminales de escritorio y portátiles.
</p>

**Ilustración 6**

*Sistema de Rejilla y Breakpoints*

![Grid System](../assets/images/style-guidelines/grid-system.jpeg)

*Nota.* Dimensionamiento para Desktop HD, Desktop y Tablet. *Elaboración propia.*

#### 05. Spacing System

<p align="justify">
El ritmo visual se basa en una escala de múltiplos de **4px**, garantizando que cada elemento de la interfaz tenga una separación armónica y predecible.
</p>

**Ilustración 7**

*Escala de Espaciado Nexa*

![Spacing](../assets/images/style-guidelines/Spacing.jpeg)

*Nota.* Niveles de espaciado desde 4px hasta 96px. *Elaboración propia.*

#### 06. UI Components (Buttons & Cards)

<p align="justify">
Los componentes de interacción utilizan radios de borde de **12px a 14px** para suavizar la naturaleza industrial de la aplicación.
</p>

**Ilustración 8**

*Componentes de Interfaz: Botones y Estados*

![Buttons](../assets/images/style-guidelines/Buttons.jpeg)

*Nota.* Definición de estilos Primary, Secondary y estados de interacción. *Elaboración propia.*

---

### 4.1.3. Tone and Voice

<p align="justify">
El tono de Nexa es <strong>Técnico, Directo y Proactivo</strong>. Se evitan las ambigüedades comerciales, optando por un lenguaje que empodera al operario y da seguridad al gerente logístico. El sistema utiliza el "nosotros" inclusivo para las soluciones y la voz pasiva directa para los reportes de estado (ej. "Temperature validated" en lugar de "We checked the temperature").
</p>

### 4.1.4. Motion & Animation Principles

<p align="justify">
El movimiento en Nexa está diseñado para dar sensación de <strong>Relatividad Operativa</strong>:
</p>

- **Transiciones:** Uso de `cubic-bezier(0.25, 0.46, 0.45, 0.94)` para hovers y aperturas de paneles.
- **Feedback:** Las micro-animaciones ocurren en menos de 150ms para garantizar que la interfaz se sienta inmediata y receptiva al tacto del usuario.

### 4.1.5. Accessibility & Inclusivity (WCAG 2.1)

<p align="justify">
El proyecto cumple con el estándar **AA de las WCAG 2.1**, garantizando un ratio de contraste mínimo de **4.5:1** para textos de lectura. Se han implementado etiquetas `ARIA` descriptivas en todos los componentes interactivos y navegación por teclado completa en el "Support Hub" y el selector de idiomas.
</p>

### 4.1.6. Design Tokens Architecture

<p align="justify">
La mantenibilidad del diseño se asegura mediante una arquitectura de <strong>Design Tokens</strong> implementada en CSS nativo. Esto permite que cualquier cambio en la identidad de marca (ej. cambiar el azul primario) se propague a los miles de elementos del sistema modificando una única línea de código en el archivo `tokens.css`.
</p>

### 4.1.7. Mobile-First & Cross-Platform Strategy

<p align="justify">
Aunque Nexa es una herramienta B2B de escritorio, su diseño contempla el **consumo en movilidad**. Los componentes interactivos (botones, inputs) cumplen con una altura mínima de **44px** para garantizar una superficie de contacto apta para dedos, anticipando el uso de tabletas rugerizadas en almacenes refrigerados.
</p>
