Template: debconf/frontend
Type: select
Choices: Slang, Text, Editor, Dialog, Noninteractive, Web
Choices-pl: Slang, Tekst, Edytor, Dialog, Automat, WWW
Default: Slang
Description: What interface should be used for configuring packages?
 Packages that use debconf for configuration share a common look and feel.
 You can select the type of user interface they use.
 .
 The slang frontend provides a colorful, full-screen, character based
 windowing interface, while the text frontend uses a more traditional plain
 text interface. The editor frontend lets you configure things using your
 favorite text editor. The noninteractive frontend never asks you any
 questions notes. The web frontend can be accessed using your favorite browser.
Description-pl: Jakiego interfejsu chcesz u�ywa�, aby konfigurowa� pakiety?
 Konfiguracja pakiet�w u�ywaj�cych do tego celu debconfa wygl�da podobnie.
 Mo�esz wybra� wsp�lny interfejs, kt�rego b�d� u�ywa�.
 .
 Nak�adka `slang' to kolorowy, tekstowy, pe�noekranowy interfejs; `tekst' --
 bardziej tradycyjny, prosty, tekstowy. Nak�adka `edytor' pozwala na
 konfiguracj� przy pomocy Twojego ulubionego edytora tekstowego. Nak�adka
 `automat' nigdy nie zadaje �adnych pyta�. Nak�adka `www' pozwala na
 konfiguracj� za pomoc� przegl�darki stron www.

Template: debconf/priority
Type: select
Choices: critical, high, medium, low
Choices-pl: najwy�szy, wysoki, �redni, niski
Default: medium
Description: Ignore questions with a priority less than..
 Packages that use debconf for configuration prioritize the questions they
 might ask you. Only questions with a certain priority or higher are actually
 shown to you; all less important questions are skipped and the defaults are
 used for them.
 .
 You can select the lowest priority of question you want to see: `low' is for
 trivial items that have defaults that will work in the vast majority of
 cases. `medium' is for normal items that have reasonable defaults.  `high'
 is for items that don't have reasonable defaults. `critical' is for items
 that will probably break the system without user intervention. For example,
 this question is of medium priority, and if your priority were already
 `high' or `critical', you wouldn't see this question.
 .
 If you are new to the Debian GNU/Linux system choose `critical' now,
 so you only see the most important questions.
Description-pl: Nie zadawaj pyta� o priorytecie ni�szym ni�..
 Pakiety u�ywaj�ce do konfiguracji debconfa mog� wybra� priorytet dla
 ka�dego pytania. Zadawane s� tylko pytania o priorytecie r�wnym, lub
 wy�szym od pewnego wybranego. Wszystkie mniej wa�ne pytania s� pomijane i
 za odpowiedzi przyjmowane s� warto�ci domy�lne.
 .
 Mo�esz wybra� najni�szy priorytet pyta�, kt�re chcesz zobaczy�. `niski' to
 ma�o istotne pytania, dla kt�rych odpowiedzi domy�lne b�d� dzia�a�y w
 wi�kszo�ci przypadk�w. `�redni' to zwyk�e pytania, kt�re posiadaj� dobre
 odpowiedzi domy�lne. `wysoki' odpowiada pytaniom, kt�re nie posiadaj�
 dobrych odpowiedzi domy�lnych. `najwy�szy' odpowiada pytaniom, na kt�re
 musisz udzieli� odpowiedzi, poniewa� w przeciwnym wypadku system mo�e
 przesta� dzia�a� poprawnie. Na przyk�ad to pytanie posiada priorytet
 `�redni' i nie zosta�oby zadane, gdyby progowy priorytet by� ustalony na
 `najwy�szy' lub `wysoki'.
 .
 Je�li jeste� nowym u�ytkownikiem systemu Debian, wybierz priorytet
 `najwy�szy', aby widzie� tylko najwa�niejsze pytania.

Template: debconf/preconfig
Type: boolean
Default: true
Description: Pre-configure packages before they are installed?
 Debconf can be used to configure packages before they are installed by apt.
 This lets you answer most questions a package would ask at the beginning of
 the install, so you do not need to be around to answer questions during the
 rest of the install.
Description-pl: Czy konfigurowa� pakiety przed ich instalacj�?
 Dzi�ki debconfowi mo�na konfigurowa� pakiety zanim zostan� zainstalowane
 przez apt-a. Dzi�ki temu wi�kszo�� pyta� zostanie zadanych na pocz�tku
 instalacji, dzi�ki czemu Twoja obecno�� nie b�dzie konieczna w czasie ca�ego
 procesu.

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
Description-pl: Czy zawsze zadawa� stare pytania?
 Normalnie debconf zadaje dane pytanie tylko raz. Zapami�tuje odpowied� i
 nigdy wi�cej nie zadaje tego samego pytania. Je�li chcesz, debconf mo�e
 zadawa� pytania za przy ka�dym uaktualnieniu lub reinstalacji danego
 pakietu.
 .
 Zwr�� uwag�, �e bez wzgl�du na odpowied� na to pytanie mo�esz zobaczy�
 dowolne pytanie jeszcze raz u�ywaj�c programu dpkg-reconfigure.

Template: debconf/switch-to-slang
Type: boolean
Default: true
Description: Switch to the new, full-freatured slang frontend?
 You are currently using debconf's dialog frontend. This frontend has been
 superceded by a new frontend, called the slang frontend, that does
 everything the dialog frontend does and more. It lets you see and answer
 multiple questions at a time, and is generally more flexable and pleasant
 to use. If you'd like, you can switch to that frontend now.
Description-pl: Czy prze��czy� si� na now� nak�adk� slang?
 U�ywasz obecnie nak�adki `dialog' dla debconfa. Zosta�a ona zast�piona
 now�, lepsz� nak�adk� `slang'. Potrafi ona robi� to wszystko, co `dialog', a
 nawet wi�cej. Pozwala widzie� i odpowiada� na kilka pyta� na raz, i jest
 og�lnie wygodniejsza i bardziej elastyczna w u�yciu. Je�li chcesz, mo�esz
 teraz prze��czy� si� na t� nak�adk�.

Template: debconf/helpvisible
Type: boolean
Default: true
Description: Should debconf display extended help for questions?
 Debconf can display extended help for questions. Some frontends allow this
 display to be turned off, which may make them run a bit faster, or be less
 cluttered. This is mostly useful for experts.
Description-pl: Czy debconf powinien wy�wietla� rozszerzon� pomoc do pyta�?
 Debconf mo�e wy�wietla� rozszerzon� pomoc do pyta�. Niekt�re nak�adki
 pozwalaj� wy��czy� t� opcj�, dzi�ki czemu b�d� dzia�a� nieco szybciej lub
 b�d� bardziej uporz�dkowane. Wy��czy� t� opcj� mog� chcie� g��wnie
 eksperci.
