Template: debconf/showold
Type: boolean
Default: false
Description: Show all old questions again and again?
 Debconf normally only asks you any given question once. Then it remembers
 your answer and never asks you that question again. If you prefer, debconf
 can ask you questions over and over again, each time you upgrade or
 reinstall a package that asks them.
 .
 Note that no matter what you choose here, you can see old questions again
 by using the dpkg-reconfigure program.
Description-es: �Mostrar las preguntas antiguas una y otra vez?
 Normalmente debconf hace una determinada pregunta una sola vez. A partir
 de ah� recuerda su respuesta y no vuelve a repetir la pregunta m�s. Si
 usted prefiere, debconf puede repetir las preguntas una y otra vez cada
 vez que actualice o reinstale un paquete que las haga.
 .
 Observe que independiente de lo que escoja aqu�, puede ver las preguntas
 antiguas de nuevo usando dpkg-reconfigure.

Template: debconf/priority
Type: select
Choices: critical, high, medium, low
Choices-es: cr�tica, alta, media, baja
Default: medium
Description: Ignore questions with a priority less than..
 Packages that use debconf for configuration prioritize the questions they
 might ask you. Only questions with a certain priority or higher are
 actually shown to you; all less important questions are skipped.
 .
 You can select the lowest priority of question you want to see:
   - 'critical' is for items that will probably break the system
     without user intervention.
   - 'high' is for items that don't have reasonable defaults.
   - 'medium' is for normal items that have reasonable defaults.
   - 'low' is for trivial items that have defaults that will work in the
     vast majority of cases.
 .
 For example, this question is of medium priority, and if your priority
 were already 'high' or 'critical', you wouldn't see this question.
 .
 If you are new to the Debian GNU/Linux system choose 'critical' now, so
 you only see the most important questions.
Description-es: No mostrar preguntas con una prioridad menor que...
 Los paquetes que usan debconf para la configuraci�n le asignan una
 prioridad a las preguntas que hacen. S�lo se mostrar�n las preguntas con
 una cierta prioridad o superior; no se mostrar�n las preguntas menos
 importantes.
 .
 Puede escoger la prioridad m�s baja para las preguntas que desea ver:
   - 'cr�tica' es para asuntos que probablemente romper�n el sistema si
     el usuario no interviene. 
   - 'alta' es para asuntos para los que no hay valores predeterminados
     razonables. 
   - 'media' es para asuntos normales, que tienen valores predeterminados
     razonables.
   - 'baja' es para asuntos triviales, que tienen valores predeterminados
     que funcionar�n en la inmensa mayor�a de casos.
 .
 Por ejemplo, esta pregunta es de prioridad media, y si el valor escogido
 para la prioridad fuese 'alta' o 'cr�tica', no hubiese visto esta
 pregunta.
 .
 Si es un principiante en el sistema Debian GNU/Linux, escoja 'cr�tica' por
 ahora, para ver �nicamente las preguntas m�s importantes.

Template: debconf/frontend
Type: select
Choices: Dialog, Readline, Gnome, Editor, Noninteractive
Choices-es: Dialog, Readline, Gnome, Editor, No interactivo
Default: Dialog
Description: What interface should be used for configuring packages?
 Packages that use debconf for configuration share a common look and feel.
 You can select the type of user interface they use.
 .
 The dialog frontend is a full-screen, character based interface, while the
 readline frontend uses a more traditional plain text interface, and the
 gnome frontend is a modern X interface. The editor frontend lets you
 configure things using your favorite text editor. The noninteractive
 frontend never asks you any questions.
Description-es: �Qu� interfaz quiere usar para configurar paquetes?
 Los paquetes que usan debconf para configurarse comparten un aspecto
 com�n. Puede elegir el tipo de interfaz de usuario que quiere que usen.
 .
 Dialog es un interfaz de texto a pantalla completa, mientras que el de
 readline es m�s tradicional, de s�lo texto, y gnome es un moderno interfaz
 para X. Editor le permite configurar el sistema usando su editor favorito.
 El interfaz no interactivo no hace ninguna pregunta.
