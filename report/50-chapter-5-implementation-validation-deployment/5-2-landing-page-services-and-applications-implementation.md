## 5.2. Landing Page, Services & Applications Implementation

<p align="justify">
La implementación observable de Nexa en el corte AV1 debe leerse junto con la evidencia del tablero Jira. Las siete capturas integradas en esta sección muestran tres niveles complementarios: un <strong>Sprint 0 calendarizado</strong>, un <strong>Sprint 1 preparado y cargado con 54 actividades</strong> y un <strong>backlog remanente de 44 actividades</strong> para las capacidades transaccionales que todavía no forman parte del MVP desplegado. Esta lectura es relevante porque permite distinguir entre lo ya materializado en el sitio público y lo que permanece como compromiso incremental de las siguientes iteraciones.
</p>

### 5.2.1. Sprint 0

<p align="justify">
El Sprint 0 corresponde a la fase de habilitación del proyecto. Su propósito no fue desplegar funcionalidad de negocio final, sino crear el piso de trabajo sobre el cual el equipo podía documentar, versionar y organizar el MVP con disciplina ágil. La captura de Jira evidencia que esta iteración fue calendarizada del <strong>21 de abril al 5 de mayo de 2026</strong> y agrupó <strong>3 actividades</strong> con un total visible de <strong>29 story points</strong>.
</p>

**Sprint Planning 0.**

- **Meta del Sprint (Sprint Goal):** Habilitar el entorno de trabajo colaborativo para Nexa, consolidando el repositorio documental, la estructura Docs-as-Code y la organización inicial del proyecto en Jira y GitHub.
- **Ventana temporal evidenciada:** 21/04/2026 al 05/05/2026.
- **Capacidad cargada:** 29 SP visibles en Jira.

**Sprint Backlog 0.**

| Issue Jira | Actividad visible en Jira | SP | Lectura ingenieril |
|---|---|---:|---|
| NX-56 | Setup Inicial del Entorno Docs-as-Code | 3 | Define la estructura base del informe y su mantenibilidad como repositorio técnico. |
| NX-252 | Creación de reporte | 13 | Formaliza el entregable académico como artefacto evolutivo y no como documento aislado. |
| NX-253 | Creación de repositorio en GitHub | 13 | Garantiza trazabilidad, versionado y trabajo concurrente del equipo. |

**Ilustración 41**

*Sprint 0 calendarizado y cargado en Jira*

![Sprint 0 en Jira](../assets/images/jira/jira-sprint-0-overview.png)

*Nota.* La captura muestra el Sprint 0 con fechas explícitas, tres work items y una carga total de 29 puntos, además del inicio visible del Sprint 1 como siguiente bloque de trabajo. Elaboración propia a partir del tablero Jira del proyecto.

**Development Evidence for Sprint Review.**

<p align="justify">
La salida tangible del Sprint 0 es la infraestructura documental y de gestión que hace posible todo el resto del proyecto: estructura del repositorio académico, separación por capítulos, configuración del backlog y alineamiento del lenguaje de trabajo entre Jira y GitHub. En términos de ingeniería, este sprint establece la gobernanza del producto y reduce el riesgo de desorden documental o pérdida de trazabilidad desde el inicio.
</p>

**Execution Evidence for Sprint Review.**

<p align="justify">
Aunque el tablero no muestra aún entregables funcionales de cara al usuario final, sí evidencia que el equipo organizó el trabajo con unidades estimables, responsables visibles y estados operativos. Esto es importante para AV1 porque la rúbrica no evalúa solo “producto visible”, sino también la capacidad de planificar, secuenciar tareas y sostener un entorno colaborativo.
</p>

**Team Collaboration Insights during Sprint.**

<p align="justify">
El Sprint 0 revela una decisión metodológica correcta: antes de crecer en funcionalidades, el equipo aseguró primero la estructura de trabajo. Esta priorización es consistente con el enfoque ABET 5, ya que muestra liderazgo compartido, delimitación de objetivos y construcción de un entorno común donde la documentación, la arquitectura y la implementación puedan evolucionar sin perder coherencia.
</p>

### 5.2.2. Sprint 1

<p align="justify">
El Sprint 1 concentra el núcleo del esfuerzo AV1. A diferencia del Sprint 0, aquí ya aparece un backlog extenso que articula investigación, diseño, landing page pública, arquitectura, backlog funcional y despliegue del sitio. La evidencia de Jira muestra un bloque de <strong>54 actividades</strong> con <strong>256 puntos visibles</strong>; sin embargo, la misma captura conserva el botón <strong>“Iniciar sprint”</strong>, por lo que el tablero debe interpretarse como evidencia de <strong>planificación detallada y preparación de la iteración</strong>, no como cierre formal completo del sprint.
</p>

**Sprint Planning 1.**

- **Meta del Sprint (Sprint Goal):** Consolidar un incremento AV1 demostrable que una narrativa de negocio, backlog priorizado, evidencia arquitectónica y una landing page pública desplegada.
- **Capacidad cargada en Jira:** 54 actividades y 256 puntos visibles.
- **Lectura del tablero:** mezcla de ítems en `EN CURSO` y `POR HACER`, lo que confirma planificación granular y progreso asíncrono por frentes.

**Sprint Backlog 1 agrupado por frentes de trabajo.**

| Frente | Issues visibles en las capturas | Resultado esperado dentro del sprint |
|---|---|---|
| Fundamento de negocio e investigación | NX-59, NX-61, NX-62, NX-63, NX-67, NX-68, NX-69, NX-71, NX-169 | Dar consistencia a startup profile, segmentos, entrevistas, personas, journey maps, event storming, glosario e inicio del backlog. |
| Diseño visual e información | NX-57, NX-64, NX-70, NX-77 | Traducir hallazgos del dominio a style guidelines, taxonomía, wireframes y accesibilidad. |
| Sitio público y experiencia multipágina | NX-81, NX-84, NX-88, NX-91, NX-97, NX-100, NX-224 a NX-243 | Construir la landing page pública, su narrativa, navegación, internacionalización, CTA, FAQ y rutas por segmento. |
| Arquitectura y base técnica futura | NX-94, NX-106, NX-113, NX-116, NX-122, NX-128, NX-133, NX-138 | Preparar dashboard B2B, modelo C4, DDD, autenticación, servicios de dominio y documentación técnica. |
| Trazabilidad académica y despliegue | NX-142, NX-148, NX-153, NX-158, NX-161, NX-164, NX-167 | Alinear user stories, criterios de priorización, Student Outcome, estadísticas, despliegue del sitio y compilación del informe. |

<p align="justify">
Este agrupamiento hace visible una decisión de ingeniería correcta: el Sprint 1 no persigue solo “maquetar una landing”, sino sostener el incremento AV1 con evidencia narrativa, visual, arquitectónica y de colaboración. La landing page es el resultado visible; el backlog y la arquitectura son la base que permite que la solución evolucione hacia una web application y servicios REST reales.
</p>

**Ilustración 42**

*Sprint 1 — bloque A de trabajo planificado en Jira*

![Sprint 1 bloque A](../assets/images/jira/jira-sprint-1-block-a.png)

*Nota.* El primer bloque del Sprint 1 muestra tareas de lineamientos visuales, arquitectura de información, wireframes, accesibilidad, scaffolding del sitio y componentes iniciales de frontend y backend. Elaboración propia.

**Ilustración 43**

*Sprint 1 — bloque B de trabajo planificado en Jira*

![Sprint 1 bloque B](../assets/images/jira/jira-sprint-1-block-b.png)

*Nota.* El segundo bloque evidencia la continuidad entre la especificación de user stories, la priorización del MVP, la trazabilidad landing-backlog, Student Outcome, despliegue del website y el cierre documental de la entrega. También se observan historias de navegación pública incluidas dentro del sprint. Elaboración propia.

**Ilustración 44**

*Sprint 1 — bloque C de historias públicas dentro del sprint*

![Sprint 1 bloque C](../assets/images/jira/jira-sprint-1-block-c.png)

*Nota.* Este bloque agrupa historias del sitio público para Home, Platform, Solutions, Company y FAQ, todas ya asignadas al Sprint 1. La presencia de estas historias confirma que la experiencia multipágina pública forma parte directa del incremento AV1. Elaboración propia.

**Development Evidence for Sprint Review.**

<p align="justify">
La evidencia de desarrollo del Sprint 1 ya es visible en el entorno operativo: existe una landing page pública desplegada en GitHub Pages, con navegación por secciones, selector de idioma EN/ES, CTA de demostración, FAQ y páginas orientadas a tres perfiles operativos. Esta salida funcional no aparece aislada; está respaldada por tareas de arquitectura, backlog, diseño, accesibilidad y documentación técnica cargadas en el mismo sprint.
</p>

**Execution Evidence for Sprint Review.**

<p align="justify">
Las capturas no solo muestran títulos de tareas, sino una taxonomía coherente entre épicas, historias y actividades técnicas. El sprint integra desde historias narrativas del sitio público hasta trabajo de DDD, JWT, EF Core, C4 y Swagger. Eso demuestra que el equipo no trató AV1 como un landing page “decorativo”, sino como la primera capa visible de una solución B2B mayor ya modelada para escalar.
</p>

**Services Documentation Evidence for Sprint Review.**

<p align="justify">
El backlog del sprint incluye explícitamente `NX-138 Global Exception Handler y Swagger Documentación`, pero el repositorio inspeccionado no contiene todavía evidencia de endpoints productivos desplegados ni un contrato OpenAPI publicado. Por tanto, la documentación de servicios debe entenderse en AV1 como <strong>capacidad planificada y parcialmente preparada</strong>, aún no como artefacto final en operación.
</p>

**Software Deployment Evidence for Sprint Review.**

<p align="justify">
La evidencia de despliegue verificable de esta iteración es la landing page pública disponible en [GitHub Pages](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/). A nivel de planeamiento ágil, la relación entre despliegue y backlog es clara: el sitio público ya está activo para exposición y validación comercial, mientras que el portal B2B, los módulos de pedidos, inventario, catálogo y autenticación permanecen como backlog comprometido para iteraciones posteriores.
</p>

**Backlog posterior al corte AV1.**

<p align="justify">
Las últimas tres capturas separan con claridad lo que quedó fuera del incremento actual. El encabezado del backlog muestra <strong>44 actividades</strong> remanentes, distribuidas en historias funcionales transaccionales que todavía no forman parte del despliegue AV1.
</p>

| Bloque funcional remanente | Issues visibles en backlog | Lectura del alcance pendiente |
|---|---|---|
| Pedido asistido comercial | NX-188 a NX-192 | Captura guiada del pedido y validaciones previas antes del envío. |
| Portal B2B de autoservicio | NX-193 a NX-197 | Pedido directo del cliente, borradores, repetición y consulta de historial. |
| Seguimiento y cierre de entrega | NX-198 a NX-202 | ETA, incidencias, secuencia de estados y POD. |
| Inventario y vencimientos | NX-203 a NX-207 | Visibilidad de stock, lotes, FEFO y reserva/liberación. |
| Condiciones comerciales | NX-208 a NX-212 | Crédito, morosidad y reglas de bloqueo por cliente. |
| Identidad y acceso | NX-213 a NX-216 | Login, recuperación de cuenta y administración de usuarios. |
| Historias técnicas API | NX-217 a NX-223 | Exposición de endpoints REST para catálogo, cliente, pedido, tracking y autenticación. |
| Evolución de FAQ y catálogo | NX-244 a NX-251 | Soporte contextual, login desde sitio público y capacidades del catálogo transaccional. |

**Ilustración 45**

*Backlog remanente — bloque A en Jira*

![Backlog bloque A](../assets/images/jira/jira-backlog-block-a.png)

*Nota.* El primer bloque del backlog posterior a AV1 agrupa pedido asistido, portal B2B y trazabilidad de entrega. Elaboración propia.

**Ilustración 46**

*Backlog remanente — bloque B en Jira*

![Backlog bloque B](../assets/images/jira/jira-backlog-block-b.png)

*Nota.* El segundo bloque remanente concentra inventario, vencimientos, condiciones comerciales e identidad y acceso. Elaboración propia.

**Ilustración 47**

*Backlog remanente — bloque C en Jira*

![Backlog bloque C](../assets/images/jira/jira-backlog-block-c.png)

*Nota.* El último bloque del backlog deja visibles las historias técnicas del API y la evolución del catálogo y soporte público. Elaboración propia.

**Team Collaboration Insights during Sprint.**

<p align="justify">
El Sprint 1 evidencia un reparto de trabajo por capas: investigación y dominio, UX/UI, implementación pública, arquitectura y documentación. Ese patrón reduce bloqueos y explica por qué el equipo sí logró materializar una salida pública operativa mientras mantenía la profundidad del backlog y de la arquitectura. También deja una conclusión importante para AV1: el trabajo colaborativo no se limita al código desplegado, sino que incluye la disciplina de priorizar, posponer y dejar visibles las capacidades aún pendientes en lugar de ocultarlas.
</p>
