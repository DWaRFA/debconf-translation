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
Description-ru: ������ �������� ������ �������?
 Debconf  ������  ������  ����������  ������  ������ ���� ���. ����� ��
 ����������  ����� �� ���� � ������ �� ������ ���� ������. ���� ������,
 ��  debconf ����� �������� ���� � �� �� ������� ��� ������ �����������
 ��� �������������� �������.

Template: debconf/priority
Type: select
Choices: critical, high, medium, low
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
Choices-ru: ���������, �������, �������, ������
Default-ru: �������
Description-ru: ������������ ������� � ����������� ������, ���..
 ������,  �������  ����������  debconf,  ���������� ������� �����������
 ��������,  �������  ��� ��� ������. ��� ����� �������� ������ �������,
 �������  ���������  ������  ���  ����  ����������;  �������  � ������� 
 ����������� ����� ���������.
 .
 �� ������ �������� ����������:
   - '���������' - ��� �� ������, ������� ����� ���������  �������  ���
     ������������� ������������.
   - '�������' - ��� �������, �� ������� �������� �������� �� ���������.
   - '�������' - ������, ������� ����� �������� �������� �� ���������.
   - '������' - ������,  ������� ����� �������� ��������  ��  ���������,
     ��������������� � ����������� ����������� �������.
 .
 ��������, ���� ������ ����� �������  ���������,  �  ����  ��  ��������
 ���������  '�������'  ���  '���������',  ��  ����  ������ �� ������ �� 
 �������.
 .
 ���� �� ������� � Debian GNU/Linux, �� ������ �������� '���������',  �
 ��� ����� �������� ������ �������� ������ �������.

Template: debconf/frontend
Type: select
Choices: Dialog, Readline, Gnome, Editor, Noninteractive
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
Choices-ru: ������, ������ �����, Gnome, ��������, ���������������
Default-ru: ������
Description-ru: ����� ��������� ����� ������������ ��� ��������� �������?
 ������,  �������  ���������� debconf, ��� ��������� ����� ������������
 ������ ���������. �� ������ ������� �������� ����������.
 .
 ����������  ��������  -  �������������,  � �� ����� ��� "������ �����"
 ���������� �����  ������������  ������� ��������� ���������, � Gnome -
 �����������  X ���������.  ��������  �������� ��� �������� ��������� �
 �����   �������   ���������.  ���������������  �����  �������  ���  ��
 ������������� �������� �� �����-���� �������.
