Feature: Solicitar homologacion de materia

Como estudiante
Quiero una homologación de una materia que yo ví
De forma que sea aceptada como alguno de los tipos de materia presentes en mi pensum


Dado: Un estudiante que haya visto una materia que desea homologar
Cuando: El estudiante solicite que desea homologar una materia que haya visto expresando sus razones para que sea aceptada la solicitud
Entonces: El sistema almacenará la solicitud, notificará al coordinador asociado vía correo electrónico y en su bandeja de notificaciones la existencia de la solicitud, y finalmente le avisará al estudiante que la solicitud ha sido radicada exitósamente

Background:
Dado que soy un estudiante de maestria 

Scenario: Realizar Solicitud

Given I go to the homologaciones page
And I fill in "homologacion_razon" with "razon para homologar"
And I select "Materia 1" from "homologacion_materia"
Then I should see "Solicitud enviada exitosamente"
And I follow "Ver Solicitudes Realizadas"
Then I should see "Tesis 1"
And I should see "Pendiente"

