   M S B A M L   `   `   `  ����H  DchatAppClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:chatAppClientchatAppClient  5   	       chatAppClient.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:chatAppClient     5   	   -   5          � Title$  	LoginView��5   	   $	��900��6   $
��1250��6(    � WindowStyle$
 None=�65    � 
ResizeMode$ NoResize=�6H    � WindowStartupLocation$ CenterScreen=�6^   
������  � AllowsTransparency$
 True��5	   ?   .��5
      ��  �� CornerRadius$ 50��6   $��5q�5       J� Opacity$
 0.95Q�5      ��5   
   �� 5       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5      � 	 � Color$	 #301E67��6   
 � Offset$
 0Q�6/   � 5      $	 #ED2B2A��6   $	
 0.5Q�6/   � 5      $	 #F15A59��6   $
 1Q�6/   5      ��5   
   �� 5      $	 0,2&�6"   $	 1,0&�63   .��5      � $	 #301E67��6   $

 0.45Q�6/   � 5      $	 #ED2B2A��6   $
 1Q�6/   5      ._�5   
   �  � RowDefinitions 5      �� 5      $��30 �6    �� 5      .+�5"      �  � ColumnDefinitions 5#      �� 5$      �� 5%      $��30 �6'   �� 5&      $��30 �6'   �� 5'      $��45 �6'   .+�5*      �� $%��Butter Chicken Chat Application��6   
�������$��20(�5,      $��
Montserrat)�5-      $��0��5.      $��Center=�5/      $��40,0,0,0q�50      �� 53      -   5         ��Name$ btnMinimize��53      $��0q�55      $��-��56      
�������$��20(�58      $��
Montserrat)�59       � Cursor$
 Hand��5:      $��1��5;      ��5>      �� 5?       �� 
TargetType" ��6    .�5@      ��  �� Property � �� �� Value �#301E676M    �� Triggers 5A      P� 5B   "    P� Property �@J�IsMouseOver P� Value$
 True��6A   . �5C   &   ��  � �� �#F15A596U   5D   #   5F      ��5I      �� 5J       �� 
TargetType" ��6*   .R�5K      �� $��26��6%   $��26��60   $ 13��6<   #��z��6N   ._�5L   "   �� $��Center=�63   $��Center=�6N   5M      5N      5P      �� 5R      -   5        $ btnClose��5R      $��0q�5S      $��X��5T      
�������$��20(�5V      $��
Montserrat)�5W      $
 Hand��5X      $��2��5Y      ��5[      �� 5\      " ��6    .�5]      ��  � �� �#301E676M    5^      P� 5_   "    �@J�IsMouseOver$
 True��6A   . �5`   &   ��  � �� �#F15A596U   5a   #   5c      ��5f      �� 5g      " ��6*   .R�5h      �� $��26��6%   $��26��60   $ 13��6<   #��z��6N   ._�5i   "   �� $��Center=�63   $��Center=�6N   5j      5k      5m      5n      �� 5p      $��2��5q       �� Orientation$ Vertical=�5r      $��0,10,0,0q�5s      .+�5t       � -   5          �Name$ frame��5t      $��Center=�6'   $
��1250��6D     � NavigationUIVisibility$ Hidden=�6Q   5u      5x      5z      5{      