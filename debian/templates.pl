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
