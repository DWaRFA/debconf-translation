Template: debconf/frontend
Type: select
Choices: Dialog, Readline, Gnome, Editor, Noninteractive
Choices-pl: Dialog, Readline, Gnome, Edytor, Nieinteraktywny
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
Description-pl: Kt�ry interfejs ma by� u�ywany do konfigurowania pakiet�w?
 Konfiguracja pakiet�w u�ywaj�cych do tego celu debconf-a ma sp�jny wygl�d.
 Mo�esz wybra� rodzaj interfejsu u�ytkownika, jaki b�dzie u�ywany.
 .
 Interfejs dialog to pe�noekranowy interfejs tekstowy, natomiast readline
 u�ywa bardziej tradycyjnego, zwyk�ego interfejsu tekstowego. Z kolei gnome
 to nowoczesny interfejs u�ywaj�cy X. Interfejs edytor pozwala konfigurowa�
 system przy pomocy Twojego ulubionego edytora. Interfejs nieinteraktywny
 nigdy nie zadaje �adnych pyta�.

Template: debconf/priority
Type: select
Choices: critical, high, medium, low
Choices-pl: najwy�szy, wysoki, �redni, niski
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
Description-pl: Ignoruj pytania o priorytecie ni�szym ni�..
 Pakiety u�ywaj�ce do konfiguracji systemu debconf nadaj� ka�demu pytaniu,
 na kt�re wymagaj� odpowiedzi, pewien priorytet. W rzeczywisto�ci zobaczysz
 tylko pytania o priorytecie wy�szym lub r�wnym pewnemu ustalonemu;
 wszystkie mniej wa�ne s� pomijane.
 .
 Mo�esz ustali� najni�szy priorytet pyta�, kt�re chcesz widzie�:
   - 'najwy�szy' obejmuje pytania, od odpowiedzi na kt�re zale�y poprawna
     praca systemu.
   - 'wysoki' obejmuje pytania, kt�re nie maj� sensownych warto�ci
     domy�lnych.
   - '�redni' obejmuje zwyk�e pytania, kt�re maj� sensowne warto�ci
     domy�lne.
   - 'niski' obejmuje ma�o istotne rzeczy, kt�rych warto�ci domy�lne b�d�
     dzia�a� w prawie wszystkich przypadkach.
 .
 Na przyk�ad to pytanie ma priorytet �redni, wi�c je�li
 wybra�by�/wybra�aby� wcze�niej priorytet 'wysoki' albo 'najwy�szy', nie
 ukaza�oby si� ono.
 .
 Je�li jeste� pocz�tkuj�cym u�ytkownikiem systemu Debian GNU/Linux wybierz
 poziom 'najwy�szy', aby widzie� tylko najwa�niejsze pytania.

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
Description-pl: Pokazywa� stare pytania za ka�dym razem?
 Debconf zazwyczaj zadaje dane pytanie tylko raz. P�niej pami�ta Twoj�
 odpowied� i nigdy nie zadaje wi�cej tego samego pytania. Je�li jednak
 wolisz, debconf mo�e zadawa� pytania przy ka�dej aktualizacji lub
 reinstalacji danego pakietu.
 .
 Zwr�� uwag�, �e niezale�nie od tego jak teraz odpowiesz, zawsze mo�esz
 zobaczy� stare pytania przy pomocy komendy dpkg-reconfigure.
