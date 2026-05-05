## 4.4. Web Applications UX/UI Design.

Esta sección documenta el diseño UX/UI de las dos superficies autenticadas del producto: la **webapp operativa interna (Ops)** para coordinación comercial (S1) y logística (S2), y el **portal B2B** para compradores comerciales (S3). Ambas superficies comparten el sistema visual definido en 4.1, pero operan con criterios de diseño distintos a la landing: aquí la prioridad es **claridad operativa, lectura rápida del estado del negocio y reducción de fricción en tareas repetitivas**.

Cada pantalla resuelve una pregunta concreta del dominio: qué pedido está en riesgo, qué producto necesita atención, qué validación bloquea la operación, qué unidad está en ruta y qué evidencia respalda el cierre. La documentación se organiza en wireframes, wireflows, mock-ups y user flows. Los artefactos se trabajaron colaborativamente en Figma y se complementan con evidencia de implementación del Sprint 2 (TB1).

### 4.4.1. Web Applications Wireframes.

Los wireframes ordenan la estructura funcional antes de entrar en alta fidelidad. Su valor está en definir jerarquías, zonas de información y rutas de interacción por superficie y persona. La colección se organiza en dos grupos: wireframes de diseño del Sprint 1 (recorrido operativo completo en Figma) y wireframes TB1 (alineados al alcance implementado en Sprint 2).

#### Sprint 1 — Wireframes de diseño

| Wireframe | Persona / Segmento | User goal que habilita |
|---|---|---|
| Dashboard Operativo Total Control | Valeria (S1), Roberto (S2) | Leer KPIs, alertas y accesos directos al iniciar sesión |
| B2B Orders Hub | Valeria (S1) | Revisar bandeja de pedidos y priorizar acción |
| Creación de Pedido Asistido | Valeria (S1) | Capturar un pedido con validación de cliente y stock |
| Inventory Management | Roberto (S2) | Revisar disponibilidad, riesgo FEFO y rotación |
| Confirmación de Despacho & Asignación de Flota | Roberto (S2) | Liberar salida y asignar unidad de transporte |
| FEFO Intelligence & Analytics | Roberto (S2) | Priorizar lotes por vencimiento y riesgo de merma |
| Active Shipments & Routes | Roberto (S2) | Monitorear unidades en tránsito y estado de ruta |
| Cierre de Entrega (POD) & Certificación | Roberto (S2) | Registrar evidencia y cerrar entrega formalmente |
| Inventory Detail | Roberto (S2) | Profundizar en estado de un SKU específico |
| Order Detail & Traceability | Valeria (S1), Roberto (S2) | Reconstruir historial completo de un pedido |

#### Dashboard Operativo Total Control

![Wireframe Dashboard Operativo Total Control](../assets/images/webapp-wireframes/webapp-wireframe-dashboard-operativo-total-control.png)

Este wireframe define la superficie de entrada para usuarios internos que necesitan leer rápidamente el estado del negocio. La composición concentra KPIs, alertas y accesos directos a módulos críticos, evitando que la supervisión tenga que saltar entre pantallas para detectar riesgos. Su función dentro del MVP es convertir una operación fragmentada en una vista centralizada de decisión.

#### B2B Orders Hub

![Wireframe B2B Orders Hub](../assets/images/webapp-wireframes/webapp-wireframe-b2b-orders-hub.png)

La vista de órdenes organiza el flujo comercial en una bandeja operable, con estados visibles, filtros y acceso al detalle de cada pedido. Aquí la prioridad de diseño no es “mostrar una tabla”, sino permitir lectura rápida de cola de trabajo, excepciones y prioridades. Esto responde directamente al problema de desorden entre pedidos informales, confirmaciones tardías y seguimiento manual.

#### Creación de Pedido Asistido

![Wireframe Creación de Pedido Asistido](../assets/images/webapp-wireframes/webapp-wireframe-creacion-pedido-asistido.png)

Este wireframe estructura el momento más sensible del flujo: la captura del pedido por coordinación comercial. El layout reserva zonas claras para identificación del cliente, selección de productos, condiciones comerciales y validaciones visibles, reduciendo el riesgo de doble digitación o ambigüedad. Su aporte es demostrar que la captura puede nacer ordenada desde el origen.

#### Inventory Management

![Wireframe Inventory Management](../assets/images/webapp-wireframes/webapp-wireframe-inventory-management.png)

La gestión de inventario fue diseñada como una vista de control y no solo de registro. El wireframe prioriza disponibilidad, riesgo, clasificación y acceso a detalle, porque el inventario en Nexa debe sostener decisiones comerciales y no limitarse a listar cantidades. Por eso la navegación permite pasar de visión agregada a intervención puntual sin romper el contexto.

#### Confirmación de Despacho & Asignación de Flota

![Wireframe Confirmación de Despacho y Asignación de Flota](../assets/images/webapp-wireframes/webapp-wireframe-confirmacion-despacho-asignacion-flota.png)

Esta pantalla modela la transición entre pedido confirmado y ejecución física. Su estructura visibiliza unidades listas para salir, asignación de transporte y condiciones necesarias para despachar, evitando que ese paso dependa de coordinación verbal dispersa. El wireframe muestra que despacho y planeamiento deben quedar dentro de la misma lógica operativa del sistema.

#### FEFO Intelligence & Analytics

![Wireframe FEFO Intelligence & Analytics](../assets/images/webapp-wireframes/webapp-wireframe-fefo-intelligence-analytics.png)

El módulo FEFO fue planteado como una vista analítica especializada para convertir vencimientos y rotación en decisiones visibles. El wireframe ordena señales de riesgo, lotes prioritarios y lectura de tendencias, reforzando que Nexa no solo administra pedidos, sino que también ayuda a prevenir pérdida de producto. Esta pantalla conecta directamente con la necesidad de reducir merma y sostener trazabilidad de inventario perecedero.

#### Active Shipments & Routes

![Wireframe Active Shipments & Routes](../assets/images/webapp-wireframes/webapp-wireframe-active-shipments-routes.png)

El seguimiento de rutas se diseñó como tablero de operación viva. Aquí la interfaz debe soportar lectura rápida de estado, ETA, incidencias y entregas activas, porque el usuario en esta fase necesita reaccionar y no navegar sin rumbo. La estructura apunta a reducir llamadas y mejorar visibilidad compartida entre operación, coordinación y cliente.

#### Cierre de Entrega (POD) & Certificación

![Wireframe Cierre de Entrega POD y Certificación](../assets/images/webapp-wireframes/webapp-wireframe-cierre-entrega-pod-certificacion.png)

El cierre del pedido no se resolvió como un formulario aislado, sino como una interfaz de certificación de cumplimiento. Este wireframe hace visibles los campos de evidencia, conformidad y validación final, porque el objetivo es reducir reclamos posteriores y sostener un historial trazable. Su diseño responde al problema recurrente de cierres débiles, pruebas dispersas y documentación poco defendible.

#### Inventory Detail

![Wireframe Inventory Detail](../assets/images/webapp-wireframes/webapp-wireframe-inventory-detail-premium-artisan-organic-milk.png)

El detalle de inventario baja al nivel de un SKU concreto para mostrar información que no cabe en la vista agregada: estado térmico, disponibilidad, riesgo y contexto del producto. Esta profundidad es importante porque muchos problemas de cadena de frío no se detectan en una vista general, sino al revisar condiciones específicas de un ítem. Por ello, el wireframe fue planteado como apoyo a decisiones finas y no solo como ficha informativa.

#### Order Detail & Traceability

![Wireframe Order Detail & Traceability](../assets/images/webapp-wireframes/webapp-wireframe-order-detail-traceability.png)

El detalle del pedido organiza la historia completa de una orden en una sola superficie: datos comerciales, estados, eventos logísticos y evidencia asociada. Esta pantalla resulta crítica para reclamos, auditoría interna y seguimiento operativo porque traduce la promesa de trazabilidad en una vista concreta. Su función es evitar que la explicación de “qué pasó con el pedido” vuelva a depender de mensajes sueltos o reconstrucciones manuales.

### 4.4.2. Web Applications Wireflow Diagrams.

Un wireflow conecta pantallas y estados de UI relevantes según un user goal concreto. Se diferencia del diagrama de secuencia porque no describe intercambio técnico de mensajes entre objetos: describe cómo el usuario se mueve entre pantallas y estados de decisión como resultado de su interacción.

#### Wireflow consolidado — tres superficies y personas

El diagrama siguiente muestra la continuidad de pantallas por perfil de usuario desde el login hasta el cierre del ciclo operativo de cada segmento.

```mermaid
flowchart LR
    L["Login screen"] --> Role{"Profile selected"}
    Role -->|"Valeria — S1"| S1D["Commercial dashboard"]
    S1D --> C1["Clients screen"]
    C1 --> C2["Client detail drawer"]
    C2 --> O1["Create assisted order"]
    O1 --> O2["Order detail"]
    O2 --> O3["Orders list"]
    O3 --> R1["Commercial reports"]
    Role -->|"Roberto — S2"| S2D["Logistics dashboard"]
    S2D --> I1["Inventory overview"]
    I1 --> I2["Lot detail drawer"]
    I2 --> D1["Dispatch board"]
    D1 --> D2["POD mock modal"]
    D2 --> R2["Operational reports"]
    Role -->|"Lucía — S3"| P1["Portal home"]
    P1 --> P2["Portal catalog"]
    P2 --> P3["Cart / order submission"]
    P3 --> P4["Portal orders"]
```

Elaboración propia. El wireflow parte de la selección de perfil y ramifica en tres recorridos de pantallas según rol: coordinación comercial (S1), logística interna (S2) y comprador B2B (S3).

#### Tabla de wireflows por user goal

| Wireflow | User goal | Persona | Visual evidence |
|---|---|---|---|
| S1 Commercial Assisted Order | Crear y confirmar un pedido asistido validando cliente y stock | Valeria / Coordinación comercial | Pending: export from [FigJam board](https://www.figma.com/board/LjIjtyfoOpeYa5OCSJUYpD/Nexa-Ops-S1-S2-Userflow-Wireflow?node-id=0-1) |
| S2 Logistics Operations | Revisar inventario FEFO, coordinar despacho y cerrar entrega con evidencia | Roberto / Jefatura logística | Pending: export from [FigJam board](https://www.figma.com/board/LjIjtyfoOpeYa5OCSJUYpD/Nexa-Ops-S1-S2-Userflow-Wireflow?node-id=0-1) |
| S3 B2B Buyer Portal | Explorar catálogo, enviar pedido y consultar estado | Lucía / Comprador B2B | Pending: export from Figma portal prototype |

<!-- TODO: insert FigJam S1 wireflow export as image -->
<!-- TODO: insert FigJam S2 wireflow export as image -->
<!-- TODO: insert Figma S3 portal wireflow export as image -->

### 4.4.3. Web Applications Mock-ups.

Los mock-ups de la web application desarrollan en alta fidelidad la lógica ya probada en wireframes. Su función no es “decorar” el sistema, sino validar que la jerarquía visual, los componentes y la lectura operativa sigan siendo claros cuando se incorporan color, densidad informativa, estados y patrones definitivos de interfaz. En este proyecto, las diez capturas cubren el mismo recorrido funcional del MVP y permiten explicar cómo la solución se presentaría ante usuarios reales. También fueron consolidadas en Figma antes de documentarse en el informe.

#### Dashboard Operativo Total Control

![Mock-up Dashboard Operativo Total Control](../assets/images/webapp-mockups/webapp-dashboard-operativo-total-control.png)

La versión de alta fidelidad del dashboard confirma que la pantalla puede operar como centro de mando del sistema. KPIs, alertas y bloques operativos comparten una composición que privilegia lectura rápida, con énfasis en desviaciones críticas y accesos inmediatos. Visualmente, esta vista sostiene la promesa de centralización que en el proceso actual se pierde entre múltiples herramientas.

#### B2B Orders Hub

![Mock-up B2B Orders Hub](../assets/images/webapp-mockups/webapp-b2b-orders-hub.png)

El mock-up del hub de órdenes transforma la bandeja de pedidos en una vista ejecutiva y accionable. El uso de estados, filtros y tarjetas permite identificar con rapidez qué pedidos requieren seguimiento, corrección o continuidad. Su principal aporte es hacer visible que el pedido deja de ser un mensaje informal y se convierte en un objeto gestionable.

#### Creación de Pedido Asistido

![Mock-up Creación de Pedido Asistido](../assets/images/webapp-mockups/webapp-creacion-pedido-asistido.png)

Esta pantalla demuestra cómo la captura asistida puede combinar contexto de cliente, catálogo y validación sin saturar al usuario. La alta fidelidad deja ver mejor la separación entre datos del cliente, líneas de pedido y retroalimentación del sistema, reduciendo el riesgo de error. El resultado esperado es una experiencia comercial guiada, pero todavía ágil.

#### Inventory Management

![Mock-up Inventory Management](../assets/images/webapp-mockups/webapp-inventory-management.png)

En alta fidelidad, la gestión de inventario se vuelve una vista de control operacional con mayor riqueza de lectura: disponibilidad, clasificación, indicadores y señales de riesgo. Esto es importante porque el inventario en Nexa no es un backoffice aislado, sino una pieza que alimenta la promesa comercial y la trazabilidad del pedido. El mock-up refuerza esa conexión entre stock visible y decisión de negocio.

#### Confirmación de Despacho & Asignación de Flota

![Mock-up Confirmación de Despacho y Asignación de Flota](../assets/images/webapp-mockups/webapp-confirmacion-despacho-asignacion-flota.png)

La pantalla de despacho aterriza el momento donde la orden deja el estado interno y pasa a ejecución física. La composición hace visibles unidades, asignación y condiciones de salida en una misma vista, reduciendo dependencias externas para destrabar la operación. Así, el mock-up traduce una coordinación históricamente manual en una acción estructurada dentro del sistema.

#### FEFO Intelligence & Analytics

![Mock-up FEFO Intelligence & Analytics](../assets/images/webapp-mockups/webapp-fefo-intelligence-analytics.png)

La analítica FEFO muestra cómo Nexa podría convertir vencimientos y rotación en una capa de inteligencia operativa. La alta fidelidad ayuda a leer prioridades, tendencias y alertas sin necesidad de interpretar datos dispersos. Su valor argumental es demostrar que la plataforma no solo registra inventario, sino que ayuda a protegerlo.

#### Active Shipments & Routes

![Mock-up Active Shipments & Routes](../assets/images/webapp-mockups/webapp-active-shipments-routes.png)

El seguimiento en ruta mantiene el mismo principio del wireframe, pero ahora con mayor densidad visual y mejor señalización de estados. Esta vista está orientada a monitoreo vivo, por lo que la jerarquía de colores, incidentes y estados en tránsito cumple una función operativa clara. El mock-up respalda la idea de visibilidad compartida durante despacho.

#### Cierre de Entrega (POD) & Certificación

![Mock-up Cierre de Entrega POD y Certificación](../assets/images/webapp-mockups/webapp-cierre-entrega-pod-certificacion.png)

La captura final del cierre muestra cómo la evidencia de entrega se integra a una interfaz formal y defendible. Firma, conformidad y certificación aparecen como parte del flujo normal y no como anexos improvisados. Esto fortalece la propuesta de Nexa en un punto donde hoy suelen aparecer reclamos, debilidad documental y cierre inconsistente.

#### Inventory Detail Premium Artisan Organic Milk

![Mock-up Inventory Detail Premium Artisan Organic Milk](../assets/images/webapp-mockups/webapp-inventory-detail-premium-artisan-organic-milk.png)

Esta pantalla profundiza en un producto concreto para mostrar que el sistema puede bajar de la visión agregada a la condición específica del SKU. La alta fidelidad expone mejor variables como temperatura, capacidad, riesgo y vencimiento, todas relevantes para cadena de frío. Su inclusión es importante porque demuestra que el diseño no se queda en tableros generales.

#### Order Detail & Traceability

![Mock-up Order Detail & Traceability](../assets/images/webapp-mockups/webapp-order-detail-traceability.png)

El detalle de trazabilidad en alta fidelidad reconstruye el historial del pedido como una narrativa operativa completa. La vista combina eventos, estado, evidencia y contexto de la orden, reforzando la idea de continuidad entre captura, despacho y cierre. En términos de valor, esta pantalla es una de las más importantes para sostener trazabilidad y respuesta ante incidencias.

### 4.4.4. Web Applications User Flow Diagrams.

Un user flow se enfoca en las decisiones y caminos que sigue una persona para completar un user goal. Los diagramas siguientes usan notación `flowchart` e incluyen happy path y rutas alternativas. No se usan diagramas de secuencia: éstos describen intercambio técnico entre objetos, no recorridos de usuario.

#### User Flow S1 — Coordinación comercial: pedido asistido

**User Goal:** Como Valeria, coordinadora comercial (S1), quiero crear y confirmar un pedido asistido validando la condición del cliente y la disponibilidad de producto, de forma que el pedido quede trazable desde el origen.

**Persona:** Valeria / Coordinación comercial. Accede a Dashboard, Clientes, Catálogo, Pedidos y Reportes. La ruta guard bloquea el acceso directo a Inventario y Despacho.

```mermaid
flowchart LR
    A["Start"] --> B["Login — choose Valeria profile"]
    B --> C["S1 Commercial dashboard"]
    C --> D["Open clients screen"]
    D --> E["Review client list"]
    E --> F["Open client detail drawer\n(RUC, contact, condition)"]
    F --> G["Create assisted order"]
    G --> H["Select client"]
    H --> I{"Client condition valid?"}
    I -- "No" --> J["Show restriction or credit warning"]
    J --> H
    I -- "Yes" --> K["Select products from catalog"]
    K --> L{"Quantity available?"}
    L -- "No" --> M["Adjust quantity"]
    M --> K
    L -- "Yes" --> N["Enter delivery information"]
    N --> O["Confirm order"]
    O --> P["Order detail — createdBy Valeria"]
    P --> Q["Orders follow-up"]
    Q --> R["Commercial reports"]
    R --> S["End"]
```

Elaboración propia. El happy path avanza desde la revisión del cliente hasta el cierre trazable. Las ramas alternativas detectan restricción de crédito o falta de stock antes de comprometer el pedido.

#### User Flow S2 — Jefatura logística: inventario, despacho y cierre

**User Goal:** Como Roberto, jefe de logística (S2), quiero revisar el estado del inventario y los indicadores FEFO, coordinar el despacho y cerrar una entrega con evidencia de conformidad, de forma que el ciclo operativo quede registrado.

**Persona:** Roberto / Jefatura logística. Tiene acceso extendido: Dashboard, Inventario, Despacho, Pedidos, Clientes y Reportes.

```mermaid
flowchart LR
    A["Start"] --> B["Login — choose Roberto profile"]
    B --> C["S2 Logistics dashboard"]
    C --> D["Open inventory overview\n(stock and warehouses)"]
    D --> E["Review lot list and FEFO indicators"]
    E --> F["Open lot detail drawer\n(expiry, stock, warehouse)"]
    F --> G{"Risk detected?"}
    G -- "Low stock or expiring lot" --> H["Prioritize operational review"]
    G -- "No critical risk" --> I["Continue monitoring"]
    H --> J["Open dispatch board"]
    I --> J
    J --> K{"Dispatch ready?"}
    K -- "No user action" --> L["Dispatch remains ready or pending"]
    K -- "Yes" --> M["Mark in route"]
    M --> N["Open POD mock confirmation modal"]
    N --> O{"POD checks complete?"}
    O -- "No" --> P["Show pending evidence warning"]
    P --> N
    O -- "Yes" --> Q["Close delivery"]
    Q --> R["Operational reports\n(FEFO, stock, dispatch)"]
    R --> S["End"]
```

Elaboración propia. El happy path recorre inventario → despacho → cierre. La rama de riesgo FEFO activa revisión prioritaria. El POD mock muestra advertencia si la evidencia está incompleta.

#### User Flow S3 — Comprador B2B: portal de compra

**User Goal:** Como Lucía, compradora B2B (S3), quiero explorar el catálogo del portal, enviar mi pedido y consultar su estado sin depender de comunicación informal.

**Persona:** Lucía / Comprador B2B. Accede únicamente al Portal: inicio, catálogo, carrito, órdenes. La ruta guard bloquea el acceso a `/ops/*`.

```mermaid
flowchart LR
    A["Start"] --> B["Login — choose Lucia profile"]
    B --> C["Portal home"]
    C --> D["Open portal catalog"]
    D --> E["Review products"]
    E --> F["Add products to cart"]
    F --> G["Submit portal order"]
    G --> H{"Order confirmed?"}
    H -- "Yes" --> I["Order success screen"]
    H -- "No / blocked" --> J["Show restriction message"]
    J --> F
    I --> K["Track portal orders"]
    K --> L["End"]
```

Elaboración propia. El happy path es lineal: catálogo → carrito → confirmación → seguimiento. La rama alternativa muestra el bloqueo cuando el pedido no puede confirmarse.

#### Tabla de consistencia wireflows y user flows

| User flow | Derivado del wireflow | Happy path | Alternativas | Evidencia visual |
|---|---|---|---|---|
| S1 Pedido asistido | S1 Commercial Assisted Order | Sí | Restricción de crédito, falta de stock | Markdown; export FigJam pendiente |
| S2 Inventario, despacho y cierre | S2 Logistics Operations | Sí | Riesgo FEFO, evidencia POD incompleta | Markdown; export FigJam pendiente |
| S3 Portal de compra | S3 B2B Buyer Portal | Sí | Pedido bloqueado | Markdown; export Figma pendiente |

### 4.4.5. Implemented Screen Evidence.

Esta subsección consolida la evidencia de pantallas implementadas en TB1. Las imágenes corresponden a vistas web responsivas del webapp desplegado en GitHub Pages con datos mock; no son aplicaciones móviles nativas. La evidencia responsive de la landing page permanece en 4.3 — las imágenes en `mobile-browser/` pertenecen al sitio público, no a la webapp.

#### Tabla de cobertura TB1

| Pantalla | Wireframe TB1 | Screenshot TB1 | Persona |
|---|---|---|---|
| Login / perfil | `web-app-wireframes/log-in-wireframe.png` | `web-app-screenshots/log-in.png` | Todos |
| Dashboard operativo | `web-app-wireframes/dashboard-wireframe.png` | `web-app-screenshots/dashboard.png` | S1, S2 |
| Catálogo de operación | `web-app-wireframes/catalog-wireframe.png` | `web-app-screenshots/catalog.png` | S1 |
| Inventario (FEFO + drawer) | `web-app-wireframes/inventory-wireframe.png` | `web-app-screenshots/inventory.png` | S2 |
| Clientes (drawer de ficha) | `web-app-wireframes/clients-wireframe.png` | `web-app-screenshots/clients.png` | S1 |
| Creación de pedido asistido | `web-app-wireframes/new-order-wireframe.png` | `web-app-screenshots/create-order.png` | S1 |
| Bandeja de órdenes | `web-app-wireframes/orders-wireframe.png` | `web-app-screenshots/orders.png` | S1, S2 |
| Despacho y POD mock | `web-app-wireframes/dispatch-wireframe.png` | `web-app-screenshots/dispatch.png` | S2 |
| Reportes operativos | `web-app-wireframes/reports-wireframe.png` | `web-app-screenshots/reports.png` | S1, S2 |
| Perfil y preferencias | `web-app-wireframes/profile-wireframe.png` | `web-app-screenshots/profile.png` | Todos |
| Configuración | `web-app-wireframes/settings-wireframe.png` | `web-app-screenshots/settings.png` | Todos |
| Portal home | — | Pendiente: `web-app-screenshots/portal-home.png` | S3 |
| Portal catálogo | — | Pendiente: `web-app-screenshots/portal-catalog.png` | S3 |
| Portal checkout | — | Pendiente: `web-app-screenshots/portal-checkout.png` | S3 |
| Portal órdenes | — | Pendiente: `web-app-screenshots/portal-orders.png` | S3 |

#### Screenshots representativos por flujo

*Login — selección de perfil de demostración*

![Screenshot TB1 — Login](../assets/images/web-app-screenshots/log-in.png)

Elaboración propia. Punto de entrada con selección de perfil que determina el rol y las rutas disponibles.

*Dashboard operativo — vista S1/S2*

![Screenshot TB1 — Dashboard](../assets/images/web-app-screenshots/dashboard.png)

Elaboración propia. Vista de entrada para usuarios internos con KPIs y accesos directos según rol.

*Clientes con drawer de ficha — S1*

![Screenshot TB1 — Clientes](../assets/images/web-app-screenshots/clients.png)

Elaboración propia. Lista de clientes con drawer lateral que expone RUC, condición comercial y contacto.

*Creación de pedido asistido — S1*

![Screenshot TB1 — Crear Pedido](../assets/images/web-app-screenshots/create-order.png)

Elaboración propia. Captura asistida con selección de cliente, productos y validación de condición.

*Inventario con indicadores FEFO — S2*

![Screenshot TB1 — Inventario](../assets/images/web-app-screenshots/inventory.png)

Elaboración propia. Vista de inventario con información de lote, vencimiento y drawer de detalle.

*Despacho y POD mock — S2*

![Screenshot TB1 — Despacho](../assets/images/web-app-screenshots/dispatch.png)

Elaboración propia. Módulo de despacho con modal de confirmación de evidencia de entrega.

