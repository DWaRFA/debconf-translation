Template: debconf/frontend
Type: select
Choices: Slang, Text, Editor, Dialog, Noninteractive
Choices-sv: Slang, Text, Textbehandlare, Dialog, Ickeinteraktiv
Default: Slang
Description: What interface should be used for configuring packages?
 Packages that use debconf for configuration share a common look and feel.
 You can select the type of user interface they use. 
 .
 The slang frontend provides a colorful, full-screen, character based
 windowing interface, while the text frontend uses a more traditional plain
 text interface. The editor frontend lets you configure things using your
 favorite text editor. The noninteractive frontend never asks you any
 questions. The dialog frontend is a primative frontend that is being
 phased out. 
Description-sv: Vilket gr�nssnitt skall anv�ndas f�r att konfigurera paket?
 Paket som anv�nder debconf f�r konfiguration delar ett gemensamt utseende
 och k�nsla. Du kan v�lja vilken sorts anv�ndargr�nssnitt de anv�nder. 
 .
 Slang-skalet ger en f�rgfullt, helsk�rms, teckenbaserat f�nstergr�nssnitt,
 medan textskalet anv�nder ett mer traditionellt gr�nssnitt med ren text.
 Textbehandlarskalet l�ter dig konfigurera saker med din
 favorittextbehandlare. Det ickeinteraktiva skalet fr�gar dig aldrig
 n�gonting. Dialogskalet �r ett primitivt skal som �r p� v�g att fasas
 ut.

Template: debconf/priority
Type: select
Choices: critical, high, medium, low
Choices-sv: kritisk, h�g, medium, l�g
Default: medium
Description: Ignore questions with a priority less than..
 Packages that use debconf for configuration prioritize the questions they
 might ask you. Only questions with a certain priority or higher are
 actually shown to you; all less important questions are skipped. 
 .
 You can select the lowest priority of question you want to see:  
   - `critical' is for items that will probably break the system
     without user intervention.
   - `high' is for items that don't have reasonable defaults.
   - `medium' is for normal items that have reasonable defaults.
   - `low' is for trivial items that have defaults that will work in the
     vast majority of cases.
 .
 For example, this question is of medium priority, and if your priority
 were  already `high' or `critical', you wouldn't see this question. 
 .
 If you are new to the Debian GNU/Linux system choose `critical' now, so
 you only see the most important questions. 
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
 can ask you questions over and over again, each time you upgrade or
 reinstall a package that asks them. 
 .
 Note that no matter what you choose here, you can see old questions again
 by using the dpkg-reconfigure program. 
Description-sv: Visa alla gamla fr�gor igen och igen?
 Debconf fr�gar normalt sett bara varje given fr�ga en g�ng, och kommer
 sedan ih�g dina svar s� att fr�gan inte beh�ver st�llas igen. Om du s�
 �nskar, kan debconf st�lla fr�gor �ter och �ter igen, varje g�ng du
 uppgraderar eller ominstallerar ett paket som st�ller dem. 
 .
 Observera: oavsett vad du v�ljer h�r kan du se gamla fr�gor igen genom att
 anv�nda programmet dpkg-reconfigure. 

Template: debconf/switch-to-slang
Type: boolean
Default: true
Description: Switch to the new, full-featured slang frontend?
 You are currently using debconf's dialog frontend. This frontend has been
 superceded by a new frontend, called the slang frontend, that does
 everything the dialog frontend does and more. It lets you see and answer
 multiple questions at a time, and is generally more flexable and pleasant
 to use. If you'd like, you can switch to that frontend now. 
Description-sv: Byta till det nya, fullt fungerade slangskalet?
 Du anv�nder just nu debconfs dialogskal. Detta skal har ersatts med ett
 nytt skal, kallat slangskalet, som g�r allting dialogskalet g�r, och mer
 d�rtill. Det l�ter dig se och besvara flera fr�gor samtidigt, och �r
 oftast mer flexibelt och trevligt att anv�nda. Om du s� �nskar kan du byta
 till det skalet nu. 

Template: debconf/helpvisible
Type: boolean
Default: true
Description: Should debconf display extended help for questions?
 Debconf can display extended help for questions. Some frontends allow this
 display to be turned off, which may make them run a bit faster, or be less
 cluttered. This is mostly useful for experts. 
Description-sv: Skall debconf visa ut�kad hj�lp f�r fr�gor?
 Debconf kan visa ut�kad hj�lp f�r fr�gor. Vissa skal g�r det m�jligt att
 st�nga av denna visning, vilket kan g�ra att de k�rs snabbare, eller inte
 �r lika "skr�piga". Detta �r huvudsakligen anv�ndbart f�r experter. 
