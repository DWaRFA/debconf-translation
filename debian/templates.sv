Template: debconf/frontend
Type: select
Choices: Dialog, Readline, Gnome, Editor, Noninteractive
Choices-sv: Dialog, Readline, Gnome, Textredigerare, Icke-interaktiv
Default: Dialog
Description: What interface should be used for configuring packages?
 Packages that use debconf for configuration share a common look and feel.
 You can select the type of user interface they use.
 .
 The dialog frontend is a full-screen, character based interface, while the
 readline frontend uses a more traditional plain text interface, and the gnome
 frontend is a modern X interface. The editor frontend lets you configure
 things using your favorite text editor. The noninteractive frontend never
 asks you any questions.
Description-sv: Vilket skal skall anv�ndas f�r att konfigurera paket?
 Paket som anv�nder debconf f�r konfigurering delar ett gemensamt utseende.
 Du kan v�lja vilken sorts anv�ndargr�nssnitt de skall anv�nda.
 .
 Dialogskalet �r ett textbaserat fullsk�rmsgr�nssnitt, medan readline-skalet
 anv�nder ett mer traditionellt ren text-gr�nssnitt, och Gnome-skalet �r ett
 modernt X-gr�nssnitt. Textredigeringsskalet l�ter dig konfigurera saker med
 ditt favorittextredigeringsprogram. Det icke-interaktiva skalet st�ller
 aldrig n�gra fr�gor till dig.

Template: debconf/priority
Type: select
Choices: critical, high, medium, low
Choices-sv: kritisk, h�g, medium, l�g
Default: medium
Description: Ignore questions with a priority less than..
 Packages that use debconf for configuration prioritize the questions they
 might ask you. Only questions with a certain priority or higher are actually
 shown to you; all less important questions are skipped.
 .
 You can select the lowest priority of question you want to see: 
   - 'critical' is for items that will probably break the system
     without user intervention.
   - 'high' is for items that don't have reasonable defaults.
   - 'medium' is for normal items that have reasonable defaults.
   - 'low' is for trivial items that have defaults that will work in the
     vast majority of cases.
 .
 For example, this question is of medium priority, and if your priority were 
 already 'high' or 'critical', you wouldn't see this question.
 .
 If you are new to the Debian GNU/Linux system choose 'critical' now,
 so you only see the most important questions.
Description-sv: Ignorera fr�gor med en prioritet l�gre �n..
 Paket som anv�nder debconf f�r konfigurering prioriterar de fr�gor de kan
 fr�ga dig. Endast fr�gor med en viss prioritet eller h�gre visas faktiskt
 f�r dig; alla mindra viktiga fr�gor hoppas �ver. 
 .
 Du kan v�lja den l�gsta prioritet vars fr�gor du vill se: 
   - "kritisk" �r f�r fr�gor som sannolikt kan ge stora problem f�r
     systemet om anv�ndaren inte intervenerar.
   - "h�g" �r f�r fr�gor som saknar rimliga f�rval.
   - "medium" �r f�r vanliga fr�gor som har rimliga f�rval.
   - "l�g" �r f�r triviala fr�gor som har f�rval som fungerar i de
     allra flesta fall.
 .
 Som ett exempel har denna fr�ga prioriteten "medium", och om din prioritet
 redan vore "h�g" eller "kritisk" skulle du inte se denna fr�ga. 
 .
 Om du �r nyb�rjade p� Debian GNU/Linux-systemet, v�lj "kritisk" nu, s� f�r
 du bara se de viktigaste fr�gorna. 

Template: debconf/showold
Type: boolean
Default: false
Description: Show all old questions again and again?
 Debconf normally only asks you any given question once. Then it remembers
 your answer and never asks you that question again. If you prefer, debconf
 can ask you questions over and over again, each time you upgrade or reinstall
 a package that asks them.
 .
 Note that no matter what you choose here, you can see old questions again by
 using the dpkg-reconfigure program.
Description-sv: Visa alla gamla fr�gor igen och �ter igen?
 Debconf st�ller normalt sett bara varje given fr�ga en g�ng och kommer
 sedan ih�g dina svar s� att fr�gan inte beh�ver st�llas igen. Om du s�
 �nskar kan debconf st�lla fr�gor om och om igen, varje g�ng du
 uppgraderar eller ominstallerar ett paket som st�ller dem. 
 .
 Observera att oavsett vad du v�ljer h�r kan du se gamla fr�gor igen genom att
 anv�nda programmet dpkg-reconfigure. 
