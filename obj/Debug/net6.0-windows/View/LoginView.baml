   M S B A M L   `   `   `  ����H  DchatAppClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:chatAppClient.ViewchatAppClient.View  5   	   "    chatAppClient.View.LoginView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:chatAppClient.View     5   	     N� Title$  	LoginView��5   	   $	��900��6   $
��1250��6(    N� 
Background
 ���� .��5   
   � .+�5      �� $	��500��6   $��2��5       �� Orientation$ Vertical=�5      $��0,10,0,0q�5      .+�5      �� $��/Assets/messenger.png��6   $	��300��5      $	��300��5      �� 5      $��BUTTER CHICKEN CHAT��6   
�������$��40(�5      $��Medium"�5      $��
Montserrat)�5      $��Center=�5      �� 5      $��username��6   
�������$��30(�5      $��Medium"�5      $��
Montserrat)�5      $��0,50,0,0q�5      �� 5!      -   5         ��Name$ txtBoxUsername��5!      $��25(�5"      $��Medium"�5#      $��
Montserrat)�5$      
������� �� 
CaretBrush
 �����
�������$��0,0,0,1q�5(      $��40��5)      $��Center=�5*      $��0,10,0,0q�5+      $��25,0,0,0q�5,      .��60   ��5.      �� 5/       �� ImageSource$ /Assets/user-icon.png��6%    j� Stretch$
 none=�50   %    j� 
AlignmentX$
 Left=�65   .��51   *   54      �� 56      $��password��6   
�������$��30(�58      $��Medium"�59      $��
Montserrat)�5:      $��0,50,0,0q�5;      G� 5=      -   5         G�Name$ txtBoxPassword��5=   !   $��25(�5>      $��Medium"�5?      $��
Montserrat)�5@      
�������	 G� 
CaretBrush
	 �����
�������$��0,0,0,1q�5D      $��35��5E      $��Center=�5F      $��0,10,0,0q�5G      $��25,0,0,0q�5H      ��5J      �� 5K      $ /Assets/key-icon.png��6%   $
 none=�5L   %   $
 Left=�65   5O      �� 5Q      -   5        
 ��Name$
 btnLogin��5Q      $��0q�5S      $��LOG IN��5T      
�������$��20(�5V      $��
Montserrat)�5W       � Cursor$
 Hand��5X      $��1��5Y      $��0,50,0,0q�5Z      ��5]      �� 5^       �� 
TargetType" ��6    .�5_      ��  �� Property � �� �� Value �#301E676M    �� Triggers 5`      P� 5a   "    P� Property �@J�IsMouseOver P� Value$
 True��6A   . �5b   &   ��  � �� �#F15A596U   5c   #   5e      ��5h      �� 5i       �� 
TargetType" ��6*   .R�5j      �� $	��150��6%   $��40��61    �� CornerRadius$ 20��6=   #��z��6O   ._�5k   "   �� $��Center=�63   $��Center=�6N   5l      5m      5o      �� 5s      -   5        $
 txtNotRegistered��5s      $&�� no yet registered? register now ��5t      
������ 
������ $��0q�5w      $��20(�5x      $��Medium"�5y      $��
Montserrat)�5z      $��0,50,0,0q�5{      ��5~      �� 5      " ��6   .�5�      ��  � ��
 �����6G    5�      P� 5�       �@J�IsMouseOver$
 True��6=   . �5�   "   ��  � �� �#F15A596Q   5�      5�      ��5�      �� 5�      " ��6&   .R�5�      �� $	��400��6!   $��40��6-   $ 20��69   #��z��6K   ._�5�      �� $��Center=�6/   $��Center=�6J   5�      5�      5�      5�      5�      5�      