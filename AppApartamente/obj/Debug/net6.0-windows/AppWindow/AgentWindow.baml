   M S B A M L   `   `   `  ����I  EAppApartamente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:AppApartamente.AppWindowAppApartamente.AppWindow  5   	   *    $AppApartamente.AppWindow.AgentWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:AppApartamente.AppWindow     5   	     � Title$  AgentWindow��5   	   $	��450��6   $	��600��6*    � 	Resources 5
       �� 
TargetType �� Property �� Value(  "System.Windows.Controls.DatePicker �� 
TargetType �� CornerRadius��%�  '��       '�� �     '  4    '�� �    �� 5   
   " ��6   .�5      ��  � ��$ 	5 10 5 10q�6'   �� 5       �@��Padding$ 5q�6(   �� 5       � ��$ 18(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$ 	5 10 5 10q�6'   �� 5       � ��$ 5q�6(   �� 5       � ��$ 18(�6)   5      �� 5   
   "  6   .�5      ��  � ��$ 	5 10 5 10q�6'   �� 5       � ��$ 5q�6(   �� 5       � ��$ 18(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$ 55 20 55 10q�6'   �� 5       � ��$ 5q�6(   �� 5        � ��$ 28(�6)   �� 5!       � ��
 ��  �6+   �� 5"       � ��$
 Bold"�6+   �� 5#       � �� 5$      �� 5%      " ��6&   .R�5&      �� $ 10��6!   #��z��63   ._�5'      �� $��Center=�6/   $��Center=�6L   #��z��6g   5(      5)      5+      5,      5-      .��5/      �  � ColumnDefinitions 50   
   �� 51      $
��Auto �6   �� 52      $��* �6    � RowDefinitions 54   
   �� 55      $
��Auto �6   �� 56      $
��Auto �6   �� 57      $
��Auto �6   �� 58      $
��Auto �6   �� 59      $
��Auto �6   �� 5:      $
��Auto �6   �� 5;      $��* �6   .+�5>   
   �� $��0��6   $��2��6"   
����ح�.+�5?      �� $��Introducerea agentilor��6   $��Center=�66   $
��Bold"�6S   $��20(�6e   	 �� Padding$	 10q�6s   $��10q�6�   
����  �6�   5@      �� 5B   
   $��Nume: ��6   $��1��6"   $��0��6/   �� 5C   
   -   5        
 ��Name$
 txtNume��5C      $��1��6#   $��1��60   ��6@   �� *Nume+�� 5E   
   $��	Prenume: ��6   $��2��6%   $��0��62   �� 5F   
   -   5        $
 
txtPrenume��5F      $��2��6&   $��1��63   ��6C   �� *	Prenume+�� 5H   
   $��Varsta: ��6   $��3��6$   $��0��61   �� 5I   
   -   5        $
 	txtVarsta��5I      $��3��6%   $��1��62   ��6B   �� *Varsta+�� 5K   
   $��	Telefon: ��6   $��4��6%   $��0��62   �� 5L   
   -   5        $
 
txtTelefon��5L      $��4��6&   $��1��63   ��6C   �� *	Telefon+�� 5N   
   -   5         ��Name$ btnAddAgent��5N      $��5��6&   $��Adauga agentul��63   $	��360��6f   $��80��6r   $��2��6~   5O      5P      