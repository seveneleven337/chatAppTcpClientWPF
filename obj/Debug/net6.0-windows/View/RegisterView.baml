   M S B A M L   `   `   `  ����H  DchatAppClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:chatAppClient.ViewchatAppClient.View  5      %    chatAppClient.View.RegisterView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:chatAppClient.View     5        N� Title$  RegisterView��5      $	��900��6   $
��1250��6)    N� 
Background
 ���� .��5
      � .+�5   
   �� $	��500��6   $��2��5       �� Orientation$ Vertical=�5      $��	0,100,0,0q�5      .+�5      �� $��Registration��6   
�������$��40(�5      $��Medium"�5      $��
Montserrat)�5      $��Center=�5      �� 5      $��Username��6   
�������$��30(�5      $��Medium"�5      $��
Montserrat)�5      $��0,50,0,0q�5      �� 5      -   5         ��Name$ txtRegistrationUsername��5      $��25(�5      $��Medium"�5      $��
Montserrat)�5       
������� �� 
CaretBrush
 �����
�������$��0,0,0,1q�5$      $��40��5%      $��Center=�5&      $��0,10,0,0q�5'      $��25,0,0,0q�5(      .��60   ��5)      �� 5*       �� ImageSource$ /Assets/user-icon.png��6!    j� Stretch$
 none=�5+   %    j� 
AlignmentX$
 Left=�65   .��5,   &   5-      �� 5/      $��Email��6   
�������$��30(�51      $��Medium"�52      $��
Montserrat)�53      $��0,50,0,0q�54      �� 56      -   5        $ txtRegistrationEmail��56      $��25(�57      $��Medium"�58      $��
Montserrat)�59      
�������
 �����
�������$��0,0,0,1q�5=      $��40��5>      $��Center=�5?      $��0,10,0,0q�5@      $��25,0,0,0q�5A      .��60   ��5B      �� 5C      $ /Assets/user-icon.png��6!   $
 none=�5D   %   $
 Left=�65   .��5E   &   5F      �� 5H      $��Create password��6   
�������$��30(�5J      $��Medium"�5K      $��
Montserrat)�5L      $��0,50,0,0q�5M      G� 5O      -   5         G�Name$ txtRegistrationPassword��5O      $��25(�5P      $��Medium"�5Q      $��
Montserrat)�5R      
�������	 G� 
CaretBrush
	 �����
�������$��0,0,0,1q�5V      $��35��5W      $��Center=�5X      $��0,10,0,0q�5Y      $��25,0,0,0q�5Z      ��5\      �� 5]      $ /Assets/key-icon.png��6!   $
 none=�5^   %   $
 Left=�65   5a      �� 5c      $��Confirm password��6   
�������$��30(�5e      $��Medium"�5f      $��
Montserrat)�5g      $��0,50,0,0q�5h      G� 5j      -   5        $ txtRegistrationPassword2��5j      $��25(�5k      $��Medium"�5l      $��
Montserrat)�5m      
�������
	 �����
�������$��0,0,0,1q�5q      $��35��5r      $��Center=�5s      $��0,10,0,0q�5t      $��25,0,0,0q�5u      ��5w      �� 5x      $ /Assets/key-icon.png��6!   $
 none=�5y   %   $
 Left=�65   5|      �� 5~      -   5        
 ��Name$
 btnRegister��5~      $��0q�5�      $��Register��5�      
�������$��20(�5�      $��
Montserrat)�5�       � Cursor$
 Hand��5�      $��1��5�      $��0,50,0,0q�5�      ��5�      �� 5�       �� 
TargetType" ��6   .�5�      ��  �� Property � �� �� Value �#301E676I    �� Triggers 5�      P� 5�       P� Property �@J�IsMouseOver P� Value$
 True��6=   . �5�   "   ��  � �� �#F15A596Q   5�      5�      ��5�      �� 5�       �� 
TargetType" ��6&   .R�5�      �� $	��150��6!   $��40��6-    �� CornerRadius$ 20��69   #��z��6K   ._�5�      �� $��Center=�6/   $��Center=�6J   5�      5�      5�      5�      5�      5�      