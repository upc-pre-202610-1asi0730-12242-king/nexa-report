## 5.3. Validation Interviews.

<p align="justify">
La validación en AV1 se enfoca en los artefactos que sí alcanzaron un estado demostrable en este corte: la landing page pública desplegada, la arquitectura de navegación del sitio, el selector bilingüe, los CTA de contacto y el prototipo de alta fidelidad del producto. Dado que el portal transaccional, el API REST y los módulos de pedido, catálogo e inventario permanecen en backlog, la validación de esta entrega no debe confundirse con una prueba end-to-end del sistema final; su alcance real es <strong>comprensión de propuesta de valor, claridad de navegación, coherencia entre hallazgos de investigación y solución visible, y preparación de la siguiente ronda de construcción</strong>.
</p>

### 5.3.1. Diseño de Entrevistas.

<p align="justify">
El diseño de entrevistas de validación para AV1 reutiliza el conocimiento del capítulo 2 y lo traduce en tareas concretas sobre los artefactos ya implementados. La lógica es simple: si el problema original del dominio era la fragmentación entre pedidos, stock, temperatura y entrega, entonces la landing y el prototipo debían poder comunicar con claridad ese valor antes de que existiera aún toda la capa transaccional.
</p>

| Componente a validar | Tipo de participante | Tarea propuesta | Criterio de éxito |
|---|---|---|---|
| Home y propuesta de valor | Coordinación comercial (S1) y cliente B2B (S2) | Identificar en menos de un minuto qué problema resuelve Nexa y para quién | El participante reconoce pedido, inventario, temperatura y entrega como núcleo de valor |
| Navegación multipágina | S1, S2 y stakeholder secundario operativo | Recorrer `Home`, `Platform`, `Solutions`, `Company` y `FAQ` sin asistencia | El usuario encuentra la ruta adecuada según su perfil y entiende el rol de cada sección |
| Selector EN/ES | Participantes bilingües o con preferencia de idioma | Cambiar idioma sin perder contexto de página | El sitio conserva navegación, contenido y CTA sin desorientar al usuario |
| CTA de demostración / contacto | Segmentos comerciales y operativos | Iniciar el flujo de contacto desde Home o Footer | El usuario entiende qué ocurrirá después de enviar la solicitud |
| Prototipo de plataforma | Stakeholder secundario y perfiles de coordinación | Relacionar mockups/prototipo con problemas reales del proceso | El participante percibe continuidad entre hallazgos del dominio y solución propuesta |

<p align="justify">
Bajo esta estructura, la validación de AV1 no busca medir rendimiento de un ERP terminado, sino reducir el riesgo de incoherencia entre problema narrado, promesa del producto y primera experiencia pública visible.
</p>

### 5.3.2. Registro de Entrevistas

<p align="justify">
El repositorio preserva evidencia de ocho entrevistas de dominio realizadas durante la etapa de levantamiento y análisis. Estas entrevistas no deben presentarse como una nueva ronda audiovisual completa de “validación final del producto”; sin embargo, sí constituyen la base metodológica verificable para seleccionar perfiles de validación y para comprobar si la propuesta implementada responde a dolores reales observados en el campo.
</p>

| Participante con evidencia en repositorio | Perfil analizado | Evidencia preservada | Problema dominante que debe validar AV1 |
|---|---|---|---|
| Lorena Silva | Coordinación comercial (S1) | `Lorena.jpeg` | Dependencia de WhatsApp, lentitud del sistema actual y baja confiabilidad del stock |
| Cinthia Levano | Coordinación comercial (S1) | `Paola.jpeg` | Fragmentación entre Trello, WhatsApp y Excel; exceso de pasos para registrar pedidos |
| Celia Pérez | Coordinación comercial (S1) | `Celia.jpeg` | Necesidad de coordinación más simple y visibilidad comercial |
| Hilda Litano | Stakeholder secundario operativo | `Hilda.jpeg` | Restricciones logísticas, trazabilidad y consistencia operativa |
| Edith Taype | Stakeholder secundario operativo | `Edith.jpeg` | Control de flujo y dependencia de validaciones manuales |
| Jesica Sandoval | Stakeholder secundario operativo | `Jesica.jpeg` | FEFO, control de vencimientos y riesgo de transcripción |
| Pedro Puente | Segmento asociado al cierre operativo / entrega | `Pedro.jpeg` | Visibilidad de la entrega y prueba de cierre |
| Henry García | Perfil de operación complementario | `Henry.jpeg` | Coordinación operativa y trazabilidad del proceso |

<p align="justify">
Por ello, el registro de entrevistas utilizable en AV1 consiste en un <strong>registro base de validadores</strong> con evidencia real ya archivada. Lo que todavía no aparece en el repositorio es una segunda ronda formalmente etiquetada como entrevista de validación del producto implementado, con video o bitácora específica de hallazgos sobre la landing o el prototipo.
</p>

### 5.3.3. Evaluaciones según heurísticas.

<p align="justify">
Como complemento a las entrevistas, el artefacto público ya implementado puede ser evaluado con heurísticas de usabilidad y consistencia. Esta revisión es especialmente pertinente en AV1 porque el producto visible aún es una landing page informativa y no un portal transaccional completo; por tanto, la primera obligación del sistema es <strong>explicar bien</strong> antes de <strong>operar todo</strong>.
</p>

| Heurística | Evidencia observable en AV1 | Resultado |
|---|---|---|
| Visibilidad del estado del sistema | El sitio hace visible el cambio EN/ES y expone honestamente que el chat en vivo “estará disponible pronto”, evitando promesas falsas de soporte instantáneo | Cumple parcialmente |
| Correspondencia entre sistema y mundo real | El copy utiliza lenguaje del dominio: pedidos, stock, temperatura, FEFO, POD, entrega y operación refrigerada | Cumple |
| Control y libertad del usuario | La navegación permite entrar y salir de páginas públicas, revisar FAQ y volver a CTA principales sin quedar atrapado | Cumple |
| Consistencia y estándares | La estructura multipágina, los CTA repetidos y la terminología de segmentos se mantienen de forma estable a lo largo del sitio | Cumple |
| Reconocimiento antes que memoria | Las rutas `Platform`, `Solutions`, `Company` y `FAQ` reducen carga cognitiva y orientan al usuario por intención | Cumple |
| Estética y minimalismo | El sitio evita densidad excesiva y concentra la narrativa en cuatro capacidades: inventario, pedidos, temperatura y entrega | Cumple |
| Ayuda y soporte contextual | Existe FAQ y formulario de contacto, pero todavía no hay soporte conversacional activo ni flujo autenticado de autoservicio | Cumple parcialmente |

<p align="justify">
La conclusión heurística es clara: la landing page ya cumple bien como herramienta de <strong>explicación y captación</strong>, pero todavía no sustituye la validación funcional que deberá realizarse cuando entren en operación el portal B2B, la autenticación, el catálogo y el seguimiento transaccional. Esta frontera coincide con el backlog remanente visible en Jira y orienta la mejora continua del producto.
</p>
